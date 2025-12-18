Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F90D314D13
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766057034; cv=none; b=Ue1lpcKCi3EXYVpCOMoRfkmqywSAvqvlmCqfwxBA8VkrTXLSWVvHcwJwXAb1rVHDxm6Ccl8SeSqFGq51XoUfELs81eqYRGhREUUVtEpE9IoNFMiaBWmsE/AafkTYSadneaT+fDCuH4AxREXA/2EF5fWbcABhAksXq7WOURdYil8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766057034; c=relaxed/simple;
	bh=w1A+ZoFCUCeLODKQUGsun9m35Q8HJE1oSU0U4fWEyGU=;
	h=To:Subject:From:Message-Id:Date; b=gnYbWnPpyq0S9KpKoIy3uPQujVT90gxNRYY+XhkelnhR063ydNZJ1ogxMsV2lrCTFWKbry4kvrHMOXGMkZEXEVd1ZlRnD35/ZonwROBy40O0M+D+8Xf8X0oSgt7A8v0YqCwwiUZKR+77NkS1zGIRCnu7C+XjWpc1+uU4BJ9XWxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPtHXxgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPtHXxgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766057033;
	bh=w1A+ZoFCUCeLODKQUGsun9m35Q8HJE1oSU0U4fWEyGU=;
	h=To:Subject:From:Date:From;
	b=nPtHXxgy4q4iHC+WZHp2qdBd7ZieFC6NUK6IKODY1Arp9JCGuL2OIxb8BbR51/cHS
	 /uJhf7q2i3DVeDHOlbYS9p2H5S1ijPjFzprMeY25oHBGRKyVuJ2Jds06zziN/r5yGO
	 ZRUOzbWuaW+1cgspXn6o3VOR1tZ3mHf3P5UNt8UQ45unRyfRl972ufr5rNdmqV9mMU
	 CL3uJ8QyNaFUJWBDHn3KUkFvaAdPxe4vQ0itQnuAYXJfPQkJBR0d3lvcKvpJsDLJci
	 XBFvjlA5JzB0VR4MnJhXqseGqCZzPbuY5QIUWk5NiG6emJ8xVB9LSvVhl2OOO+r4Rv
	 W0VIVOQF8m2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E6D6ACE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605703360.24709.14294638239397658484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08446cd7a77378e05f132970e0280e4c899ebf7c769622afb6449f7503edd145
Date: Thu, 18 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766057033
