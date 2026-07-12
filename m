Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644C39EB40
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783881514; cv=none; b=NiZEsUxyTWhODdfdMOE2ncxiMWzsS2ioTu8ppEizcFw5Hn3xB8zPxfY6hutfGG8yDfQ89MRiHmH2O9Jw0yS7dDyBGo1zVEiGAxGRYkKsFTZbfpxWSpI1Y65T6//IMKSf3kK2Da0J8oERViPm/dsomVfvaAO9v6ArkmXn7IJYTDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783881514; c=relaxed/simple;
	bh=VGE2VaBEU4lxsIu73oHzJ9jbjTa4J2SQm3/B+RVzWh8=;
	h=To:Subject:From:Message-Id:Date; b=EpJgyBXhKcEFgqPauYiEYHeUAYk41HG1MzKJl532Cjd1xdDkiM2hcN+XeStb5zUlGzCL7yDr5I7mx33GBWXvhApFRA68R/YZQD/yGvIkqQrqOFdnZbrb4EZ5EOTlgIbIayK+kHMLnu3R4Ys1K+okilo7RTUIbnCEuLfFwrf89BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+TTzihu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+TTzihu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCC8C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783881513;
	bh=VGE2VaBEU4lxsIu73oHzJ9jbjTa4J2SQm3/B+RVzWh8=;
	h=To:Subject:From:Date:From;
	b=D+TTzihuTZQBaw6w+LunyIS0YP4HNND4XkEsfrWiobn/dl13Ml4eFjliTKE3b2mz5
	 pD5wHrcYRkhm+kozlPk+CpU2vRt85x36zr7lvcA3QIGB+4xnqAcODf9mhTTwdAViHi
	 t1bxtaIuIGlA/cnr37dAmoJ3Wr+8w809yf45yG4X5XhQJBa/4Vw68/OGH4fVOKmyPr
	 /kJvWvDidoeiZHbM8Ri0nlSW/PT73c5YAH1buWaVoOP4QO9AYadXEb/bzlXWVoFv4s
	 vz9FTZtmK47E65c/8kTiG/82r/8JecvwxMYzB66wR0qGngOs6Zwx2abmTMUY3Kksbd
	 bZycjAjW3szMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC868C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388151368.30493.12629371201666667216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0281673a8710b65d195987646e6643bca22271f321c6ece74e11d4bf3c4548a
Date: Sun, 12 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783881513
