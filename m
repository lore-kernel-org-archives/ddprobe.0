Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381CD1805A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751344194; cv=none; b=iT0kKncjsZTecbfGU+BBZkJxVFyyj+AZ+twMi1j2wYjT/L1aH1JpzxxPLe24I0NJl4RKCCS2jZ77mCxwfpUQF4rbUa29stW+14DtFw6H+ZRoOt5eC1hpUv5oATV/zHEPMP3Jh26gmB44Fr7po7kGemhT/aYxsyu96k1s1welC9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751344194; c=relaxed/simple;
	bh=V7NFTXFakL5myKgLEBUUk4sQz+boZcITP7hqXC7ntVQ=;
	h=To:Subject:From:Message-Id:Date; b=NklbxIFutJstKnHrKAkSQ61vrGzTdhuu5CFVnQdg2eiG9lyK+sB2e4Yl2+JH0tPELZgf6EdpCh0P79kmBtIKQQdBxts9QiBnHYxuYRay6pHGC7a2IRpVWZhUF+RvRLUY4Rps1ohT46vfkutjmC6o5daJAZAdTwEdaLSK4fJeuFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpt4dYLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpt4dYLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A74C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751344193;
	bh=V7NFTXFakL5myKgLEBUUk4sQz+boZcITP7hqXC7ntVQ=;
	h=To:Subject:From:Date:From;
	b=bpt4dYLI8JO9KwUUnGxilHsbNbRBvOBUBErnshrDgA7fU7T2HhmuibNWlqTT+nXTk
	 kjrnNRl+VVUsWVM7EN9ZBRAs6dHodehlYrM1Es+tzfMA6NsBLP/YvCJISGG5L+IBUS
	 g1Vs1atmzTZQhYuYcVh/ZY1BGOY6onxjziKFgIT6aAMNKVR3s179Bteaydat+FqHap
	 cYLSQKSt/Y7lryHmzp6IR7rBVQP3YxSHldwgKlsPMkgbxOnw2wO5aCIkKHqmMVF+0h
	 ZscyJSY5XBeh1Fi8peWMM7ctdXoRHxkioM7WvAZoX3XH1d06OloAtKSTH9OVTHPzX9
	 ZuuVdGx2i7M0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F096C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134419357.8099.1249566264214303196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf68be05e5b514db4e32c6781583a0b5f048f7e96191fa8ad4eba381399616c
Date: Tue, 01 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751344193
