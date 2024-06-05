Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D133DABE0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717571783; cv=none; b=frnU6QtIjNBjYylHMNSStG506z7dKPhNrLHwSJVQGKKID8NNvrs5hDDTLT9lHlScpTaSy6o8bubC1KH8CVUD6AaGUTDiEWuc7LxKrHkdyVNz85POn3r7vaxM3t/NSWuFTPaJ0X1o+v2jKxSF14mPE7ECP9CdSHFhebiS4l8kelQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717571783; c=relaxed/simple;
	bh=BAc1+xGVWiOIYqBJJXnDcvH7HiyvfFSgb6ccib4XIxU=;
	h=To:Subject:From:Message-Id:Date; b=o/oO90Ma/xVQM4o3GJ9tP4BUn/IPipBzk19B3hMmUo/e4S61CDxh65V0So7HshFhHoATqnZPyRJySLliiAc2ltZJ57WNps7nzf/Iy3f0T5BENYAaBJqrDzIQ/7gpi3fFOJytGILqKGIFZN09q/i1RFApxyBXfN/P0TpMsXkSvVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcjHNrvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcjHNrvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F20E3C4AF0C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717571783;
	bh=BAc1+xGVWiOIYqBJJXnDcvH7HiyvfFSgb6ccib4XIxU=;
	h=To:Subject:From:Date:From;
	b=HcjHNrvWE1xmOukBXGm57vyAXC3KtEB9js3W3SIxS7Y3QdqWhFxJaKI792BDC5z0I
	 nXGlgCDnGPUN4fTcrd/55h29dQpJAGDX30QwVKYYvLQRfW3aeSwR9KXScYCXMj04XS
	 d7IUc0Cjg2XKXKFZ8wmv9ooTjUfv31ayjcFzu5+fKRPabAvfWc62xooHxIHWslCJGa
	 c4m8Ilhd1nusXqJYpEzafkXLcByJ7ryK3S7L/e/RPClgqObMxgTjvr4t9J7KnTFIe0
	 kkWqCqLDDKU/v0zZFJCTOuFT99M2tB7r+10jtg9//9KTjcRzD+N6R7/SjIFxRYuqPt
	 nwhfbhBSbXfbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D36F4C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757178285.5535.17512719685167688006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560add9ad57e4152f31fa14c6d48d153d358f9f35b7d3af7f4c3fb88b323c334
Date: Wed, 05 Jun 2024 07:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717571782
