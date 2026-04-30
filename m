Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A2E2773F9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777574854; cv=none; b=djeGqnhWX64wShu9M53n+1SULzU03faVeTdojhjdtsBdT0SOSyI/CiVmYYPqglYWZjn2ATcoR7KIjYRNvOdT8x/bWrapI2tta6ow5odMus8a/WI092vEGLjDqVCquS8Q0sLQtKa3rCT/sne08NJw9a/OHfiB2zXGetr5wubjczk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777574854; c=relaxed/simple;
	bh=YvX7UbmOyhx6aBFbj5UMBUMq/2MQ6ERvGkhjjBRYTUY=;
	h=To:Subject:From:Message-Id:Date; b=NgUZ+BOjDHkHebEE7oskT4y17Mcr2xA1+LFlIH0L+Gta5tS/e30+iw6ltCcHVFvP5CBSlpZdu743cV/D7u7RIJQIulZISGR4a5cAWOvMqfKNEyeThQB/EXGV0zlNIhg2ZL3f0MOU+zK20Ya+RapMizmyoV71ig2lKeDXc9u3JlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mst5Xzk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mst5Xzk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD29BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777574853;
	bh=YvX7UbmOyhx6aBFbj5UMBUMq/2MQ6ERvGkhjjBRYTUY=;
	h=To:Subject:From:Date:From;
	b=Mst5Xzk9PQTajGGgwgbQF4Aan5qfMi1z8pA+MUEcmEGCWPpbS0yQJo7sE820xqFP/
	 lvz5mSqE5qtOSvcxKaxHcttjKa8Aaf5TE0EnCfi+lMShkzE84HbFG+yhias1SZMVan
	 kuWi0hE/ACFtZ/+pxBf/tYkPOCDcPy0pdllE5npzBoda64N3pCLmgzAJxfAIcqu7/g
	 Zik1vW6jMhgNmfQV4bKQg572v55NC9qYgbtTpAJIfgpUSx8SE8aEse5zmnauM+l9QQ
	 YZD/r8h9ZbUjLD1/bw7j5L1OxwCCxZdDnmpU3qHWbBCTP9yU6dz4dS3McL2MI26vX3
	 tP/ag0svQD5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A73CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757485368.19238.8332320166770713401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326fbaa9ef5f99494abbfc957fe3dc06424c796230bf76b5ae22cae7fa8a82d6
Date: Thu, 30 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777574853
