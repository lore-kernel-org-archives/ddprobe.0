Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7802B9AF
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724214954; cv=none; b=DSySm3tUh0QYtnfLAO+J4wfCj5HpwhRsUzNm8kf+OqpNQO3/gskpwIZAiFsvlA/bYjQvC6ZvsuhrM3CcFOkwohrlfDbEFSrahYJIb+ptq3d7/ZMu0Uj60tmIlaxkDripb60vxokdbRPBG1BBu07YHorIcGFfDuHX9E1qCW1vHRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724214954; c=relaxed/simple;
	bh=U4aDNoWQiWoxeyBFNx9fD9qBmSAtJkUZMPvjZG5iec4=;
	h=To:Subject:From:Message-Id:Date; b=fmtw5z1HYRnIwLmgMxgquH086/OndZkGxiJlqz7w114SRxT7gZ19JmZwfCDNodlHwGPYfJHddT2AgEPMkxrSUkbIeGIPKHOFYSpkUFk8OpPNdO4e6+iDwAlzY8fXK6+dwqyS0Wq7WEzTgbgmaZ0bwOjhqUNAlAu+7kklSIQ9gFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfbNjrFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfbNjrFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EADC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724214953;
	bh=U4aDNoWQiWoxeyBFNx9fD9qBmSAtJkUZMPvjZG5iec4=;
	h=To:Subject:From:Date:From;
	b=JfbNjrFIx/xLYZ+a3AJbgTrZOuQtPCvzuLjvb9FpZoCZVb/2S92DSOOuwGbLHUokQ
	 VWUwyT/1hWECUAsgNZlhOuKlgE1eIFe8dpiI/ugXWubtx22sp5f1eoFHUs8a7V8TrH
	 jcMv5EHyZXgfBEcygU/S/qzPUV3JXS37rPoDxUVwAk0cqKLo7XPXXJLKGxggtuJzyZ
	 HvGGrMV2O4+pSxcHl/Bd3dV1ZOIerYpcp+1ZyF3mPcrUJOyNq0XB60t6mbIyguoYZd
	 jl4TGFg44yai/H4OOkixUPZ2q71WXGIiq9LV2r5KQD6IiqR0BL9SoNlnfdnr8ZhEXs
	 mEKGbkhTUA7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5FFC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421495366.19236.4529895286575144976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd2cc9a436ccf11e23b95d26a965d15663f8adf1bf0193a19bef04d2c92c2de
Date: Wed, 21 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724214953
