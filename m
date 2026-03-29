Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C811DEFE8
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774794294; cv=none; b=TTDlvpSC/3jl59eWnfoM0xU9JfkPDwe6Hsf7wyxDIFXDYQTMdD4aSyx5aE9dMUnVlyKjUJ7o3uh6BrXpGkc0crJggMhHBfwM2J137Y2dGulAtIp8BgrAoDhHq278+67Mw0Ptep88MkIy02J1apBaIn8qHIEhnymduP5xzbo8R74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774794294; c=relaxed/simple;
	bh=yqxSuBSj/gOpltKEDAOjoNVHW1maZ+rv/YwB28WlIho=;
	h=To:Subject:From:Message-Id:Date; b=agLG4ThhseOBrc/2yaUb3MlazL+InioStH3MohM2tdEYXiJu7MbPuAIqGsmKwbhIxj4FXhYGLZ8rN3fm6FO0N1Q/20a5dgvjt0o1+qG71w7IzAH9aYwJWO6rbqlCqkdBnb8UlmJYEG6dNLDPn25YAZKaGwTxWZdALp6q0sR4Tf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7Afgmce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7Afgmce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5FFC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774794293;
	bh=yqxSuBSj/gOpltKEDAOjoNVHW1maZ+rv/YwB28WlIho=;
	h=To:Subject:From:Date:From;
	b=C7AfgmceVuoVvcxXzfxETrnqcl/5jtmmajZyxMCGTamzBKA1IC4PyhaX4VMQNE4su
	 HgpLL2Dcr3ULD3OQgUz0MPaUzDtxPMy5AThRTwbN76PoYbG8DC40tovgMeuGyXnXnx
	 j0vgiyTtQS7b85yPdnwgwQU9n+PjcLVyfgzx75tFUwu6CPBy7LlLf1J1zoKLMvEKKm
	 NFIBB95xnoB6ENv8rGcG4uuL7YmipuFdn2omF4YTEm732V/5lwKnOve1W1DoAw8Kfl
	 4IsFn2iR5RJ3n0URaNXo9DSES9wjIa0TMXjSTalNn5VPCh4Zd3Hv7e7S9nFCXkEBnU
	 RVAux6A8dY0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94593F3D60A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479429358.10953.7052600152658856952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbd74506b6f3b742d213ad0493cace530a66edeadda2c431a4473fbb13d7688
Date: Sun, 29 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774794293
