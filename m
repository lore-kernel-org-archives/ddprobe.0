Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5493FFD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780804474; cv=none; b=YsddC4E9ExNANz3l+SlMiczoRAjIlbbGNUvyVszweE4WkSn125RAnHEopXs1kPAGyocaD6P2avx3WOqSUWgfQSET7pSNPlRCC6zZkB8suQkp0siM4gXAHCln8jwZeCk36KC36xLo+TluWa2ILrpzMisED3Lh9DAVGSB8+q77AN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780804474; c=relaxed/simple;
	bh=zn42DQXk64yEE7M1/VPUQ92OTj+QbE1h71Raj1V5ogU=;
	h=To:Subject:From:Message-Id:Date; b=Qk5hZyX/ekZpS4Qpr/QH4lWvoscxZb+k2eKwgx2negsug81lTcNjY60pYyjcG1Cl+mwl0+SLsCWtAVRJTZ4O9+bCtvzjT9woUffRf7l9/bA/bMTHx2qfiRycsiqOvDKycp2RYRvBszp+fhAaTnWoQBs7ENWNhgr9r7L3kaamPf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsObzr6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsObzr6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9252C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780804473;
	bh=zn42DQXk64yEE7M1/VPUQ92OTj+QbE1h71Raj1V5ogU=;
	h=To:Subject:From:Date:From;
	b=KsObzr6o98FrHemURiPNnnxGlAQbka04PAERj9a1vyzz3wVui/tzdzUhINL4JfT18
	 Bde/Fe9TQ59+qJzN4bdH5+o8rM/USZVAFbd3lmd7mJLIL4ba+hJkLMT8rlAQ9wxY5W
	 GzxAHipxAmaG8JBjpy0l7uzG5mg1gYBlOH1qyHDzjjxN5KwsfCLOTUChM/oV/EreaO
	 /c5hC94PtB7vC8wSOmdBW3sRVJy1xfMUCKxb2oBfcTz6hNPU+3tSnicFp1RZpnSPF2
	 gm2GCxZaqkngHjKWv2SXugpI+qZYcZkxHytlGt/PhYO6bbePSoCJpUA9sxHsM0EvBC
	 hTqSyuHUlFrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B083DCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080447369.26312.16864482137492563742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fd40eff918f22110ddaae9fb58cde5a7fb4dcd7e069b1d117d4114d2d2600b
Date: Sun, 07 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780804473
