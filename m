Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D70227CB16
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749643794; cv=none; b=iAheGJJjHBZ9O1EZnbn6XoiM7dn4Z91eyCkM4+4sg5LqmgpMorPW7yf76mjyl+6zQ2YqZsVx3SHlqe4C5/WusIsyPr+og6PJahOh3QoYOFvtxvc6nzue3aqyuFFQLqmj/rNNIauoDoEYQAkSBdiNeOp0PSFeU5j4d/fYDg31nxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749643794; c=relaxed/simple;
	bh=d27qHg4pWPBAiVx35lnZO0EdALeR30ielYjVskL/2PQ=;
	h=To:Subject:From:Message-Id:Date; b=qP+br+JpqJfkWOQlOhvPVlWw9rOb6YRyZ1mY6mpDP+pB4tBFU2+3mo9tJmckDwrbtoF3wvqbQH6+3Q2grU96CHhOA/j+c2GabDgJ6gVo1c3uqo1VnpaAk5L2p09G6wikHS8HhJ7LmF1ETHHkIOFHy33RB7qI/qc9Es4SlFTvAys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXAsCK1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXAsCK1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D48C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749643793;
	bh=d27qHg4pWPBAiVx35lnZO0EdALeR30ielYjVskL/2PQ=;
	h=To:Subject:From:Date:From;
	b=pXAsCK1KLUn4dQd0SbJbRWBbAWy2FLVBANx+8oLupaxgSK2iht71yKmUD2UYVyBOR
	 /0xCO4mJvOBl6DqALaVfJ079c4cqnZt/+LEFJAppV6ybobatTJ9usdPfKR9cfuBsTF
	 dhR16r3JTLPUmlAH2T7ID2aDYBUm7RrGgFnmETYIvtj/10tg6k4w5UxJY3ovGOHxLw
	 +GsCe2aawgXmwKxije0JPEXhUvFbYiYVZSnhDBXuWxOZ+M1ogutMC4DH67sc8F0VXc
	 f3bzhUu+Za/WMa9D/nlirV6yu1pN0aumr7FVjyKkJlLGdagrEPxLCD7T443GPfhWeF
	 lDdSLI0+4Xqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE7C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964379358.14404.3331569655248354072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b8ef3c28e2cd1cf5c73b2b4a1b5a935faa4d0f3c9be5a9a0ce7a850aa90f24
Date: Wed, 11 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749643793
