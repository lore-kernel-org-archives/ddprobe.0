Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E023F23CC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791800434; cv=none; b=dDY5OpsyaCxs3gjAOBBZbser4nuyz/2Egw56oZgcMine/RZqAYPglV+L0uyR4qygeujh1HPZvKrOJ0POZ4jVzhf2b794Xy3L2b5OUeUCRJXuZb08BEVPSRaO5k1A0LI2VQYrkhKdrv3uiZMAJ11iEnRM7ViPl0F3QeZX9MM8AM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791800434; c=relaxed/simple;
	bh=0QpK/awe51FBUF2yErGs5T+us9J43h6x/ityTQylaYU=;
	h=To:Subject:From:Message-Id:Date; b=RSuR8LDbdnYq24NpPrNVyl3/HbdiCIulhqLuxs5s7qloICGF+Vi0YlIv8/bSQyx2/PRX2NdtiuiPWU+Qd+eutPKIgmzu7gHQeD9gQcDwzI5yNvmKVipcPI3axJ9WcSk/jfOGrTAmUqXct78NPehRmzHyFaWyKYtAWCVi+4pgY1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho55bKea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho55bKea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE0CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791800433;
	bh=0QpK/awe51FBUF2yErGs5T+us9J43h6x/ityTQylaYU=;
	h=To:Subject:From:Date:From;
	b=ho55bKeaeZOrGLimYsHlrZqNybX31Fv2g0/14WfZZviR1/U6HXrDVz/zhQFYcOiEH
	 o/HL/tZNhHjmTkoYeMQSnPmw/sPR2DWDIBQuDpmhfLwRCVEesgC3dQ5xkqwvD/xhW0
	 hu2Er+k7wIx8d3itkvEGhfH1fP1MY+yTFfOFrr/0JkFctVz4PvrLAhqewtW+9TT4a6
	 3msDpbMLAI0g0KMLhHOTnZENTUTUQcH6De7EDQiJxsi6e2QJT+3S4EeHuufEzZGx4v
	 sgEuSQWGt7kpl4tc+ft5QIa3unq+lsslxJJ7jN5OLQbM13k8OnPUYJwrGwz35ejYKV
	 5KMQyM1m/Yh+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A2CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180043368.26935.18418287730105919757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c218236d7f97da24af67c123ecc8f741cccb4c05cc4834535e4ae6ebce169b0
Date: Mon, 12 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791800433
