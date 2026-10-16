Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B91A3B83F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792142434; cv=none; b=TzxstE66l80t3WsGSRmP1cIAPxLhe5L/alyLqKTnA9rnstKGNciEOUmsrmhq0M+vq/+50prg56qzO+epwBkUIpbs3DRXy2HBs59dycTdnR7Y63ZWbIbD4L06l1ws6WWPfgq+wHb1OSK8TxAQiqPIaYsHbQas4NyGB00QIzqA1q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792142434; c=relaxed/simple;
	bh=ofIK6AiwZ695rEwUdFuq1ifTJtD2Nf04uHuG2ShHA2U=;
	h=To:Subject:From:Message-Id:Date; b=ryh7cAvGZotmDI2zEL/jaAYag5Ijqx3Aj6iSCb/8+VC5yfNWE5pLZX8um/aOCYrdUSSLz27mfyqzV/BnaULOIhHn3NgjAZByuEEmadxD1VUv4vBpVsbCjDFdB/Z8y6Xji0i2GIeCXoQmy4XsBm+yl9u7nKmYbe2eio/IVzRGRFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSbSI2za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSbSI2za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC603C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792142433;
	bh=ofIK6AiwZ695rEwUdFuq1ifTJtD2Nf04uHuG2ShHA2U=;
	h=To:Subject:From:Date:From;
	b=rSbSI2zaZM2+ZFSQqEr+AZIY1/ibTinm4nawMF0FS47D64a2qCcEQPhzX0dOLDZ7B
	 n3IdHYpTFzwcSYQCQ4A3XisvRG/husiVUL32yf1Tlh9kkTlOQPcauQwqvYF12u9myY
	 kLL3Y6RgvPYKA8gXMih/4zMSbsDkIKSq5JHVAqV3vkE/YZzqyLsVhgGnciQJ5q9q2z
	 0K0OeGP/P6AiGWSeAJ8cl0UKTs8KNk6DqAKAUV6ivO7h181eXfNGl2o9eXxFoFs1Po
	 nEXww/EgqKAnvg7t46vDPNO2ipDVxvht5NxZjUBMcNxnlHpqjDqKB8OpbRT+JKUGlp
	 k9NaYDAQxAuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E5CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214243369.31780.17184798916504085790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0b10e5b39f930b6364f63881d88362c1afcc21ff91c4c109ec411aa98d03b1
Date: Fri, 16 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792142433
