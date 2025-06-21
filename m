Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD2230E84D
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750526994; cv=none; b=p/aqSQoHNVLCS0h6oZd66/pUqe/pot/OB4zA68v8j14JLEfdDjK8kJZWeVeR6NdEQF7oaLQU6QjE6U8LPsfus6P0INVpInH6L2/+Uqa78dHVCwJNqKzlw+4yeSOfgmFC3voqix+hhTz4xVIRuwDR1+uNwwQlzZbO7sDLrCIyu7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750526994; c=relaxed/simple;
	bh=bpKDRRuLW4SdOvZ7MemygITPQfdraHBFEocJ42x0mKQ=;
	h=To:Subject:From:Message-Id:Date; b=Qmv3BbtNJlAzZ7HZRhmpKX9QWB/+WBgkqZSTuF4Xs8KvL/JN+ulK/tvKAzcM7w0hxgtVQaZ0Pa5MOBd5vQ3ScZcXjX5X89eEcKz8YRIKy1f9TgpavHeYZxvqOeK0mfMuro47Y63l3lDpNx4lx/JZ5CdcsnoKI/9TeUtmKcXT+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmazLHej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmazLHej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AACC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750526993;
	bh=bpKDRRuLW4SdOvZ7MemygITPQfdraHBFEocJ42x0mKQ=;
	h=To:Subject:From:Date:From;
	b=BmazLHejSwAHkNoGvmzioEF7CsU985K7g1eGDNRv28vmPgddoLd/yrim3nPqBPRQz
	 k0RB3IyolLPtxSJa0AAeiVBqbzwhLB7LwHfVyekeYk2Abh/K/TfRg/SpdA5yhPU4nV
	 NSyUszQ7EjRn1QIDBBBf7uUQIrUEDyDGnksPVJpm8NCbUllzpFBhpDnMazH/vPPiKS
	 RyHYTy7PWygin0gOkD8Z+5URCYf3xZDu5dESZEczO5HsH9G41O50Gm+b5H1IYEsXr+
	 y2FO/Y/zDLYTAWA7MHpB6WknscQWsDFIgMj5+Ke8c95W+KAj97tRT/M5TRxVCfP4RG
	 8b5nxdSfnwA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD3C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052699357.11016.10857675897775747905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525139400e449670684af74a765739355dfb48d50912f2fb7a5e867d6db82675
Date: Sat, 21 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750526993
