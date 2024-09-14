Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36715D1
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726303554; cv=none; b=iMDsOadcUff6DEs7i7OTyGo7fP6fOlgDFTWJnyYrlf/PGqi48EQAVdTrcrxPYoo0mrXcUbaxLCsN6FR9Je1EB+CguqfsuveIVzXgiBreOkATYMSFKMqC4TbvDnwm+jvas9epRNwvmzncHKx5jQeF8i8ePR276piRTLYqoKQQPiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726303554; c=relaxed/simple;
	bh=3DK8MoAPtw/pDg7WdsMvYA3dBCInlYU/f5LphhRvgco=;
	h=To:Subject:From:Message-Id:Date; b=LXZaO4PxC2SgDvFv4+N4lJpq+uemAkzOYHT7V6xqoVbTMTSYPXlPolkMn0DnsCjJrIIx5RGsqc5qcmAxR16MpzjzugL5qh4oQ6Z31ywpl9/+hfxIS4ygjBDCP4acMoZ9y0DZ77jqwbtMFhpxCcSsDptLn2o6yvLNzGruauoUJaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUa3QdPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUa3QdPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2514C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726303553;
	bh=3DK8MoAPtw/pDg7WdsMvYA3dBCInlYU/f5LphhRvgco=;
	h=To:Subject:From:Date:From;
	b=AUa3QdPw354e0oNahW9X7Li2YT44EJTK7rPO7sqq18xFae5+criRfazQ/2IkcNaqS
	 7cQU00D3Y+9mtfDfmq/rA7is7MR5T+XP5sjFcM6IdYQXUXV7r0g+ZAUv6J0/C5i6lK
	 2L1kx0GgvKwO1bg+GWgCGdtdAjmi5cgDSm18Ak1Q2DuG/YBy2ANreklZfCWsXUh03W
	 9AscvrHgXxQ/OF+9p/t8ICRlN236GdBQhyLQwgjboGHVa26RF7DT/0k+uJJP7SDeiN
	 wiE9EMoBU2KPwsi2Bfvp0HKcUwUAEvcEb9b6xYWB21HhhsSl3jMR2mEL5cQZuSm6cJ
	 ZCXhdRKe4Czig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD02C02180
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630355361.27691.9747458198275134154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b01565e12b820acd80b7be1a22a51c736e74ad042a49306950434c594aac4d
Date: Sat, 14 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726303553
