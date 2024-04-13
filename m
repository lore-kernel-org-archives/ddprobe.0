Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D3039FFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713011963; cv=none; b=Czqax8oWg9xjtqWyAnJ8vwWSKcAVD9/N/CsiJiLmugOkFeeFb99y6amlnH9w7p3+AW7K4wtEdFVosOLreaVhJqWyvxzrRGwc3BmU+hib12Ru2uzz6v9gC2mSSqk4aZUDkW2LwpQ8CafJwtSAhr+LURCV320O6gr26NaSLQAJL/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713011963; c=relaxed/simple;
	bh=ODAfgjDe+Wkp1tEET0tu7MmsVCsmQoHk+msCmTNmzDA=;
	h=To:Subject:From:Message-Id:Date; b=i8+ZVwPuob8t/5aSwQK6RO9sdgBYzfed7DSly2gxrsldoqFq1sSZPUtPDUI+AvmN58k3UV6aOUmHTdx+M/lu3qO8RPP1SH9jmD7bGFdvLkq7wplBmG5gzJHcW3hAxWOU4EMKmdebbVEBOMT5TqIoOOgZ+89XcSqV+P58ss8H4eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3ir8Vf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3ir8Vf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F2BC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713011962;
	bh=ODAfgjDe+Wkp1tEET0tu7MmsVCsmQoHk+msCmTNmzDA=;
	h=To:Subject:From:Date:From;
	b=X3ir8Vf2DA5j6HYND6HUrfwFU1TMaRvNizvbidAZqn57JJKFSENuZvQhqCEk3lU/G
	 kW72ud2eFO5g9AckA9cVuNIDma0jtaYjY9pc7s7xJ4S2PL2SuH3HQZ+7uWRkSPbtDu
	 2VohpWrsxS6bLJDyoELow5fkMX9/XpDwXZPdVuMrbFiDn3NBkY1cBtTNut44nLnxR9
	 X4/BuLBapgIyrub84Dpfw+XPL5VeZqpznTtxiYJwGMTxdeV6Owf//skWO54dP86Dlr
	 R5tpKVrkCRA+w/keDyGV8OVPNABISrGnpEECUwhfwsVPSC7LR1F96WUix03CON2dKx
	 s0XcPtTnrd6Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70EDC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 12:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301196277.30503.3663850309854928115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a289d5b5f4b1a97066c08903f5c7ff797bcdb732c3e3b3455e65627f84d5b896
Date: Sat, 13 Apr 2024 12:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713011962
