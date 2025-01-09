Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D52D29A9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736386554; cv=none; b=EDZIi1+HpEaYHYp3YK6ULbf6EzSEyhTYipVuaE54f0CgzuI6HwRXCvLibP/UDL9lBN8Z/n2xvPOKIgDVxfxcsvt2iXT+6WPSI4nwxlVDXeU1XW8Wdc/Y7GbL8NqpRyKpa92dsR4K9il71J4xtR1NL435hZ17ypVaSwrO88scUXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736386554; c=relaxed/simple;
	bh=AeXKt+dQS3VdbkpSgfAT0lcyKTL3LDXwXvaDPnvyiDs=;
	h=To:Subject:From:Message-Id:Date; b=WK8wPXGIpBGwwOHgSuOMkXQkMkk13hPvOwp2xDOuOSJqHPYp+A2wKce7qL3sZKQ7wwCmR+poM7AC4cs5AHiXkMNnYx7BtOhrN2iFSCYQmAobabOcX9JUCJMReyi1+On2+SFIsjA9hC3BvD/EbzGqS7xNejUapcWZZnUHj7u+TYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFp09Gf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFp09Gf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12C9C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736386553;
	bh=AeXKt+dQS3VdbkpSgfAT0lcyKTL3LDXwXvaDPnvyiDs=;
	h=To:Subject:From:Date:From;
	b=BFp09Gf5ZGafAOcR9WICNCVs7u5RLni2Zkop4MYQSIFVLBjcwnR92iZ9+hDbRyKx2
	 bY0YRoMyS2Gil93XGBV9f31+RNBS/MlIHcZrb1gyd1zPVpV+My8J6uR5MmnaNVIBS4
	 uvDzKXvxYjT/QRFvFXhG1HQF3ZpY3xamW1iOQ7upPRBWNxCjxaUUdJegvzEnYIft2z
	 GU4xqQc6yRRWnj7lY246vuUfPen67UZG47YZoSL21gZK/NvuIC5UBnWNsaMVLVYmUk
	 dOLS9KEVM2KlpG/k/GrGhccxy4xQ+o/uVERaQnhEXopQr39Pn15zVpBRZzXZXPWuwH
	 eAczVLqiaMAaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F926E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638655357.16093.6712795229852377939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd99e7a8f21cc15309dae110a1933e9167104b0afe66e09313e0a372b908f8f
Date: Thu, 09 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736386553
