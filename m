Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7993FF1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779589354; cv=none; b=hf3e/GBEHuiybVtXK+7ME9L3FJqRZNcuQr7HYfT0gks0EgqSPRGQ4RbX12KnsJN2XvPI3gQutiKddutYEk9tGlXmIE7ZCoGa+pxTix4grW1ztKGcQg8Slbg01MMzWDNlSBdqDRhUbB0KToV11wXgpdX91IZTPXrbiPYUrj1TYmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779589354; c=relaxed/simple;
	bh=ebBwB0f2RzGnXNgskIl+oEc0uGQIiMIc+wIzESBYRbQ=;
	h=To:Subject:From:Message-Id:Date; b=tRDPx9bkafO/gBKZ4i4G429IhPT5jJLo19xUN7ueYTLCi3jNJ487nI+6537MnTIE2MsZcHtgED2gwktyvcZuU8dw4tHEfpo8BOIFRHSj+YouX36BXA7T2nJEsHcQYv0GVwTG+fROCGbobaVKxNp6v0lcHaSkm+SqC270+NUesOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO+Dw//C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO+Dw//C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D158FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779589353;
	bh=ebBwB0f2RzGnXNgskIl+oEc0uGQIiMIc+wIzESBYRbQ=;
	h=To:Subject:From:Date:From;
	b=rO+Dw//C3MN9lGNcIMIDghulNsWTWhG7Pa0UfsFMFyo/s4aIBAnrIBRSvHmhJnQgK
	 pUwezTRc2SZDN8jyTe4Sysl3Ay09uuMeVT4qzaD4pWKvcIy0Is6BCd1PF6kcHcj7HL
	 3Au5KIOwS3PgWTyEY/fQbWE/rUcEb8AqhmmzjPODTflB9WXEy6kpsNFwic1RxtQ3iZ
	 vWTbKrKRxw35E+RkAwR8JXCHKJXBZk8FqD5uuXqdeySn7GC4H+VL5HlP2W8Z8ZN+Nw
	 lk9IS2ud14higLWp9KAQaLkQS1hTZVUnhZ5cYi8OoBG3UB53mDPPDI4hhmhmHCKnn3
	 8qcn2v5fr39uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED1CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958935368.32742.10530133952019482071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6172e23a9900e0002e82bc82ce903334612ed1ca34bec47f2ca9527a41e139
Date: Sun, 24 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779589353
