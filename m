Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309DC3DC4D8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789537834; cv=none; b=CrHygnMRvIgZbt7qVuRK/ZsYD1eylykGhuZx5QLVYUXygsOZ9hnWSgN8owKwMyYTiTX5cKCMQIeKFtKo8mDVf47fNSXrhYMu+hvnEP9iZmOj2ZKowxvEQJWOOdtoF1yj1mQzdTVCnbjWipzkysvqG+lvqunDLZJe+H9j35thQso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789537834; c=relaxed/simple;
	bh=jIBl1WQ2QTcE03+0cYs/nRWzKTuTq0M0pAAwI264kaE=;
	h=To:Subject:From:Message-Id:Date; b=PpEl5H07MApCw6jhS9VY8I7fp8JhuEfd1buY/cqyvbu4WjyqBu0GafD0JkOghbyGXF1Ehdrm7GD/KtzMn1qN6S7pXGX6tif5A82qT2wW07wEhXdQ9NGjqf1tg9ubst1Gds/ue9pY15Vm5jjn6y9yAXdyFRQeNKOkYhzPtQ/wfs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3Zy171n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3Zy171n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22EBC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789537833;
	bh=jIBl1WQ2QTcE03+0cYs/nRWzKTuTq0M0pAAwI264kaE=;
	h=To:Subject:From:Date:From;
	b=t3Zy171ncrqfkt4/DG16lQDPMJ2bzP2uquCyFbeP00ztsnbBiP5QK12RtXsMhKP7c
	 iWAfL0xSqtuu4udZHP7XEsunGg1CidNf+/6xNNbGNgCt6mFnSeIGDJQ3rZlKXmO0ue
	 mMrOeHgVqFdSF7dLOyKoUTJlrCwvsHfaMXxGYB8+RFtqxyjkhPH7cGDiXDuUMzSTn/
	 IcGSHwcT0+H876hGnp0gvZB8wFo2kjmY0KEOzcT1oIwaOuJpFSYN0CkpHyjYLM5Aoc
	 18cSjiC8B1Gsb9Nr+ZGLcXKYqh82MsgmmgbnkcqpbyRrp5vB0ENPS/5uv+AzJT8qe3
	 Hkkvb3jmAl32g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD044C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953783370.25826.12052334317236035082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2746ba826a7b85a63184e4569ed1ec123c4693990e9cb8b7da5897ad05fcbb3a
Date: Wed, 16 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789537833
