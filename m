Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C8F19DF5F
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748575794; cv=none; b=PrCPCxTCtJnfIwqLdbty4y+IRkhuV0b08pR1cupp6czLLEWy4Y5eQfse+FxxJ2rVe1Bo57FX1FTCJOLJCd7kZmGrsk8czEnlo5wEiADDTcdTqlTn67rnKKcQdRI+X9jzQQGXjMie7Clmk+1FGvHwdiKZDx/pbukHLvzmh0kcJpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748575794; c=relaxed/simple;
	bh=sDPLn343HLJrD23FhC021l1K5c4M/RSB8vFN5IBXH6A=;
	h=To:Subject:From:Message-Id:Date; b=Q9vOwoNJzmoJqSusfE0XPgoaIACRfX7ufIp8WcoPeoxAzFUgPLgP0kJrYdObSO/g5a5opTKlndhrAz4wE8NC/OVioQTKILamXvfzwkwtFishgDAku3yMobIjuNZZ3DTap1I+Jhaoj2Y7tMml4WF2oNC09wlGhkIgNWi3/uGO1fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPvUYJ58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPvUYJ58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F31C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748575793;
	bh=sDPLn343HLJrD23FhC021l1K5c4M/RSB8vFN5IBXH6A=;
	h=To:Subject:From:Date:From;
	b=NPvUYJ580aEc+pRB0RgmXsTOxqLlb6KtWX+KzKBar0ni6dlmtbr6NRDZ3uP9/p4CN
	 gJzUNDW6uqhd9CQpvtHM6tBgfpyRb3KaYiIVp8fXPsrhpiUfpSW8ZHyhqCHcGPZ6FW
	 k5gzsrSUCieLq503fA+KT9h5ThfHyl97PUWgdydyeEBSMd72/dMsgXe8ujpy9u6Bwv
	 B7OFCFPk/bjkFDBxlfCKNoo3SzFiph47v1c9QErGloA9HP8cFSWmeWkeDppYLIfZ/D
	 0xT5z6mo4qBMk5STI1QduRj4yE3Nvo51F8KKSRYDed3+oT4UH8IUN+bLq1hxZO9LRJ
	 N3oZphonlXLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E773C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857579357.23723.13072862709084301823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13b6340a7be5e892ab5557d5066cb11afa0ee99ce5bcbd14e1b3cecde04341a
Date: Fri, 30 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748575793
