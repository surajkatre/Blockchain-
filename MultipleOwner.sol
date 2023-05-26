// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Owneable{

    address public owner;

    constructor(){
        owner =msg.sender ;
    }
   modifier onlyOwner() {
        require(owner == msg.sender,"You are  the owner");
            _;
    }


    function setnewOwner(address _newOwner) external onlyOwner{
        require(_newOwner!= address(0),"Invalid address");
        owner= _newOwner;
    }
        function OnlyOwnerCanCall() external onlyOwner{


        }
        function anyonecanCall() external {


        }
}
