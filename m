Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7D2211493
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734024354; cv=none; b=cAOw5x6kvvPObv2qSdjkIXpT4Vuevp//6Bqgx8JsrwjHwq56wlTqXRurFSXe35p9aPYIsqIDNZWKTBG2qtI3XmheVvmqNEWq1pEl4KMHE2D5ky+mUB60q2/DzrcBRLhoX4d7iRrkSxInEhaThnZ/nHeuFRqjkP3Foqx8Way3eeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734024354; c=relaxed/simple;
	bh=jEfCBPnzjGIiCxXcvrg9PLdOLG3TMjvKPK3dPB1DGQg=;
	h=To:Subject:From:Message-Id:Date; b=a/oG9aDHFyWG0J495imtjgX1ATPvDpHZmQTb2qVPCN714+xxaYI73sWuTfc/aFXbw1fGiyr+VaUQ1Tz7wvySXB6mHqQ9VKpBiLw5b+WcNh5ef3EsL9D8O54KudIy9lQZqTP1aAzd1zzhJpMExGHCbsZmpU6sM6Eo4iXZj4Gy4Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfVhjAA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfVhjAA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44BDC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734024353;
	bh=jEfCBPnzjGIiCxXcvrg9PLdOLG3TMjvKPK3dPB1DGQg=;
	h=To:Subject:From:Date:From;
	b=AfVhjAA7DH1AIkAov4A3hVPIA00CuUmDECTSp6wP9I/pxyyuJGUzY121FTeRc83SK
	 66qV1GxVxSJA398HfMkMiPNJ+5wFDQZWnlKYE0JjYWRgIKVzkMt/NFVHBzb8qm1RIw
	 aJ5S2qFw7VAy/nggJBaQohvfmvgV3R+NF5vPWFMTPuUpULGBJXBS+GmUAWlTvEXYIa
	 S3v+3gWVzG4BX3lEFKH2XMpJGZmPg5ZnfjN1FM7cmAC+YC2fDAf+iN9FxTCqiFG8hI
	 MWbl7HNlIHHbI4/Y5+ilAbm/RIgNRo2rwK8zjbNUALKBDhQe+juKgekQJQ2uFr/qd5
	 NEN5EEYRSs7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36B5E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402435365.24451.290405980670288429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1978e87f27409f493ade752b35c224241d29feceb0aeed71ce321c2d6bc55b04
Date: Thu, 12 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734024353
