Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230DA2264CD
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768666434; cv=none; b=QDed92n5ySyXo9LlKtDyu7h+///Quo5RyeN4sle74f69zUgVRPnrWs+vKnU9F/CZG/EPzp+r/sCLCKmK9HerX+46jtxB6i61hk/TWepJAfKY1mk52JKTvYTZkxJbNwYAcgpH10cKLSTDqHzANcwTuhZeWjM7kgnpMGZrBkKcfok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768666434; c=relaxed/simple;
	bh=mXn7gxrUFCP+ZnmbWNFmPCEkuBpnY1xPDim7TpmAQ4c=;
	h=To:Subject:From:Message-Id:Date; b=RclAZI9ZucyVdZJ+lZ99UtMdRSdk/eoD2Kq+KZTB4hqkCBRX5Ze7A5rLB1kN6tGsXGOiYN+j7XFiLP0OM1HNaCEJD563k8bsedA59ZwaMbMskCTtUkXbm8jH8DkTW9CPU/+L9gy+vLItmIuvYZ0+XyvhUFLk/OPKB1r4Z6qII2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkuYUgTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkuYUgTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8069C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768666433;
	bh=mXn7gxrUFCP+ZnmbWNFmPCEkuBpnY1xPDim7TpmAQ4c=;
	h=To:Subject:From:Date:From;
	b=FkuYUgTwiYdM3QfjsnDSOkxOpw9ClczsthOlzhlmKipXOL9QLhcPs1c72Ql6PYZw2
	 Sk0owpYfZtN3Xj9IRQbuPMrkX2KrX5RJldSihuYQyvqA+YLl4oJSo11Dp+UvRap1G3
	 aeKeY9IVF4c+hjBop/ZcHLVRe+SeaX3W4SNrXN60nboYA4+frAwExAbjUkBncy7Er/
	 NI3+sY2z9xYCm+iAIvf0MsFS4tTWLyco2vQpuV75AKef3wt0/CPEmU6p0GJTeslwpL
	 xeqt3P8gBdugp8Hm3wJDptR6r/JSQ7P+156+GASjyEYxoh++9ic7PPpxMQT2gGg/Pw
	 wqC1Y2fA9F6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B28C98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866643358.19757.14824652300623650808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc254998b23bfdebd3562d69122ba17f93a54888b60d1e6e14079c084b5151d
Date: Sat, 17 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768666433
