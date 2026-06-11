Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E772C326C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781154994; cv=none; b=jWEJD0Z4Od0D7Z9FPJftw2IQNziyv2dWwlm4BbzstrH54hejBmX6vRvszIHzt3Zp1K1F5GXOtsYwYhywLvYhOTRxemI/i0b4eY2nEADrCs4Oy8Yfnerji4BuoUCWdhXmFfEqu8zpLCLdG/xPqJgXD5U8ZIrAn+VU/LnUoEoKtPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781154994; c=relaxed/simple;
	bh=NPChSiP3IfO9Tl7G0yrEXqT1HR1Z1iICHaZtKpmMPyY=;
	h=To:Subject:From:Message-Id:Date; b=CPtVr5skClaW05/J9906LdS+8v1Zjx+BXytrsld9JNHHdPPYUt6kERXQ7AIu7NcCnfZxH7FHUefg9nKtaVEippqIjFfW+SSbtTTa38YdpAH3Nl4TgEMOHxcPP2p3m8kMRZfWDDPDUuQVHb2VO+5b4oDjNCbhy377HR17hVahOy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mc2u4UEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc2u4UEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EB5C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781154993;
	bh=NPChSiP3IfO9Tl7G0yrEXqT1HR1Z1iICHaZtKpmMPyY=;
	h=To:Subject:From:Date:From;
	b=mc2u4UEkP08k+O7T32BUwSnbv2sXhKpWdI3EGXeynZhnW6HViQgiUdqdKJ6MuzLi5
	 cmj609k5cpKRRqa9dVrUoE3yK6Y+flU2F6KQyWiFN151yBO/M2UcR6LgXUA4gny2gT
	 0bcCSa0bnE4znnxdafnL77LN43aBguTYpFazop6o32A3NwC3LYhkQWmKOotw6+ai5t
	 JeNCF1IWb/NU/sqmeQ6tQMh95NFOkOUH78rKos8buHbw1EfrdsGdrCxNO44M1owtOE
	 Hy32CksaH2Bkpjl4thsGrupcOjtwMei1/4vY6dcM1jRZG8ubIW87IooDS0iTxCmRYT
	 ZxQpJGGz0bpyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA013CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115499368.5267.15116628512538106202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6826bafb59f25f19048db437575f26871f0b03c3825786165d8bfef6887fd991
Date: Thu, 11 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781154993
