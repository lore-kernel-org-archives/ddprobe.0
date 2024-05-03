Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7131C2B9C0
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714762943; cv=none; b=do0coULp4MNbSEaOOnhsoLC1ODU4KczFWBsCZBk7Dmjdqfh+wRiVD2maFyUc3U3y3puTb+E90mS2tT4YMV6TQ+BksvharC/PrUpgGlfZOQk3lYMfwml880NuZLB8m0zK2OfSMmpAK43jGcHgFuqPdHXg9j+oX31w4nJrfW/X6pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714762943; c=relaxed/simple;
	bh=gGm/Tr4XyRLr5lOBsljW5cN6bnDESqFK5E5Qa7JtOG8=;
	h=To:Subject:From:Message-Id:Date; b=bEC7goHiHIciOzsMyQZxeaLuzud9Nm5NV7NLePOROJB32Ah0Vp0dI6y9MtaRCD7BVrPHvvz/mpzslWT2LnmsqTzdoAS21CgK9Q1DGl7KA5qfDuszrSlEpZ2aA402eR2td54n8jYjD9uq8XkxormYyPBMxEIiOyptOp8KjWGBY4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHXVKjgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHXVKjgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED5CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714762942;
	bh=gGm/Tr4XyRLr5lOBsljW5cN6bnDESqFK5E5Qa7JtOG8=;
	h=To:Subject:From:Date:From;
	b=uHXVKjgysBj9EdhBoBY6tyOuvAb3Uic6u4vqi+zz0G6rOIwUz7SRD+u10Vn/W19us
	 5Z1nCON7ZwBlJaij8wmON9vLuMxBYaAZjbT+iB6ALtC2y18ubNcr18sTp18w4j06cC
	 gtw2wnA25m01TN7IGfnooYN0IAvlgfdfYxX1vSJA8QYQ4b8gtghTYqsK4O++whu1uQ
	 twd13vs32sLn9YUmnWeiH4isqtiLHoEby4uymFnx1+zKJ+zxWdo5Xk8K9Tlioppqre
	 IgHFE9hTItOE43dBg1ut60QkkwFf49gi94pTG5H/oro7K3JdsIWkPnSWQ4udz8hYby
	 yxEqgdAGRAHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24C9C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476294276.26170.2234755074398276237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5416c1cd64241364d3a5c967bb025b99e50129ae2d4319c15f2109d252c197a9
Date: Fri, 03 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714762942
