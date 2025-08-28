Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272A813C9C4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756382394; cv=none; b=SlOIVShRFgyMIEnO1yvrOZ+308SBzOmbEsE+42dw00IMx08Fklhqbw5ckhsY2TVkvT/GIPDZy1+fgasV+w0tFwpsK8aZlNLkekplP/E03dZCut+OsUGTbZ9ENJo5AO8fXI+me1m790N0pkyPmNCWwZl0cRuFotZCvXw/vwv+Xag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756382394; c=relaxed/simple;
	bh=s77c3kCJFuMp5dokp5+j8SZ2dJuANrW7rsqrHkHM84c=;
	h=To:Subject:From:Message-Id:Date; b=gKxw5OjBxGdyvv3nMdfiTmGnVEOMJf2fA9j1wetcE0mTqHCTHbJstWgaSIFMvPEDYUBLrqp/RIlF+QZolubFc/rxZzwzW7GVSV1wqwWraRLPQRQFNeRQ+zxhig65pTMjCQTf2Vb6lfrIfWRygtRUDCNz8EoRIV26tgu01c8NNMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfyGDNca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfyGDNca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00DDC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756382393;
	bh=s77c3kCJFuMp5dokp5+j8SZ2dJuANrW7rsqrHkHM84c=;
	h=To:Subject:From:Date:From;
	b=cfyGDNcaCCpBayTiE24s7gTIaC5N76seymUVQqANKJolzEOV9+N9b7NsyHIE+aqWP
	 8XTgXHPxMUwTUYQBnyu3F7eGZuQQQfuZKuMvQWfxePPSfIGSq389u1GkDb5Ra+aP6R
	 y67kbwmQCU/Ko04T/TdEXpYNPritM0oaqJxDWFIdLpfttE6cg6k5de0IqwEk5mVIoj
	 wVieY2I4hUYHKCd6B/HHc+xiboEqcGJDD25DOtswAiYZwUcs6pf07N9a+PAmjAbjQJ
	 yd0/ghi+frUj5/eBPMtqpfLEOQNTlrkbHqK04wZbRBrd6SLoMYGPMRRgQiONx+9Xbz
	 G7UJRs4anClKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB9CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638239357.25030.6165346227298619231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455791fc181f07768187ed0a4d6c58699ef6ed7c0c8b4573aeee6e83ea05106a
Date: Thu, 28 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756382393
