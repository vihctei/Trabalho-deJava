
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gymdb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `CoachTbl`
--

CREATE TABLE `CoachTbl` (
  `CId` int(11) NOT NULL,
  `CName` varchar(25) NOT NULL,
  `CPhone` varchar(12) NOT NULL,
  `CAge` int(11) NOT NULL,
  `CAdress` varchar(50) NOT NULL,
  `CGen` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FinanceTbl`
--

CREATE TABLE `FinanceTbl` (
  `PId` int(11) NOT NULL,
  `PPeriod` varchar(50) NOT NULL,
  `PMember` int(20) NOT NULL,
  `PAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `MemberTbl`
--

CREATE TABLE `MemberTbl` (
  `MId` int(11) NOT NULL,
  `MName` varchar(20) NOT NULL,
  `MPhone` varchar(20) NOT NULL,
  `MAge` int(11) NOT NULL,
  `MAmount` int(11) NOT NULL,
  `MTiming` varchar(20) NOT NULL,
  `MCoach` varchar(20) NOT NULL,
  `MGen` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `CoachTbl`
--
ALTER TABLE `CoachTbl`
  ADD PRIMARY KEY (`CId`);

--
-- Índices de tabela `FinanceTbl`
--
ALTER TABLE `FinanceTbl`
  ADD PRIMARY KEY (`PId`);

--
-- Índices de tabela `MemberTbl`
--
ALTER TABLE `MemberTbl`
  ADD PRIMARY KEY (`MId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
