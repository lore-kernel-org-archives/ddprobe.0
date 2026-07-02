Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D6548C402
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782997114; cv=none; b=ASGUrcI2Lify2VyFyLHg22R8MlVIR48Xjm5M40NNC2LSO+7jv4PfV/E5XK56AFa2+so3BKYogL2q9aDRyOslGpz8VWMr2Lyri51ggjhdhmXXlG33rkL1eG9xKX9oLgCPJUUIlEE6vGe0FLmvumPBWo0Gw5VLLI2v1UCSBrent+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782997114; c=relaxed/simple;
	bh=6qgipn0s7FnQLGyC3nwXQ3LfIFTqu4VX2eqf3boBj4c=;
	h=To:Subject:From:Message-Id:Date; b=Zv47n0Pxwa2q9j/OkrvIToUEcq3KVaqO+azhL8tezVxji0by2dJJQ8s3RWz8hXkVb86NeIsLsbXv3QzVBVeDcSdzQTi6QlnQCuoiLD1F2gs4Picp9mAu7b6QMAQyddKtj6xWBXNbR/JR0E5eeC3awJ1XPnj/r9yN8CXUM34+qYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C98DQ1Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C98DQ1Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA99C2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782997113;
	bh=6qgipn0s7FnQLGyC3nwXQ3LfIFTqu4VX2eqf3boBj4c=;
	h=To:Subject:From:Date:From;
	b=C98DQ1YfbWK9cUdWeGU/BPP4Tm49amp6IftwuY0+tC8MUbddXapxMPfJSZ5C84NgL
	 xylMiIhp2sSTixNozuz4XBD5ZSTK1y/Inz1gOLVhzRLbVtFaEz7TV13HblC5LitDBg
	 sXCS6sN//WjazxTqGLiEckJ9NRQjyBSpw+8/+VH44/szYUZLE0hWP9EJ1VQec599ML
	 qKXF3q8zt5g7lqsv031uXzwSIkwdO+Ro1BiT1XdGBQtoQ9ojKFjRucEqIntsgBEFnA
	 GMFC1rNb1Bayw4yJgb2dBy5dVxG9LE0pHnIf5ZgpGsK+jZmh2jYiWwct54+Yni6iMv
	 eQRRAOIZAQDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A906BC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299711368.32042.7570244590502194130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f77a81183e5949f3d33824d1ff31fa5bc04dd335277f42892822cb9c476ad4
Date: Thu, 02 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782997113
