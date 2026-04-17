Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76C63CB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776385054; cv=none; b=ey1kucofVAbjA+cchZOuv2nyghNImLmNtEBz4f8aAzFpSH9McXd8Qy8ovrb1ar5FzbMCt1Reesb7ylGCIvEIl92HZCdqEw32kbxloVeM8W6KNKktEC22irN8d4SqfKED9BbMNYdw2MPJ8pMppbrVVmBAkZLGhoQcN15IVF8ybzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776385054; c=relaxed/simple;
	bh=DOpmg8AaJJxzVoq8Vdzk7rVGJMUUrLrrYKccBDcy8EU=;
	h=To:Subject:From:Message-Id:Date; b=rGOp7+JmZkV+D1noujgyufStSPVdpzn+33VW4vC/tDsaSmXF0CrhU19bieMW74/9DUj9GK6lnYsMtVVgrMP8G1wTSkG2StPRw1Q0npDi9DxdDOFVgIyooAYfbgB4rciFU34nM9EC2L9MMpTvFw8Xs+11+cegGzF7rOWzhiJCae4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4PkpCb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4PkpCb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF26C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776385053;
	bh=DOpmg8AaJJxzVoq8Vdzk7rVGJMUUrLrrYKccBDcy8EU=;
	h=To:Subject:From:Date:From;
	b=t4PkpCb9yIu2wWVc/YE6Kal03pB9xm4TeULuyYP1kfL+LFqNWGNgT3XaSzbz1ddRa
	 jkQVSAOcrEGpFCHPjgnashdqzLOUd+S4LK8wt8Es1xtnV0EXP3ez0yAy70I8VhsZAX
	 XQ5/ja7Y/aR4aWfJIps9aX/QmD/mhe+whl2OgOtpLGgAV6aHMMyS1KDMIE4jzYImRp
	 AXQUKTiFilIyK4jbMTxNGXsfv5uxdtaUZGBEvlR0RoPTxws5q3XQTLY2t8G7j01ZLd
	 k3Z/tORt+AWBHWKlWa0KEjIyl2Vht1FX5s4DsAABBv1dKPn9ie0vxrZiPS7WUAd9j3
	 tktBFK/+L51eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9ECF8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638505368.21471.6213458617103777772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679c0ef28a4d7ace6da6f09de7f614479679c237efefa5341fb1853510ecadd2
Date: Fri, 17 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776385053
