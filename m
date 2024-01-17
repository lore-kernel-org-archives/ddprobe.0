Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C1F8827
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705465097; cv=none; b=B/aJc9KkjIo1xjqi/en8NI5uNFtUQTBMzSw2rJc0UNT8wckK0ZOjllLK+hWWRB6YIU1a4JaR9MZc+Dd9eaZg7gHdN8EElra7zmmGXPejwjKZT4IJjjTatHm4dqMc58g/mek0UpVQXHdZ9U/a5Dm5IkHeHMZ40Egm8RloqyIBaps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705465097; c=relaxed/simple;
	bh=o2zKtoKKkb+K/gVfA6WA0zAjSnCt1UmrQS35q9iYcHo=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=TG64g+97neuuadxO2FIJhtHEAfaGcqlT1aaLWYFYAFmJNF2rgA32eldMkmY+yNghsWwuVjAtVPh6LIlaN7zfPOVz0q2tgOP4NmIFb5Cifk5gxVH79uYDVsTzjOSKqQiq0qnhr3vqCkj2HMTQoNuTkjwB6ejXDu34NtPO8nlRMP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H34u8R2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H34u8R2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1C0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705465096;
	bh=o2zKtoKKkb+K/gVfA6WA0zAjSnCt1UmrQS35q9iYcHo=;
	h=To:Subject:From:Date:From;
	b=H34u8R2swFTKDAfq7Dswty3TYMMQ6ju5jcxPanGEVpp5L40OPWTSNBcqC0Aw3KKPv
	 vG9dIOccu1AiLTgwQ5EijO1UYoSCvATshmTC1go8H6m2jg75bLg+RtZcgQleRU/trn
	 neTLuRHbienHGjAqMkUrF3PbpK+7sXUT5sQi4OOUnjHcbo3raI43DOfO4oiHhaKSBv
	 fdLWiFpg+5/pD3gW9MKHmZv+0IgAm7XqVWy+WxGdaNddwqO8dg1Zo0stX+ty5Zuv5w
	 W2YScuoGJtu4aB4433G2oNl57/PxbcexDhOiNd+2Z0120vkt7XNmLds2XM+my2f2if
	 KsPWLNuYjAuyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDE2C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546509637.27977.7093806374515387585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95196b5a4ed29c9582cd3ff3fe4c0cc34d6991ac4681a090e6e24a29b4a6483e
Date: Wed, 17 Jan 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705465096
