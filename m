Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220ED1C5D77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766737434; cv=none; b=rKBBhZg5V2cJ6KvVCzuVXnTDA4PcfiN+z3xj/akm8hjMe2hF7UMW7DzTONOEhMXCD2+LDkajTwIL/YHNXCK9wHQQVnDRyLLTzOyHfP0T2bdkDrTKGmD/6PfSTITaztATYW2pIpPqo72EmvotMmZJbLUZgoRmeyJwo5qb0lckqco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766737434; c=relaxed/simple;
	bh=lxbKSxLT8WJLZFZBa7idazd0x7JQkcwA9OZledB+Y6s=;
	h=To:Subject:From:Message-Id:Date; b=eoODzbwyi3L9xnwza61FApo3m7qoPpiWE/U2ivXJ2/j6WPVFfNzPIbETUdvsV5MJZwsfwvf0Zf18cG4EgfqdL4uLAWKoDtkKBTOFrIP0+YQWxYGNbhbUsQ1PtB6DwJ0DIbdtNZ35pu2f/33JDvSlkgp/UtzIHQu8xujw0qmVW8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vq1MqcDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq1MqcDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD19AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766737433;
	bh=lxbKSxLT8WJLZFZBa7idazd0x7JQkcwA9OZledB+Y6s=;
	h=To:Subject:From:Date:From;
	b=Vq1MqcDa7mr6wIVvXsnD+7B3oTP/miVLRNvK2bOm7iArfDUyl6kenazj+2bobj6TN
	 qkl7wgDhqv4F5R+H4LQx8nNCSMLoEhEhLPyTlIy6EevktRl3Y1f834SQPRCdkIiScO
	 OX6d9kCRLm3hRhKJFtL1qEV3Qf/y/Be426qfhz+br7hhVi254d6zVJYSdLBPuGUhc2
	 nwwluZnXcSqYUKtBBs2xbC4TvBNXcrHGaLos7bKzKl9+/0GyvVflZcidZyhtxsBMk3
	 tS9DviXYZfurCBe1S+QaMXEMjbkrLlnS8rdHlqIFQxV7cbS2DcbC8vv4QtgfEtUSJM
	 cMHngdcdAh9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95938E8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673743358.30637.8375485227546411468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7529de3ec8b31df7ca2ebb75764820175f2549a06ddc44392b8b0712ae0cd456
Date: Fri, 26 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766737433
