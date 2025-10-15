Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E173376A8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760547594; cv=none; b=R2y8QbZGfaQdrnB++kVbmzMRQnQtvp3DQLtmCuW4cCNmJ3oGp1t+Ro74Og1jOE2JcdUqKp9LHlyVUvjvTr1LmRrAdd0s27h5FtajgSHnFTHso3szipEIauC1cnm/sBR2yeyHGvZiYy8ovCq+ZisGDSK7Qp/zdXVmszy8G0dK10E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760547594; c=relaxed/simple;
	bh=PEwl42SofCFBJAadgani9imFnPLSfiQV1yF2ns67qNA=;
	h=To:Subject:From:Message-Id:Date; b=WkR1qkZeSP+B5uvyxXg6hX8R8FmG0e5XOSRUSF1w5nxgc/7eVM3wAixZifYNmSIfLbpT9VV3PTg51TIgxJ1siEnzwQO460syqeIkp9cd9Pw44iMGfOsGuxjmsmJnTUM/efOcC7AmW6ABw6uDhXv/Mg6XYHmLLh3NQCQ3/WTiHdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpq+D0dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpq+D0dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CD9C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760547593;
	bh=PEwl42SofCFBJAadgani9imFnPLSfiQV1yF2ns67qNA=;
	h=To:Subject:From:Date:From;
	b=gpq+D0dqZoHUR6G898QTOxXcNDBzQ99FjKIaq0fO1yaQ6KELcmvWU7nyZWFWX1IT+
	 rOXOS+XaSQgjhPeuu4O57JfBN0ea0rZwCabvnfkHt9tMxdLPQmknbq0qp2U97wqGmH
	 +9ODgg/lfvE11CpSSMQhNhM5zkYbu7ZwOmvBtxXtaTUG2F5sb1+uSpx8RXb7/PJu96
	 oq+vAv2OadomTbU8TEsoIyO2IMBrIt8PhzryJROnI3I+wcfxxMd9VzG/AGnUi08XzF
	 UO531iVixO77w1m19V5mhDVTuP0rseB3FaqBFMSpD30OPjdpGacr2pjzc92UnXQx+J
	 6nFeOjyF+MF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C3CCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054759358.24234.14547953763110322792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06720a633d22b698090a7976a59d7cd30727275026be3a7910c6f33d6278354
Date: Wed, 15 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760547593
