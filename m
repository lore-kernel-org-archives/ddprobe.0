Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5B12877C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757509194; cv=none; b=HgOz7bjtW3rYETeeXQhEjjEpNcrskqNGZqxeTCgfW32TI0DjTdS6tB2AvqumTBOw26nPvPWTGLgDe0bTyS4Nzm1+qF4oEYPwOVW4wuEAirQYxzinImu4rBbTIywnxK6/g3vOLaa2NuZgCGUp7sEn80oEYYgMI/YwrTs3TS5b/Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757509194; c=relaxed/simple;
	bh=zhzq/kUUQ/aJUmcvx5XEiTXfOxpunW/Ke1uVEkftjEA=;
	h=To:Subject:From:Message-Id:Date; b=hNRsOcaErhcMnnbFNIwCipNbG5DhOC1/norbi+DdijwXhbiwEmsq41UFW9JwkexvgtkczTFBmfL1KUHsIJf3xaiZ+YXMD3cXSyvLNHFL5Bfy5WXzmzpdmRa7yhOdDvuIlfg5JnzQscAKxc6YZNBWirt+so8PrJ0qeeLT8Fe/gQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kROLJJum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kROLJJum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE6DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757509193;
	bh=zhzq/kUUQ/aJUmcvx5XEiTXfOxpunW/Ke1uVEkftjEA=;
	h=To:Subject:From:Date:From;
	b=kROLJJumBT8wNuwCXdcIvxGnF8igwo2s1mOfmATEG2fb+MVwTeTbVa4sHUE5SzHKG
	 4kYUJzud/tGnqvq0KG1wO6H6ElEk5L/P68t0Z7Hy9CjWi1tFCPWPKSaWLN/JW++xt8
	 YAvV32Zp57nbs+17v8X5MtfENt4RLgsLMsF7lc/6Bk8PcOFuxZZC0c9W38pLn8Ne+p
	 6lgC+Q7KGYAgQXBra3Y+WiOceMETjG2A/UCE4A9M63i0EZ/GEkRhJQq4VHTzjRkPBD
	 eoREz3O7+TPZSZG5+B6Pf3OjWMTdUF6q2Aor8ezNqTGBT6inshF4pi/6/W0mQBirS2
	 cenZMoX0+PFWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD46CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750919358.27218.8486863750193326795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200c4fbc865f61cea2f2cd8a0f4b7aa7275de4567a657216849bc6d6e3b4cdae
Date: Wed, 10 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757509193
