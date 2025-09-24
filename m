Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C101CD531
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758714593; cv=none; b=Ke3qfhdYFI+nrP+zZJT9Jc052OdButBYOtdrLssrDjRueZqzjXoe26orFD1V69456a2gxuSmcEs3bRrTbFTLylx897CJ9djRmR0Fm8xtqnhbf7JxywZM0Lbae61DDTXmQPwRIANAmA5uUFjQIjB3i6IFottrtvQGObPRpDj7VrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758714593; c=relaxed/simple;
	bh=WZ0iQ4vIYGUP44jnMwP2naeH/tljZyORAjJFxMBY/UQ=;
	h=To:Subject:From:Message-Id:Date; b=EqIIENZ8XC1ebviRvnVVS8POqrvXLGWFh/YyiO5zquYiT6k/o0UiyOHcl+VMuABKUd8DAXkpyQiXcpu/SHgKPhu+Bu4cd5mUs6zO3QhNz6Xj2rrnRQL5G/deWISZBvrcc8i69hsEkBRPWVUxV4ej2XkthJPHUMJn3xxCmeXenBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ78Qk7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ78Qk7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC6AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758714593;
	bh=WZ0iQ4vIYGUP44jnMwP2naeH/tljZyORAjJFxMBY/UQ=;
	h=To:Subject:From:Date:From;
	b=tQ78Qk7gLNaE0Q872U5fWB+eNM4jvt1ia15nYITSaja+PtAdLYev7gbYM5EDEa1Hq
	 Q5Sp+i812R9cxviAnM5Qc6umaiSeZ7Yyg4LrtcI7062Ji36/B7bnoIb6MK8na/l/4N
	 Zn4HElTPaCGS6DRzMHOjzJfcWU4AXzyVxd5Hdavn1vs9BcUZXZeOKWYInv0b86yeP1
	 okZpoOXid/aJhWmuRTjnjAQeCdBO8KgYGy/pOUKs3jOUU0GthFbMoO1ryX3Gtjscu1
	 vgVXsbjoG+aA9odbS8ASwT4Ile68Wms+1PgJ0G0H2egluoTczyKGi0bfAECcIC2bBw
	 APOBWPetMhVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78ACAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871459357.12723.12843774682384047794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28861ed83e698634eb68e3a7650584dec377333645c31677af6da8279f3a7558
Date: Wed, 24 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758714593
