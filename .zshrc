# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kolo"

# zsh-nvm with lazy loading
# https://blog.mattclemente.com/2020/06/26/oh-my-zsh-slow-to-load/#lazy-loading
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# Plugins
plugins=(
    fzf
    fzf-tab # Must be loaded before zsh-autosuggestions
    git
    npm
    starship
    tmux
    yarn
    z
    zsh-autosuggestions
    zsh-nvm
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor
export EDITOR="nvim"

# FZF configuration

# https://betterprogramming.pub/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d
export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

# https://github.com/rose-pine/rose-pine-theme
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
--color=fg:#908caa,bg:#191724,hl:#ebbcba
--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
--color=border:#403d52,header:#31748f,gutter:#191724
--color=spinner:#f6c177,info:#9ccfd8,separator:#403d52
--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

# Bat configuration
export BAT_THEME="base16"

# Aliases
alias cl="clear"

# zsh
alias zc="nvim $HOME/.zshrc"
alias ou="omz update"
alias or="omz reload"

# tmux
alias tc="nvim $HOME/.tmux.conf"

# neovim
alias v="nvim"
alias nv="nvim"
alias vim="nvim"
alias nvc="nvim $HOME/.config/nvim/init.lua"

# wezterm
alias wc="nvim $HOME/.config/wezterm/wezterm.lua"

# yabai & skhd & sketchybar
alias ybc="nvim $HOME/.config/yabai/yabairc"
alias ybr="yabai --restart-service"

alias skc="nvim $HOME/.config/skhd/skhdrc"
alias skr="skhd --restart-service"

alias sbc="nvim $HOME/.config/sketchybar/sketchybarrc"
alias sbr="sketchybar --reload"

# fzf
alias fb="scripts/fzf-git-branch"
alias fc="scripts/fzf-git-checkout"

# bat
alias cat="bat"
alias batd="bat -d"
alias bd="bat-diff"

# exa
alias lt="exa -T -a"
alias ltl="exa -T -a --long"

# SSH
alias sc="nvim $HOME/.ssh/config"

alias pi="ssh pi"
alias p="pi"

alias pizero="ssh pizero"
alias pi-zero="pizero"
alias pz="pizero"

alias home-server="ssh home-server"
alias homeserver="home-server"
alias hs="home-server"

# Bob config
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
