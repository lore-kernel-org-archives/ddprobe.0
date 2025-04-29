Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B545215073
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745894395; cv=none; b=Gjt6N/BIloPnY2rcW8oTmF3cmIRVLoz5452jJcpbjjXtA6IjfFpSHN1LpnE9I+5pgk557LsZnh4++EqcFpiOSClLA/kl7vHFVqULa2+JW0Nt2KYi67cGt18M+PugJ0rkrhr55J2c+Yu1B2oEuFoWxY1fOQWQ4fv+CbzgNe7Dakc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745894395; c=relaxed/simple;
	bh=2IicmNV51g6TUWYrXuj4ipvCUP5HeemMAPEcMD2qZmI=;
	h=To:Subject:From:Message-Id:Date; b=VuCis4NMg4yx/0LM0Ze69eFIp3tIygSphftNhbBo0fW+lOU8mYDPOH1ezblDD0RH05vp/zvV/Ekal8c3Uz5yIv7tCSyUgDEzTeCoz8EF/RbgMFaUqJIuNbVSbbDFEQBAiaiJzY7iGfwpxWJK7munyj5oCzb/4b8IbpxFxq/KYGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBP/ZiFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBP/ZiFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745894393;
	bh=2IicmNV51g6TUWYrXuj4ipvCUP5HeemMAPEcMD2qZmI=;
	h=To:Subject:From:Date:From;
	b=iBP/ZiFcTSSTv722KtCPxkdpTdsNHuyIBHBs5DGN2DTWvte40CcaZRZGiiFdSsktM
	 1bXgebQE0kN0UKYr5xVkURGwbhve4aKV0kafuSraY9Z4HB0Z/pzKKg8Ka4N3zRcXlF
	 jPQfatzCrLUkx0q1zLRzO5sI66frs2MUA03vBnm5lLE+cHGBp0PLGZV/g3xtHj3RcP
	 n2YFP+BGra9svvr6j8dYwdou1NvjASUlU5gGSlaNAZc5NN54T2P2Qua1jm1obzv+0h
	 XPxlvftbG2ZNH+QvcW0bWGA8/3QxFkorB5vPmB5j6tM9IXcMPlozjxAf0cCHae0rzP
	 zphWDtcMobQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F732C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589439357.27683.452986072869389266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e17b4be2afe2c447379b3a306344fbad4a1011004d13f3fe52125809df91db
Date: Tue, 29 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745894393
