Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB8F1EA65
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771891494; cv=none; b=HnS7srSkwCqkNsm0iqZ9wlQx30W/b3Yf+b9Brjg4gXUEUJX3dtXupoD3TwThPHOFeRv8JgtP1Xb1NRZFmy39Te5iHzhZPtJI7JF1OjxJXuYuALIVm83vydVQleBPBxA0RMXQoKfssuV6yeD3q7bpYba/yQATimOpBe3CYdDu3Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771891494; c=relaxed/simple;
	bh=V8T5oOKoB+1pEON2Ls/2HIMq+wsaEwz+hAf602yC0Ks=;
	h=To:Subject:From:Message-Id:Date; b=SDbYrLr/Rkox6PBvNokXvXsbWtVEYSiGcax694I71cm+Rd9qbu4w9Xnh1r8N4taaSAJ0OuQlJIpW+HPzD0P2dJK3t3QN2iFfWr9CMsK7DUfc5qU0jgZ7zhvXovKpXwE/GppcQKiSyY94ERFvxZwyTnHQuiGEYSGxKlz4few1ulo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6si/2V7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6si/2V7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771891493;
	bh=V8T5oOKoB+1pEON2Ls/2HIMq+wsaEwz+hAf602yC0Ks=;
	h=To:Subject:From:Date:From;
	b=a6si/2V7iX4Q/71SZqOkgVEcaAURgPd4PC+rxd0ofgV+l2SvQ6cQo64SOy5LR8tlY
	 x8jPB+4j+JeshZbNkFYf0IrkTiq9xaGDDmXkVTv3FN088f6g4dcmjjC/p/vp7W0E6B
	 8FiE82iT/tuOVxipZ8hnLGLgkix2iv8M6XTbu81UswD1ROozHzgvZFJy6U/9xUi5tm
	 i4nyKsemxF0ngMtJPVaKEbVP5Nisz8dczvbiH7kmfQiVDoaIfBg9gLRwM0LLCQWjpC
	 SK0qRqPsp42tAHmIsVilVeUCbo9NXKjk/8rJlptCbYwgAmGNUlxBZ/HPN4OUaJFLtO
	 RwsfGLHfIrfzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966BEEEC2B0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189149360.5659.3705855606802753327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ab0fa05c0bf238e5dedeeca84752623f7e267f02530db051e0c35fa09812d2
Date: Tue, 24 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771891493
