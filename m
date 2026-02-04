Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129C838F244
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770191634; cv=none; b=PmpXUbdeccgkIsKn1H5bZ04Bm0B7VGouDIeYRnwMkDFp+A4dItaSATrIV0nkHpJ0wDcZKLwt0DIyVr8spc+xf8GJrdZmx7EPvTtEKhqUM/iFkpLbI3Z80kSh6m/n4qNLQZpXxCsqiwCB5gfZvpD3nAc8YjgxNboQYt1NN4RFmz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770191634; c=relaxed/simple;
	bh=fjWyPmUTaUs83rtk4WCkzKtXrQlnwkAgC47c916mwVA=;
	h=To:Subject:From:Message-Id:Date; b=oc1HUxc3pd7P5e1+V3Fw1aBT1om55Ff10EbYYCfm5BBXQniixR8BGaG1KDtUdsrx8hECldk+r3qCPDNuOCZJOhR9ZmqqiE+yZvt57IZ7Z40ZzhTfY7lG1VWLoyvp7n83bw2Yz/zlQM+yfbeqtG9JMu+wfQxbzokoj263CQ120ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4/cg+Ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4/cg+Ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F5EC2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770191633;
	bh=fjWyPmUTaUs83rtk4WCkzKtXrQlnwkAgC47c916mwVA=;
	h=To:Subject:From:Date:From;
	b=k4/cg+RuYo3Rl+03BkPKGGOzdW3ogphCjsUNFTZKbjX7f/US8QiGq4iRRrqQKt6zC
	 EdDZQEQ3dNHL9OsCJadM92a+4hS78QMxYYrCMa8GfWddo9KebReWOgRLNS0byvfbxt
	 IDE+X1gY6jurC+X9VH2aPYNI5YR/3Xgg1uq3qqH4b05wFNJ58RD2alEOTvt2nbSNVb
	 KjM+RnXFh/Ba6EtimyfM96FyNASX3xEhBQO6XC6wfJtJVszrhiehFrJIR2Vt0O+GiJ
	 H/ziYmJ2mxx9l54XI3Z1cH5mXpQAeUctV585YHxgg089xRv6DOpZyAMwO2Uc0Wf5bd
	 jWCu1u1s6fSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA8AE83EE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019163361.30739.16684261086239808802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f088c1ce6e8aeafdafd56b7109f7ceb2a8f14fb181d68021e2fb0b6f200a0251
Date: Wed, 04 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770191633
