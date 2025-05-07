Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C7D143C61
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746583793; cv=none; b=eB18saGyOMSPIhyBkEt/Mo36ZEMKZFwW7ClRt/vJZ3A/iJRMGGz123LjaFPcJ6x/ndmX5pmRMV5Yj/k5vEn6T4dEpOn0XX8vvpjCe4XSAuLOwgTRUpatV/i00Fa/AaZPfbBu9+giQz6tZnIx0EBRISnrGGFnKLCxGPTtnonTuWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746583793; c=relaxed/simple;
	bh=kLvi5BlqiZzL5m6LqD1zqRqH+a01YOt4XmSYC3aPviU=;
	h=To:Subject:From:Message-Id:Date; b=Qe+caBfhaVVP0NN1pQPeOaU/35Ci/1TwJKmucrE03tvzpENXKUHqYjAWlQg9Tx1omNin1d885yAULGFLFdL9S7h5nv56PzkR4ghmjc+yQbJDaVvH2O3FlDsiOIvvs6fgYHE+HPEkm5UmAfXQtY4RuBzsSAfyTuGuWAQ/p5hnlew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ap9WsKwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ap9WsKwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9D1C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746583793;
	bh=kLvi5BlqiZzL5m6LqD1zqRqH+a01YOt4XmSYC3aPviU=;
	h=To:Subject:From:Date:From;
	b=Ap9WsKwS62ovHWFvp6j0y1PKFuKX/QQ5wxxs6Wr6ulaJ0ylDW4fElDiPqNg71gNHX
	 rHtw8fn8aV8B6OWRKvvgIZplgo3ZET8zjU5+bqQNuAxVz6X9MYd6s9aKMYnDi3/X3e
	 mpFO2Fha+gX1/YagHyVLqhgNYjFUMAEP6C5ICyTfy7rY/gAk4xGKI9G8/wnUKPo0nv
	 gQcknPgcjt4V0teTT6B24vLslrmynXdNtn95JNTueeb+jXtnnZdJwI5bjrGcAIAWEz
	 x0OvitHph+J+CJQvLdwPYeuspFbR2PekA7g1AomUi2KQR8ebFNvTmTIIn1AFVSvEJ5
	 o4Ht3/Etfyg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD8C3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658379357.12525.4707236251515847551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e8ac6178fc109dbde1d9a7664a534c20d865cb09ac9eba510932e04a5658dc
Date: Wed, 07 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746583793
