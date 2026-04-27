Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400393D3337
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777318054; cv=none; b=DUVRPhTxAbQCKpGLMXvJwDPpLvN5izk936LHgyXkwPsbV1+ABN17wkj7a9GJSFZGYFBoxGpLc6zReQ9qeVCwoJjjgFT5+t9cGe3TA80m6//Y+o9J+Ors/NhmP1weocztmEo/+jXvxnaFtftKsCqHtxwpMCdMZUjrtdzH4pD0YVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777318054; c=relaxed/simple;
	bh=ckwWmXa1r8y5cET990OWv9LTu6LoX/KCOW18+sSwTYE=;
	h=To:Subject:From:Message-Id:Date; b=Zkdwfk2iUgShBHZsiP75p2qBHvmtCfybJR6pwR5ggAVdNFYaDRkCuoqdOqx8gndhaIIpeD6KCPhKwQHWhAZigNwpnXS/ZM9QVqP39Dq4z4/zSS+IKkBnpQuePPoVHCaXD+WuMhxMS0S7TOLTc99u1t+nnCvgLEgZglnTy9Zo1Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppyYynHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppyYynHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB295C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777318053;
	bh=ckwWmXa1r8y5cET990OWv9LTu6LoX/KCOW18+sSwTYE=;
	h=To:Subject:From:Date:From;
	b=ppyYynHgNZ1P2EPu88sO9JTi9uEAr6GrfoTdTus93/lexd7BjXeMee7CsLh5rc6cD
	 yXHsb+dA8x63+fQW7Inw6JQQKZr/Ec4uoMwEHCCPqLVnPMNs60cP6z2+60SfSZINfR
	 skarDjIIUR0w71x91pldLeW6eFT2aLD6hGhL+oApO5Gmv9yvfbxqEek8SkFddZsJ98
	 5hm0pHGu5AfwC7SCamYdZEpToxcMUGJPdjOcS0pfplJ4PKCEoY3oO9e+n4AOiBx8jK
	 h8MM7kaY26JJFAicFyZKOcZ5e2TMWHAIGNj2JMjtoABaj/hZUAFfmgE+JWhlZxrrg0
	 0X8ZSimE9cfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8FFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731805368.29393.4525985003704873625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e5c616524769f13d7309f1a92a1a50a2f78b89e8f779cb60027e79b59a7448
Date: Mon, 27 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777318053
