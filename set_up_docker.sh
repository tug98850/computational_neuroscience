# refer to https://docs.docker.com/engine/install/ubuntu/

# set up the repo
sudo apt-get update -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install docker engine
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo docker run hello-world

# set up Docker to run as a non-root user
sudo usermod -aG docker $(whoami)

# must log out in order for this to take effect
