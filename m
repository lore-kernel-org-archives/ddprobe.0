Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D5405F7
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769358834; cv=none; b=RpJPQL3oDRiC3amwQ+LXuQoQPPI0HPpQeRZyyuRwOMi+rtQBPfb3auYApq9a2DZVs5Cwg5D7WZQpiknaXO48/vxAdCp3c677rUyuyuA1DEWEsHnKkEGR4BCPDPFeBJ30QpLlklz6LPzTz7HcLCkqMlET9SN6RAPZpmUmg/MIfzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769358834; c=relaxed/simple;
	bh=9GVmAMO3wIBn2uBcGV4QpUGizn5FqCvBk056jLsLOK4=;
	h=To:Subject:From:Message-Id:Date; b=lIIDeUA1g8+wtwV6U2X9R/uojePdhGXKibdfdRFO4z82YP8ejCs+ApyR3z6qBNI4dL2KCAYc3N+MVN0uIjQhtgTR2iXfOvoaU/tExu0hAOSdrFxMPtfQaCbtNS2QYQGQwr1wXzFTJEG1rf9J+ntS/D+rwLYuyPsaS6NG8rJm8j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lI1YaivR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lI1YaivR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C76EC19421
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769358833;
	bh=9GVmAMO3wIBn2uBcGV4QpUGizn5FqCvBk056jLsLOK4=;
	h=To:Subject:From:Date:From;
	b=lI1YaivRX0oPgipzdC6wHgm3R9d68WAxtEK6jkLaJgpO8nD7WsQt3qkndWnsc28jP
	 Ndj0qN3Eykl31oYdwCbtnsQcA+T39FoiA62KTp/KUHl2tO8GNH/8pWUzUVNSIsE75A
	 MXbs5XeI1OqLkbrRTp8Ojo1vvnyjFgkjcS9x3vvp8NExkQ5Vcdp4Qy00LlErORNTU4
	 dYUPbEGzgTfTINbiA1re9UlngxrcsHHeg3fX/jrqGaYOXJXJmGlQC4Ba44G0NuWSc3
	 gFr+XvdzO9yqTFw3N6+aTyjd7WKelxs5MJdzCcrrig/pDoNWWqfzwglMzGEpdkl9NP
	 wTFZ6P+J7kw6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFFE63CAB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935883357.14658.7749339308940886336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c5ca400ad01d2d6235bc9199d1629fe6460367538d6f7e8db6b23dcd8a040a
Date: Sun, 25 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769358833
