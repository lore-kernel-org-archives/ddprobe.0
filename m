Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7F6205E36
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713645623; cv=none; b=uODw61xvufFxtrxnm1jK7kp4QyKZVjmnCVIqLQAISeKxbPuIqCIk9yJwOix3e/9X5yVyjKqdWOS36QX07WygCzBYEA1fL0YkD1mHX+4QM640O90Xk/KM+286aaWC1j+JJjGRY9ENQfddqHupEh5JmGNeFw+Hhz0Fi4YMcRfAJAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713645623; c=relaxed/simple;
	bh=pIr8dbq0jK5IKDdhiR3dGjpNPXZNPVA6i4VdjgcsqYI=;
	h=To:Subject:From:Message-Id:Date; b=TqwawS1ivMe242srnj7f+lLU2rgxpZw+Ai0tw98nRw2kH73rOV9jMeMxTcrgKOjTwCpsyxD8o0j2JCIQtW3pUuPZIGGZA8grqIo7540a0Ugpn1jYTBJvds4zhYMH6DVRfoahqyr26Lp3G6IfJstumCmo4LHR0R8Yg3622Riwmhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPnIP1En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPnIP1En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99C8C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713645622;
	bh=pIr8dbq0jK5IKDdhiR3dGjpNPXZNPVA6i4VdjgcsqYI=;
	h=To:Subject:From:Date:From;
	b=uPnIP1En2np2J0xuYpFrZIhABc5QrJqXoEdkcrj1+wcT3luDr84GcjSU89/7IFlWY
	 v5CtZwd+RAMEG96oA8SAQwLK1UHB5GxzUJ00bzuclccf89SMeYDAcTEypk81VFc39u
	 Gq5Aa6VzoGLxXrUj0BcoBPeABzp8goeRSs23sFK4mNrbd8pozfOS9MD8GIjCPRHlve
	 85yvaasB9a5EcuPe7ltLIkaJ0bfyQEthKg5ceSEBQyWMI6y7/lYWDKqLacZBOinD6I
	 wJVV5z1PuSs5Fvd0SrJuZCr7jQonoqqraYm+gs5771PGX1w6Zi02fwdiXPQ3eBuse+
	 tRVoNpJX1bA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A5DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364562276.5824.14049342548908055531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88bdbfc4aa5cadcf10183d6a88485af5c59f52b2f71516cc5c4f3af17597daf3
Date: Sat, 20 Apr 2024 20:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713645622
