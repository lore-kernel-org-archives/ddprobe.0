Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384D43E9FE
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785426634; cv=none; b=sUSLdNtKH4U3+Shw/96doAO2YqVbnjtp8YlbKsg8Ekvfn4OnZdKKFjh2qGXkT5jhJGHNawaVCkAmj2n1AYqUW46TjpJ2VdgsQyRCSXtdMT0MYYwNwVfm2BHEMW2tgghxDIIFIHd4+V1t9BqOzTi2o4d2TzhB3b1dCdH/iBSAWgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785426634; c=relaxed/simple;
	bh=PGX39buTwvrvoTW+QxMNCbZ06dwbIDoPJQ/vdAMFLL4=;
	h=To:Subject:From:Message-Id:Date; b=SpNeCUMtTKD6VknGPrfjdxd6xuZ5TnPfgdqjgpzGJdjLP9qIOVHbVzO+pZEs/BFf2PXinML0j86r8qbWuHsm0jg7uZhxIF32jWtyiswEgEj/3dMyK4UMUEGGISGwn6bO5SpveIjPJS+WkNrDUDzTK5D+cMU25cypRByrN5iFQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alv0OihY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alv0OihY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8BCC2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785426633;
	bh=PGX39buTwvrvoTW+QxMNCbZ06dwbIDoPJQ/vdAMFLL4=;
	h=To:Subject:From:Date:From;
	b=alv0OihY1au7wlWiYG9tOa2oahFz+bB48tTTbheO4cQsNnOOQlJyUVEmbDDPRPEoh
	 QBZjKSSFJ5LT1DbQBsA9wNLMgR/90DO23QGrikl8pq4DmlNSaZy/fnKcLUIieosmCk
	 5oWuEuVIBWMIR/j7CmJQu9SwckR9lDbnTBooYFqXVlhPJSOeBC5wdAP2j6EkR0Tx7S
	 28QsNJgjnGC1yNvvImf1BBwppMpwJ5dxoNKj7iboLJFx2fVWybYRnZQUorALsY3esj
	 uFUCESI812J9Kp6RcZFW3JJgYsqx2Vv7jQwkRMSDfggYnJ+dykIjgJDoTKEVuYS38E
	 UpYkTDoQLCEXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB01CC55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542663369.23737.577144567141165168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bd37279e5930992acd12419e631d14c45e03fff7e59b819d18a43e06a2a8bf
Date: Thu, 30 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785426633
