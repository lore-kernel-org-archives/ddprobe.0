Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DACB641
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720340783; cv=none; b=tCv7avfAYni2+yk8q3iKcF7SDOWfJ2mS/37fkwW/V0gFz6YUS5Cgd56SRPPF6grXJbNLW0cljOq7wxYPM5otfNhjztx+oNWeouI8rcHc1YVLN9Ef9eQYHk/C2t4MaUr/AccblRSYbllfg+8YyPIyUZ9Mf+iRb98fqK+rlH05h5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720340783; c=relaxed/simple;
	bh=EoMrYxn9IK2F7t/73jNSOayGJyJuBjxyoduX6fbjbvc=;
	h=To:Subject:From:Message-Id:Date; b=dVCU+ndIq1XLQ60HgYc2wOVn5pdpV8+xoeR7AED4hV0dPl+vvc8J3/rjv2r4ZqvpjISm4HRugaVCfRxWyewIrFrDZvz+W5uUwJvT4fKzsE8qH+b47PMVhQwK8gJjEf/XVs1ZhZQo0xwjaC+FHBvH2sfhnv6NegO1uc2WinGPeRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQBxdLCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQBxdLCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA7FC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720340782;
	bh=EoMrYxn9IK2F7t/73jNSOayGJyJuBjxyoduX6fbjbvc=;
	h=To:Subject:From:Date:From;
	b=EQBxdLCu8a6AF9V3o4R0FiStWPrqLt+rWQLIMhzJPlihBqGJ9UmNwZV4dxCpMP7KX
	 2re6A7CnRRjXcx5AFtfUYVr6959vQzn0LMfC8ezXYVoAG+lSyMGADGJco8sisyQuzP
	 SmkIabf43GhcGlTHtFDJ6kXRnTOAETjBxT6HgGzt/gfKaKXpcSWimVGmvvlH3BcvfS
	 yrNR4BAM0oSNKh38dbhV/tBHF6JDr6Ou40nfuEGeRPIcwFwkd+pPbTTcak6B5LfAMG
	 AXY0QU3Mnhoxmgm9rwuy/96ozNTAuni0FbeW/FTP5pMK1IafEfyjVa+rCN603TXCY4
	 unNc31PHsSeIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DC6C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034078277.24688.7133494396678018336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5579222f4ce74add4b5b58c9e5f44686f1a6e02bb14dba469b006a25d081aa5a
Date: Sun, 07 Jul 2024 08:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720340782
