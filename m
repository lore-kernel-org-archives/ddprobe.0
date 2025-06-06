Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFFA27FD5A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749217194; cv=none; b=q77BPCEytenyKBlOF4pPfHZTdytadvYPLueFw+6srGPUzhiP63qp1JWRoCkFSxWxtP+iNMhmfgaqd47v/EEnybkpE/dayAULsK9dwbh6cIpu6Exx6V+dfUe8tG4ZKwgQZei7GGohgYRSH7O6rc7/Fwexj84nQB/pNR/W0ROsXBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749217194; c=relaxed/simple;
	bh=OMnX6FBAnCMJ0KQ9TXm5LKRkGYa6M1L+TtxDu+CpvXA=;
	h=To:Subject:From:Message-Id:Date; b=REw1X1ttHDCgWPnCA5bdaxgRpmN7eMDZiqsINS/XQ/yvEVcbnQ3S1JVn4xuWQULHisOAwiJvGpM1lYtjdkp1aV1RFoNpCucx06sEncAfW0x9KO/xb+1u667qwP3K+GXtK2wduRV7RwdZtV/4GAgm7EHz72EVaJqSUweaZLwiscs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=latBTBKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="latBTBKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2775C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749217193;
	bh=OMnX6FBAnCMJ0KQ9TXm5LKRkGYa6M1L+TtxDu+CpvXA=;
	h=To:Subject:From:Date:From;
	b=latBTBKyNvZRWxd0OLptz7ZlbdrQWTubuMqis/i+f1rksgh3fToAs2o3ovaCJ2l+r
	 aLHcy1/t7HRIWLBjkk5CPeOh6/AKmsEQCaArxMI3y3jesWJSxVGzvq0wUTenA3EleN
	 MoxwfAIT1EwpsETBay6a4WNZtTV5naobIroAuMmPHHNxym2PaRqr/0KwmHUJnw4odz
	 U2LBR/Fxc5A2RbA9XKwZEN80IhDMcTQBqYz5mwr8N+t2YApUrudK6XlUEApL4IoQSx
	 iUJlNeu8KobhBtPaznTdcdgrCZ0ZT+BT/DdWFMVldwrMm4V9OThwEgr0QAOc+8yYGl
	 bL+KFEeW2Jh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CFC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921719358.6353.14878938851638227210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843fe50ff687dc1fbf596f07d62d5c2a5b0ba19c7f0469525eadf5dc3182bf76
Date: Fri, 06 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749217193
