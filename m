Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9D9285C98
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773697494; cv=none; b=Vb4qe2bPw8K06Fbp5UUH9JdKzcaS4lpklChysFIPTkml64T9YGWm643sVFJMyQFRYDWwpIbMXZRicHNIHXp8NkKD3Wrvalrxp/cpxpSLe+9UndqaseBUqIfClr1DYRbTMSyeUtgGgm3IFodCd+8qNri0K+LxLSGVJb3jbxKgiP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773697494; c=relaxed/simple;
	bh=2dhZar4TXZqaPBH8WEPF47eS2msNrc5uS2yPQrP5uqg=;
	h=To:Subject:From:Message-Id:Date; b=pt3itxBipAUXjqpncd0zkKzAX3TMAxel6QYQBXoXy4gfDnD3O/oJecKfDD1A7r0qql5ZLinvl75s2gsg53CdoeiZfzOIADqvpEhR7nmiov6ZDRNhMrSKArlNW9ruG5Mo2+7KDlVlwkk1+rVScXTHrMpm74+ecMANs5Gi0wZYSI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx3afHJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx3afHJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E7C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773697493;
	bh=2dhZar4TXZqaPBH8WEPF47eS2msNrc5uS2yPQrP5uqg=;
	h=To:Subject:From:Date:From;
	b=lx3afHJR0eOR+A3PCkQAIuh8ReTSB7lfn/4kiFdAeDTjxbvX27JD0ltGe4CkH4ea/
	 OPfnt1j3wfBV7FfnbRQR4tr1i03xXd6rBdPF1d/KPPBjdg94ZZ7/8Y7zKWKXYgNhRq
	 L0kgtalPPpt6vVGj/WgTltk85otz9UurMo9kCZkBHepBevvecgTX/L3noEb0bAUDBk
	 JjbVU7v5jJUCYIxwgmkpwpRK7uN0ep4nFrtyynSzMQTcIdIU/f8ktGGIPy7/uv7y2W
	 oLrUe61PVXyLErvjWU6cski7lZRNt4Ot/jiQDO9vnT4DFy2PrhNFW2D1bNbDUIswUT
	 4bxsz6cspveVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F641F53D9B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369749358.7780.6993075508132441916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d71d95166c76eebd53d5283656c57648ac057fc1012f0dfdb420cecd1c14e2a
Date: Mon, 16 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773697493
