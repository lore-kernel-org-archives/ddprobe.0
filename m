Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED7D39B497
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781301394; cv=none; b=qsFGI+wG2JMe+xI3O4739lrBrvvU3suoi8BLvY0L1jeuICp3AU21XmQvVDKlwycvMJ/wDsgdKFkEr9V4JsuzRiYKCk1ix3vOdQpzAOblGtURPLLh5o6sRASefyxOapZoREVJUaPE1euv08a2J4w5+aByuCeIt3XCx8EiMSLVoqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781301394; c=relaxed/simple;
	bh=OksmIX4fG0ddC9ncFD8BeArd+t3ZYVt+NuJqaweJ9uM=;
	h=To:Subject:From:Message-Id:Date; b=GwAdx7UrBIvoetiwH7RTNSmSJJqwc5Gb7ZriDczl6BcIJY3CSg+WFaGQSg1iqn3P6BqRkykHgiIB4XCUoz+4/gxBG5VTDCPD4mKlSpHt/+8Fd0fRBekR0EC89bKnCkb/T3C0ItjJgF9h1sgJ8xKAKZK+caIhqcEqthK0YEQr7fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jlv0yriY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jlv0yriY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6244C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781301393;
	bh=OksmIX4fG0ddC9ncFD8BeArd+t3ZYVt+NuJqaweJ9uM=;
	h=To:Subject:From:Date:From;
	b=Jlv0yriYBcQBBJkgyAvRZjLgWNUCpyl888wxO0d/0R0oeGocCxjOBJpDpDj4EMIqh
	 7I1e5t90GeLguSI7IWCbcv4PLuYCorOFT8t4mDCMbneQY9E/4noAE2DubvkpylWKiT
	 FE5i/SF1NJeMdPvhac/iG5WbrgKvNYhuzzDcvxsWzy3cCnhLdcPkj3Ws0KtRnpLOQG
	 I5YuceiLwKqyxPgp6pYN/zAeJwVwenWsXF7E7qZVQIyqBvYzHwsn1p/lUcLKg19u9L
	 55JtoR6x10B8AabNUt7UgdG7pJjr3YaUtkhaiImJsX/SLZTGqZHc9uBIKjY/FDdf2J
	 lQU6FRRBeG/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD9CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130139368.13950.15040817072205274257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deaba629550ab82fec8d39a03821b2d2017da020ae412f2d91456f5c03ee976
Date: Fri, 12 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781301393
