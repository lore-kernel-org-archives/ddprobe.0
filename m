Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402611AD41F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742984394; cv=none; b=HYJ9tkx1/2I6w3sxNjxPMePIlijqVJ4lZYlS/HFCRWyCHzJEO3lEgwlpeEYjB5/6ppIWWdKKjCpi2AzuzXZqSsylZ8mgDiPyDA3jXcc1F86opyBfKj6+T852RKOTv8Bm6caSM/T3pliCXhwMBydPF2GXmfHy3SagrCaUAg+88NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742984394; c=relaxed/simple;
	bh=y6JwIDNVuBNvbZRs9TvYReqf/SzaODPAMAuQt2Nlwr8=;
	h=To:Subject:From:Message-Id:Date; b=F7f4845I92FQEVoVK4UzM+xgcFUDjLHhCFB+iLhUwdZv6vNXZL6DtfpjBk0mqvKCK4JkSi3pGBWtu8PP7tAnBM51rcIsyMy9uc43DYwAX7gOB7UwhiVTdeovLKNbqz3PHPnNGGvgX+4jnnnmwhCMBKHI+a+5rPiPUzqxfyiETtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyHeV2MG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyHeV2MG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AE2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742984393;
	bh=y6JwIDNVuBNvbZRs9TvYReqf/SzaODPAMAuQt2Nlwr8=;
	h=To:Subject:From:Date:From;
	b=YyHeV2MGqYg3Mx7qYqvFoTl8HEcraOPWvcDSJoLHSLtvYl03gs4lMTSHSIpaS1ruR
	 Gwmq4N/OZhv+8Ho03I+QK9wWjGLaqCyRLC7ZAHI9MVN52vAiV0UGQjdXm2q565FkV1
	 3R2IFbRxeeZIUoH92PTWXWENRaPZgnxEy/rLgPoakgnx2uXsb2RyhwS45ZtoSzYm9K
	 hh2sG/bGkXSkHjwRlHy0BhnaA9heWZ2N1mbQ1gcizn8aNnVQ0AKVM95BW54vb88oNk
	 sCY3ESGNlylNe9VK66hkRfPtKIUiqyTFzo5KYEjpLTx+2lVe+BRyqmubwQf/JZgaiT
	 kj6FoG74NCdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967EFC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298439360.12097.14560133190115555776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454b51cc63bad4d3b6e669d93bfce80d63a94dabc2b7da11965cd325ca80cdcf
Date: Wed, 26 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742984393
