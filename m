Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F88D2D321A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763686314; cv=none; b=oxk1rMPaT3MyJ+Rd2IrH6SCmJYIm+t+SrZvDwKA8o8GlMbyfMEpA4Yi2JrbapwYxyra6rltcPpuuKV5hKSAyZJJtNDRx6ZdnFNrFTf3aKDIt+qaBLwNQyx5vDWlqCLp2aKs3BjYAZBylBeXRmSUivpxfC1iVm4CT0/KMUmOLd3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763686314; c=relaxed/simple;
	bh=6JfuETJ2QwNKFdS6WS/QyiKAMrjltYOt7SfaXz+foqs=;
	h=To:Subject:From:Message-Id:Date; b=Mvptm5LU3yrjRF5WCyUV4JIXM7rdMeBIHV6qs23JmGEG4chOWYHh9g88RmSs+HlLCYV7td+7KdIxDex90TJXygTe7lYyud/K+hKv2a5p9pKy2xmUpLGhrVBWXwW3ziXXmVUKWZHyASTqn9BDj2r19vUC50hTH/sE7xz/BKdkWUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAQmHMBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAQmHMBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A948CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763686313;
	bh=6JfuETJ2QwNKFdS6WS/QyiKAMrjltYOt7SfaXz+foqs=;
	h=To:Subject:From:Date:From;
	b=jAQmHMBoVatb8lI/+0nGKpD+p1ToY60KN97tZpkZ9Du3LkOlpgiwZR8+mKfKLzslX
	 RG9z3xYxJee/2eRMFn63NRf/9YPmOFnJWkkUtDDyd6rNUr7gxDioD51BqnY5XEdwzz
	 K2ZIde3E6Mt08GO8C/NZF4/ClQtg6n3iy6rT7D3nYaBW0083zxPUr7IqXLcykLOsE0
	 J5ZFh7mySrJ/THGOpYOHGlmDPX3wHBt0xaLvlc4NIz+lDeuu5f/Jnzh/yL8iFOYqxQ
	 5z+fPZJleHyEnirED7Jq+5FWXL8O+7mHQAUtTHg8Unx1FLEkF73bmvIk7aNUM7lYCN
	 KOWXtR8IB+s6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A591CFA464
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368631359.16078.8383176163834287165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99408ababc5f2b156ffe492fa000e321cca82a95c3cf48a82d7901eabf24d10a
Date: Fri, 21 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763686313
