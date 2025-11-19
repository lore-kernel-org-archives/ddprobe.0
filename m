Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A62330B0F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763542914; cv=none; b=oHqI/rDf094D9GySZ2zIT1Xx/90JGP2KWcK4hARUK8r3UaIVDvQFSTvPiex7WtE5ht0UDNT1yHBLGKAmV4ROc6RKZxSLt+0kaMjBr3NI2c0o3tLBFNeCixfTzgjFYS+Yd1SA+NhJeFbVMpzZNnn4eWbtGUInLGl6LSMhbnEX2I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763542914; c=relaxed/simple;
	bh=R2jl/wmoEk8QnZYkZ+gBsjYk/yEl+lKHXmb9uOU0las=;
	h=To:Subject:From:Message-Id:Date; b=Y6cHYBu25J05QV4WQ4LtkXxg0XSYLo1JW4QXIBxfcVoQGNAQbvXwKfdBeH7dilVQW4ekRW31OFPkY0WhDgkO/eWp2xB3JeCMced0bDrJvIAmITBKMaPx0Wl+rr1DRkFoH2QwRIFtadlCtM1ue1ob7tZQO5/f9tBkpgECsIWig2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrAQAyJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrAQAyJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1277C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763542914;
	bh=R2jl/wmoEk8QnZYkZ+gBsjYk/yEl+lKHXmb9uOU0las=;
	h=To:Subject:From:Date:From;
	b=YrAQAyJ/DozPQ43YEeMQJKZu8IfEBMVzIrcEdUG9MhUMgvnw4e02+8SXu1u6DPyiw
	 a3JtN17n5XFXraas8qxAtjCV/0MnUBPO5B8bkmQT4tPMdpcubNSCWYbCS5pkJV2TTB
	 TCbnewa3kwFTnY6WQzqiqQdp6j1kMb2aulEsqcUDsLCHl60bC9Fcy1W+ldUw3Jubwo
	 ZyqksisJHt9lXrZDXfJPkauymxLo8FjBrrRUEeharbTCoNRVGSfkroW6ZjhaAzlcGY
	 q36dlY+1mhV22urNVNFfu3wT5UeDEdCqkiP46iJqcUukGYqgr7bNqATdJR1i2xDeqi
	 48qorUi6RCz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92892CF3181
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354291358.19455.7035739444188506889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408b96fcfe795a6248783145e422ac2f2c144d8cdff7f4d2a5eb4a9b13829107
Date: Wed, 19 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763542913
