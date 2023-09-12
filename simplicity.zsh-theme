# ---------------- ZSH THEME ---------------
# Name      : simplicity
# Version   : v0.1.0
# Author    : wahyurudiyansaputra@gmail.com
# Github    : github.com/wahyurudiyan
# Require   :
#   - Fira Mono NF
# ==========================================
# ------------------ CODE ------------------
# ==========================================
# Define color variable
white="%F{#F9F9F9}"
green="%F{#539165}"
purple="%F{#AA77FF}"
yellow="%F{#F7C04A}"
turqoise="%F{#19A7CE}"
red="%F{#E30022}"

# git
ZSH_THEME_GIT_PROMPT_PREFIX="%{${white}%}git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{${green}%}󱓏 "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{${red}%}󱓌 "

# Set username
# Set username color to purple
username() {
   echo "%{${purple}%}%n%{$reset_color%}"
}

# Set hostname
# Set hostname color to purple
hostname() {
   echo "%{${purple}%}%m%{$reset_color%}"
}

# Set current time HH:MM:SS
# Set current time color to default
currentTime() {
    echo "%{${white}%}%*"
}

# Set working directory
# Set working directory color to white
workingDirectory() {
    echo "%{${yellow}%}%2~"
}

PROMPT='[$(currentTime)] 👾 $(username)${purple}@$(hostname) in $(workingDirectory) $(git_prompt_info)
%{${turqoise}%}$%{$reset_color%} '
