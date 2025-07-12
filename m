Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC5B7494
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752287393; cv=none; b=d+/Hd2a+LohZokuEQOwUmpFAqPfgY1JNVQ0eQUSwnank74pPmTxnDLUN00xfYGEebIKRFH3emJ5+U2XGJH2iIdJFKXSjAAI6J0ubeH71vHSCfAYdU2P3eEcDe33mIFOyifCWCT6F4gBDle4AtKSlHQ4xu9HiitL9NmRzxewOd3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752287393; c=relaxed/simple;
	bh=e/lrZek1gp+LSDXuhLPKGtZwet90pnpFnbEhuXv0PH4=;
	h=To:Subject:From:Message-Id:Date; b=raR92aOaTdVR9Mtmzu4EEpcBnsjxwdTJYS0H+kEh/UtuYm2y5ooHlR2/NZMNWQv1FKoxQLF9oPGeTXch9vw7cHOqlBK2KVXuBk74mkDbnWgwNMjHF1+vB6BvZfD78hMU7eba1vhnWQX5EQ3OLMZJfMnkXRr998U0r5SLm9CsOcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yl7XY7Kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yl7XY7Kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752287393;
	bh=e/lrZek1gp+LSDXuhLPKGtZwet90pnpFnbEhuXv0PH4=;
	h=To:Subject:From:Date:From;
	b=Yl7XY7Kxh1qYJUUrVDaLNurdHmk31i4+GEmjzm3JL1xCruR7Isx+NjH0MPAs4K09k
	 zl0W1IqztVWmUjrbKk7BjSLuFkk6vs2rhFtulgbX3/o2H7hbLtyOjcuYWKN9WNcd1G
	 +DQ2m8IRHvZYEW8tJ2i/cV97OcKNNRvIpFe4jskqRR8+RqfluhUeUwGZ5hRLz0A3eE
	 qpxhr0TBBcT2u4hJuDUBWlGyiLaa8O8/Vq3nfaVizYg1yKJTubMGLUK8dOvBIvZUlg
	 sO9zcKoN8VEDUS3sy+X+slZdQHbcHurYkk+WcruDpnGVEnjorNo6yBfbjjls2yqZGO
	 LpOqyBI//8zEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95645C83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228739359.19629.624169140211835955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f812719eb7455d17cc2e92ab210d80b4c1a18c5036e881b103be573f20fc1b5d
Date: Sat, 12 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752287393
