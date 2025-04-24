Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0FC28466C
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745515194; cv=none; b=Iq+6solD29pDbzkGuL9BaNj+ZVh5ey/N/OfOopr8zCYS/FUEnd6dz8xQyubV25RHBtS9wGrJVnLQBbmv2b22QoAM3dPhK++XfoIx2k2eJeBxPHzdo8DGFu7bnELLcMTQIAhqhzhC1qKEpMClx8dohIs4B/01HQA438W3ePRaE40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745515194; c=relaxed/simple;
	bh=HeY2Xmz1w3pYyKJ6o6VeLEhB23rOqYP0ib6eJSwImu4=;
	h=To:Subject:From:Message-Id:Date; b=P7/JH7splnrYRHp/Y65zKsZSLHBgxRnFW5HDuGbvwmNMwsZcjOVQZuKQ46w8SCcVRax4mZa04pq5qrTDVmqv8mEOlCb1jnA18tX2a9mnWz0roCFl7ecxbBPOUZU+25WKlsFlrh2PIl1GonZXIClFL60oQmMzypU7ImBmHEPZ3fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btPSOTt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btPSOTt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDA2C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745515193;
	bh=HeY2Xmz1w3pYyKJ6o6VeLEhB23rOqYP0ib6eJSwImu4=;
	h=To:Subject:From:Date:From;
	b=btPSOTt4pFeNP0X6dC3gTp2Othv1SohIitnkh++CF6ko33RweCRC/2buJRKHHuFNL
	 2dduhSdS1eVJO+Ilww8oGR9J8mypmLzhs5KXTekBk93nSYgSVSUA3P6cNykytfhnME
	 YcHDfxAxdEIT0ptwPGt6LRtt/3YMqxmZeAKCiamfstiZp4hl/bx0xJIJ7mUgYFvPzq
	 Ydqt9qeYEJuLNcwCxDjKGWdV/0X8OfZ07f3aRF0vUcekaBSpRUyijqU3SqmMkt1+KV
	 jbYK4bWVPDquKT+0kkobjAtYaIItdmiSrkWP2ntIZ6UTlr3l6Ei0FZwiVSPtFuUw1L
	 3HC2UR6tIEjMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8ECC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551519357.12311.9494567085307324234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ce6d07b3d8ce47a9db52145b2674096ecff1920887ad49ac323d333789c8bd
Date: Thu, 24 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745515193
