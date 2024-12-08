Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C45A46B8
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733694954; cv=none; b=Zp1a5Jjk/UCckoHbpXJ2eJCgFJVI9/0CxbDXLswUZl5jiExlgbU2cK+h512OfHwRRuMGUdDkyXkD8waH3p0W7CScRJ8HfRPVfkmfpbL4YyeOv/RVK8bBHbsVh/BMfUNnzmAoi1RosaVd5BDkEUAyw5mItbnvppYzj+0bzSRhJcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733694954; c=relaxed/simple;
	bh=UPeuMhXwW6Ec6mLX5RRkuyZ4g2lnViqv0/Vw1qeP+s8=;
	h=To:Subject:From:Message-Id:Date; b=YEH7jacsuqPpHzCwGlz7De4Ccv/anJ3ZBtvBCQHTdh22XJ0YLxrD40pVgxxP92CcajiDgmck5G1Yy1tsATA936/VZpYHLFLOX0X8s9pnQ1zBb/MtBY46ZSJvnb+uiWeJxzQtliwbQn5JNjAILqKxEXkM1YSmBqdhEm28OS+JN0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn8idiB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn8idiB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEABCC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733694953;
	bh=UPeuMhXwW6Ec6mLX5RRkuyZ4g2lnViqv0/Vw1qeP+s8=;
	h=To:Subject:From:Date:From;
	b=Xn8idiB4rLmeQytlgNWLXcQoLrOW1huHOfsPf84ThtldXRMyKpCOwx1QG58Nft3wC
	 /0CXXPUsFdjPRBiEh1QreF7d/PzEGb8EkHqKa5hGtiTxkkAHM14zHMk9jZVFA7rrdj
	 KRZxY1jbTiX7jSlybDAKoAD4USFJPlRThqW+vGCBt+AbHAX2/EAF0/zC48lDLfdw+6
	 8BSibWuhVorxLRz3aFj2AGvW7gTUngkeD1Gw+hd/v3lNYjNFq+14O7mxMqj/gMkwAe
	 k2NDWiQLNvEXq+6cwJTrGpfsHJ8f+8QNl6R8RaTMJlvgMnjYhfdDPZ3EYHkRnjrC2D
	 27tcaKpYw7NKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96949E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369495359.14819.14939497027360650604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90de503cd0b6a4cf52c0f4f665585bcfd2b70b8fbbfd355afc96d5539ababac
Date: Sun, 08 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733694953
