Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F311F1A0BE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775406334; cv=none; b=RGenDwKEnXQC3z2xAr0C4O0iw4qFGhCIXNepvOcFBSMYzDyZID0R1gZwHBw8PgMTbozPjGoEodgBxqhvkkDJAUcVzXJex4akIq6ve8jfDIprwwN6OCgyVeS7icC+lpjlw+d0ybpVqeBWuoFJ/yZOMOaqqetGjjWK6uJXAVRxnm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775406334; c=relaxed/simple;
	bh=cQoyqPTuB5nALFxkJoHOLuKSwwioE1XmDfY6apgvyLY=;
	h=To:Subject:From:Message-Id:Date; b=RAaBoUONqjlpR8ATujUxfKIJtUBUV4L3kZoo1j2tFXVG3+WTetavxFj0J8NLSJzU5e5JVcL1r/N8twb8/Csp6fmCLnqvpM2YLFl1l6iW8p4FLxITOoPteguRoI8YTq12Iyz1fHgxB00VeQEanxQELEdX67yTUIb7anQiT0CFFsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEv3uIVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEv3uIVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60A9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775406333;
	bh=cQoyqPTuB5nALFxkJoHOLuKSwwioE1XmDfY6apgvyLY=;
	h=To:Subject:From:Date:From;
	b=qEv3uIVFsfC5s5BnvY0y/Y2L1S82pu4Gd19U0iy0W2UydISrnVbQawicvWiggr25U
	 4D/o/hJvvdDoqAeihItR9tUMX+f0RGK6lVuSP9AtTAZADVFIvsxkMpDujxEeq/qKs5
	 bSA/6ZI/J5Wm5nHrmnGxGo432wqnQZAaGbZu2wO2KgzZQit643BEmGs4sdgCQ9XQk3
	 G25KOVjItOkeckVIn8T7/hLir2UWjYPTuXdq347rWzbPXpn2MHpfjlUvQjYMRRpz59
	 Gu9m0u4KKSkgMQMVtHLBNfubdGHbBGDw5OfG8rgRYWYiSayxGyHm5mRaqDGOLSpL1Q
	 GcoAwk3M7pMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0F6E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540633368.2345.10354539271072460022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5283ef8d2866c54392dd240dba6c5b79c9d5774c2a0eabad8f2a630e28d9d90
Date: Sun, 05 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775406333
