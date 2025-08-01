Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E98014AA9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754089194; cv=none; b=EN1kIAc4ziR0qKWE0zsUCNFB31it8/nZEx4q/uEVyA0X2t+NA8n1cNnwp7gY7ykpriY+I4qdjrzhBJz2BrImLq5jp+ed1DayrLXGayAY/jawmWB+ORHprj2gmfXciOWHZqp5n8jYedh0ks2gOmKgam32uxa0ZHfjSeaYXsXKZds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754089194; c=relaxed/simple;
	bh=KNoXw68uVHNy/au6sHbzGhQKxELNbeX2xSqu9uuvRBg=;
	h=To:Subject:From:Message-Id:Date; b=fM24ZJoq1zaDM8aPg80SfOpkPn8tLloN173owAu3povEO/2XF/GcxVUjGRxcstJA4jFYFlbRRgohvCvEStcMC6Dl3eHBa8v4tNMPtlylEzaHswGQVLLtDvCyTtkTu0wJ6edsFP3DgZk9ABXVHdhxK6S5+CgJQiKO6c8HhC13e7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGtXyiRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGtXyiRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754089193;
	bh=KNoXw68uVHNy/au6sHbzGhQKxELNbeX2xSqu9uuvRBg=;
	h=To:Subject:From:Date:From;
	b=jGtXyiRj2hGzOZj9Vt4LIUoVk90Vqx3MAslQweq2ihBTTaYEwcptVBgBDcY67iswp
	 KZUSjBl3cXCLKtTrjV0Csrm8qWa80cczsFkbwRSC+jnvzlJ9SObvidx1lVeYPGoBP4
	 iQ1Qzi/PVGt+C6smxb2HIgXoX0FJJLOzcABwk69B8q8PeTlWe8y4HBBmrO3bQzSrzH
	 fbZMQmKELgYBAvzSyY6IWpgrCV0xZAIVNzndlfVXsu+9rDDEPw+AP+uxLQra/RFpU0
	 NgDzPNzAluckIJLqsz9qwYYzytXIJ3ywxV3XrsXIjl3ygm+F/RQXHgYFMqNv1jsHcc
	 vtWd8/JSVhbjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95320C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408919357.16562.13935367112710902250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8015f04dc167c568bf46bcbe92122abee1364f983bdcf97965489f01da86f59d
Date: Fri, 01 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754089193
