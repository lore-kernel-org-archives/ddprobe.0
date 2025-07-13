Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2574E221FCC
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752409795; cv=none; b=i6w4V0NxTKLkL5ytTTYPYiReCJFhy12HymhNl4k2xjQXpAen8jH4/zOOpXzRGSyuf5uVJMDIpzrO8qIC7pa+11CanMqOQBMiIX1qY7MUCGl76KwCntMOPpBI795trOn+tvFkK5v3ZkgA1bW/p5xlAgwASJIT1RNXACqZj2m7ado=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752409795; c=relaxed/simple;
	bh=6OcGfZwm+p/keaYVvAUK31lVwqyFmN2qwqAlJchvRB0=;
	h=To:Subject:From:Message-Id:Date; b=g70+A0IY0WQ8+ATc/duFtj1cxg4LQ9tEJzV8I1XbvSIUqoy8oyf/9BOcSVNeTZuxd74fGC49jTkcXeLID6XdR8Fcyk7Apcbnfiz3n/e0H5VM1n72jTGL3viWUj9iyy7y3YAlgsL6INxGyjr+T6M7mqSGOY7ZklE9yMGAvKK7LLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6TOr2pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6TOr2pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61DFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752409793;
	bh=6OcGfZwm+p/keaYVvAUK31lVwqyFmN2qwqAlJchvRB0=;
	h=To:Subject:From:Date:From;
	b=o6TOr2pvXEStuRZ8DIZ3UaVJQMJ4THCNTUx6YpBRNupbPWBgzPidpc7NlHkA/vwIG
	 HJ13kXXjigKbwhZKF1h+4rDl462pB832ETLHA+rdVYbrdCdQZXhTzVM4J00RBRYLMl
	 YA4hJ1ApA1UcYhILBdKF49ky4zkEr8/x05qJB/xSDuC/PxOg0A8+h3h+kCQ/9LRTM7
	 PKM0ehdrwVBt/CmyH7lCqFInVheUWTsx5+7/N6X6FvvBBLRBDNp2ikg1k/Bcc7Y4ic
	 zP6ewNkiIU4NQulvjtWOXQYYBddPZyetpsbG8mZM3vANXawEcWGxYs4cSuarvS1CjB
	 4D3nRZheGbRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C8C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240979357.27218.5655466112653216587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e73a482be70def9080399e638ca912030a38b9cf224936f637cb18dedeb4f6
Date: Sun, 13 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752409793
