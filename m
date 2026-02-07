Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7A32475D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770473034; cv=none; b=dY+yRmTHprrux/yvTC8P8kcrjk6pRWEPNlSYeRr3SAsffqa0TeaacKqEgl2yOZZmDNBdV41oZB956EE+r7WQDc8Wgmm9vUDTQONAEP7Fr259c5oyr6883oPqtEbg1aC4hZdDRlNDrjp6st56Wia/QXYmGTGZwe8/DDTSPTRcUHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770473034; c=relaxed/simple;
	bh=4D9VT7WLIOYFBgGLIhPvZSmVORaaSFI2srGGwedpmaU=;
	h=To:Subject:From:Message-Id:Date; b=X9it//jVrav8EV6i/3m3W5XhTrAd5591R7sNSA3Xt5NCkbBr6MGZAhEx7sRiKZgEScgq+mthtCWNtlL+msLgfaiH8Jz1DN6zsPa/uDbjOd/GNjepItvNHSSkGSg18+sDoSPEXn1Zjr+4D/HMH+mpJ+FzY2G6ZWxe6KV2fVqV3X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laYcn8WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laYcn8WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD71EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770473033;
	bh=4D9VT7WLIOYFBgGLIhPvZSmVORaaSFI2srGGwedpmaU=;
	h=To:Subject:From:Date:From;
	b=laYcn8WSkA1wQoVXGWbpAxjg9HohvrfJKQc94OOzuW1WiGLqB23yBOo0yCoBOXxov
	 xOZj/3r34OIwpkAVTlT+bFjDWZwjKDqCtv+duEhf+BBYqDgpVKy/pAr2P1N6SMt7+2
	 nq5TQcGOmZVUIHv/Lyo/nGsglfunPha4jdpsCiG72iGh7sVO/sdyZToDSqGcB8X6W1
	 3NluYK/f30WWk5a+imiiwAqKMRMCW2FY8qoHOXIOJCEHRGpUBmeoFiVJDT/Rxv6V6g
	 4pf2fQnPTVuJC1UqaF7lRkO9tkbJ1W7BLtsIZ/GErEGn1KSMLDtiUXp+uTG6lgtK6P
	 /0Y3t5vAkwKQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97669EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047303359.14565.32031700668095638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc9c30af9c7a1c9178519f1c0c40514ce5739ed38e870f3c6e931f111daa234
Date: Sat, 07 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770473033
