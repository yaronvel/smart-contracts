pragma solidity 0.5.11;

import "./IERC20.sol";


/// @title Kyber Network interface
interface IKyberNetworkProxy {
    function maxGasPrice() external view returns(uint);
    function enabled() external view returns(bool);
    function info(bytes32 id) external view returns(uint);
    function getExpectedRate(IERC20 src, IERC20 dest, uint srcQty) external view
        returns (uint expectedRate, uint slippageRate);
    function getExpectedRateNoFees(IERC20 src, IERC20 dest, uint srcQty, bytes hint) external view
        returns (uint expectedRate, uint slippageRate);
    function getExpectedRateWNetworkFee(IERC20 src, IERC20 dest, uint srcQty, bytes hint) external view
        returns (uint expectedRate, uint slippageRate);
    function getExpectedRateWNetworkAndCustomFee(IERC20 src, IERC20 dest, uint srcQty, bytes hint) external view
        returns (uint expectedRate, uint slippageRate);
    function tradeWithHint(IERC20 src, uint srcAmount, IERC20 dest, address destAddress, uint maxDestAmount,
        uint minConversionRate, address walletId, bytes hint) external payable returns(uint);
}
