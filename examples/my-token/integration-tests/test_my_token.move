//# init -n test

//# faucet --addr MyToken --amount 10000000000000

//# run --signers MyToken
script {
    use MyToken::MyToken;

    fun main(sender: signer) {
        MyToken::init(sender);
    }
}

//# run --signers MyToken
script {
    use MyToken::MyToken;

    fun main(sender: signer) {
        MyToken::mint(sender, 1000);
    }
}


