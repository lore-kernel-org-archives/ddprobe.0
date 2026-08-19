Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74132EB856
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787147434; cv=none; b=rApdLugptRbGOBun+FOSaKkgPzX63FDZGWfOIgkO14Z/hU2K/47bOn22G2CypeL24dWg5UTGHH2JdGNRkQTKbd4Di7twdg/0TgqbNAOwDFncMAN6BkJ3xIytJzDdVJ7Uq9AHFMKL58B+oW2RJ28V42fJbqkSsJWV3qLSfPvaQAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787147434; c=relaxed/simple;
	bh=+bASyzctboDmVm3+VhGaEMoU7nHhN8GKhksuYdW3kmU=;
	h=To:Subject:From:Message-Id:Date; b=JQdLx5nCggXb6GSfKq7mYl6KzYrr3Vt/lVUOomsgTBSAds48Wb9pboieG5ljLzcz7333eAdBWJruTOtfl5FH+cUx638mOQCJ74425/K5a+uaDBMGGL/omBpR/obTI6YkzhqI55jFD0PHpg0WBYnkHBzfqvVS9mTlTk1D4+P9J+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6yayvr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6yayvr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAD8C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787147433;
	bh=+bASyzctboDmVm3+VhGaEMoU7nHhN8GKhksuYdW3kmU=;
	h=To:Subject:From:Date:From;
	b=U6yayvr4cO0p670Uy88FAHsa+qha6gRaz1WUtKDdwnamcStjngEvNs7E+jd4EsKjS
	 LdIB7rxGE55p+KPbRtIDn19R82bOPtL+6G/IoeRTSoJDSlCBN92q6fpUYn0EYJZvmx
	 p8GrP0TFMlPvUuyfbu6ueXL2DuKZNgYJfvR3B/57AZEc32S9WO1p+xpxnXmy5j/4hC
	 anyEKkewPFgGnCv3hOp2Ib0mS+DXKKDBtwTrk4ilYa4+zsD4FKFMdYSJLtsYQTVQMd
	 FJbM0OZQjftFjVf2PJt4lW+OQp+t19NOzGe3lJtBOcs4CmHaPL7h7GkAoy2LscjUVU
	 ZOpT12CLxw0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC49AC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714743369.11867.7980581159938854124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26655b55b482ff853f9720859746eb6a53857e1aeacdc89bdec10d72dd76f982
Date: Wed, 19 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787147433
