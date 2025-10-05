Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D756272E41
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759666794; cv=none; b=eGwFwD7N1INf8AF6wM4Rm/0j5fEqLxJCWUg0ZhW/FfPHfg8cu6mCtu915VSi+nm6zqMujj94ackI2EsPlLBwMQD5HNjEF8CLmg82tlji6Xy6ZLBtVF8/o4ncKBNDvsgjD6SwrFIZLerI39huv4WZIVHW3efmSgb4wqNpddO3ZV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759666794; c=relaxed/simple;
	bh=iKD8mGJNPiGdE/0PN2bQW1xGlqWmFPnLknQmouqNYe8=;
	h=To:Subject:From:Message-Id:Date; b=Cy1f9tliwi1PSeZvH5boIBquCOpACFTn/ojUKQaYeBRiYuhAhz74nWW2XBg3UN6pXxOuUEetqBePlrYLAyLugqyercF3ASG0YvCzUXDegRVIn+FP4Hmr9xPP6tA0TUOml/QqsUsir58vOidmokNflAfzqSNayLNwEcITSBnH9RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mqtnp88B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mqtnp88B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7149C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759666793;
	bh=iKD8mGJNPiGdE/0PN2bQW1xGlqWmFPnLknQmouqNYe8=;
	h=To:Subject:From:Date:From;
	b=Mqtnp88B5BUaT8belMYRvjADn40jO877nkoJf1Drjx/bOKT2lteiif5rYdRm6R9Su
	 xiYCJLPVCwi1o58ZVIOzJApc/A/F0a2tvTPRNQ9beOa+3KVhAHCx0DpCb2uhSQvfwY
	 cSQGaJRUsl7CZu6qccAXz7JwUurKfkyS4Y26Uxm7y1TTb8UU6CisoZDze6STESVCZr
	 UeDogECa2yBqJ0Os/9DWIC17y4sz6PAgr/74iIqwUmdOZef+CrUL6MP/JkmsHsVPNY
	 msJrzmvSrdSZXccWdppqgL4HWqSRtqRLYHxGqZysYe4FUa9JUR5nRwAKghXOwZk7aL
	 M2LvDKT8FyjTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C2CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966679357.5934.1190992598115021953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25405de3411492f82f4992958513f96e8e4c1b01acf9a0939579018633e9f6a6
Date: Sun, 05 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759666793
