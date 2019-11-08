export SVN_EDITOR=vi
export EDITOR=vi

export PROJECT_ROOT_DIR=/projects

alias ss="open -a ScreenSaverEngine"
alias docker-rm-containers="docker rm \$(docker ps -a -q)"
alias docker-rm-images="docker rmi \$(docker images -q)"
alias docker-rm-volumes="docker volume rm \$(docker volume ls -qf dangling=true)"
alias docker-cleanup="docker system prune -a"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

source /projects/tpham-local/utils/git-completion.sh

PS1="\[\033[0;91m\]\w\[\033[0m\]\[\033[0;32m\]\$(parse_git_branch)\[\033[0m\]\[\033[0;91m\]$\[\033[0m\] "

alias grep='grep --color'
