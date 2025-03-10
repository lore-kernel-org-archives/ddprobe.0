Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54693226CFA
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741607934; cv=none; b=gxOTh2w0/QePM9CzGsEPvyKvqzsB1T84flWHRP5T/P3Ahb7z4z6WOgkv/kStGkWhx7i6R+yG642vtTu4dqBZINKMeuJZnqd6dX1xEeJ4vOTedteN3e3FwquEiiuKmIHyIjhQAHt4HvmRO7kOSGYF3HCRZnRUaY+3xtTqrKJVZqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741607934; c=relaxed/simple;
	bh=zS58WLX27TC5QqgFWSs80o/F2xI80dgzKajm9+kBBCI=;
	h=To:Subject:From:Message-Id:Date; b=qMhSvOBCvLzpeACdjgB1J7+KJWQtvZWUrd0+yEMqXMIGnji9Q0+7pK/mw7dxPME8s2DrtzFSdAGFL+ZJwSXecorBv9tAhlKGXtzF26gBUYRjvc8p9gZTkfQJH/712CHORW49kn9Jytk0enxye5Svk3aGc/w5AWvzFbEe0A2/apY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNEPq0dR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNEPq0dR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB420C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741607933;
	bh=zS58WLX27TC5QqgFWSs80o/F2xI80dgzKajm9+kBBCI=;
	h=To:Subject:From:Date:From;
	b=gNEPq0dR0wi/N3/XyxUzF+tFrGKnqyAEoaMPx0keBvF/OmmBUDkD+90+8aSs8an18
	 n8wp6/ne6ovqEX21G/KZdKvXMWHeB4zYnsJhzFYU11K3GY/efkz9rCUHduHwqmI1Ue
	 znHmAhSbXK8WWZlQGjpja+R/7gDi4VRFH2O7pMdHAWir+NZYfUlYCLFlk5I9DRDzVv
	 QZniVKE9V3Wbu2ecfH4BoOSpneZV2p8HNIZw460jT/HPK/CyNYmKwZ9qBADbvemaxd
	 62xJL/o3mFkKD78EjDGwoNstk463go7vdSXzEtzGRB5BqZXgDlkBdUJKt+W1F2T+RA
	 eFgaAvs3KZzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F1C28B30
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160793361.18234.9707130238745401217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e851eac324a11f441c74d35a574e42f2133b1731818638949fec7ff72c7ce27b
Date: Mon, 10 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741607933
