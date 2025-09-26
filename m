Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7830B508
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758905995; cv=none; b=hX1xmmGUotNabdiIEUCvj1iYj+UxgvjbC7HeWiCwE5UwuynNOEflReiDvqCykEIsAqSAi4FjOrb0l0cFnthi9ub+geiD4KkecKHb8IIC9NxJsR4NmrqO1an+4y98RPIisgfSeUKKgxftNUcOeqJALcHrtg60y0k7H12xScCaXzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758905995; c=relaxed/simple;
	bh=whaRih6TKXPgThFzXdRuNhT4B+RNuigrdpLK5sRxJsQ=;
	h=To:Subject:From:Message-Id:Date; b=LvgWmkdMyC25ggTDr4S1IxS7PeCwcer0GFCrOO16MgB3SovC31RLYj9HOe9LywXm0zCwkN5b6MaPh9dcz0LndlA8T1PmRqdOc1wO8wWHC3DTCBhVdnewhJCT3E1PMMwG6HMDSCf1IXCwLk3wgZ84wYG+Mz/w4vY1R4rFDH+nHYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoA2jRq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoA2jRq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA539C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758905993;
	bh=whaRih6TKXPgThFzXdRuNhT4B+RNuigrdpLK5sRxJsQ=;
	h=To:Subject:From:Date:From;
	b=UoA2jRq+ldz5eOJfFVIf9CYRkKvspy9C6gWLC6bzZZEwP5lbmJHy2SgyFox0ru4jE
	 cqibTmyRvCWdDRRdPPOq+s8RkyCfICpcwCmzSUadtXdWQ3ZmQkbDXskyqsK6aiFRDj
	 2ptkfoiDCPxfz6cPDVYH75LOTZ5XFjasH1F2DSEhV210Z4c2sWcL/xBcxNtH8roOAG
	 XjQltSjxQpITGwKnOWsRWGoemOG899CSRueeXom4Wt9cIl/yyIHT9+/txEHuOg3xFs
	 rpXFOA1e5HIBFQ79zulaMhN/crmdyjvDgFug0AI8u1L6USy+h74V4Zzd0ydIddDrh7
	 0GrIOgEmr5Ivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DEFCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890599361.18418.121591189185118804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e3ee2b326baff022b5acc7e4a22d37a6442718bc75aed46017d03616a1139e
Date: Fri, 26 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758905993
