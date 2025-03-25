Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318EF1AA7BF
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742884194; cv=none; b=urM0+0fdTY+FaKVmLJskBIdXvLm08o0zhPF0eBCSesaNcnS6SlYD7XbMl331QIM1PBOYBrGkaTxwmiMR7Y3C8vQoXX6f4s4wQqfHJY/ZaMaC6046vfeLBLYu9RrIAgLBg31UWUwLnpoJmNCLpXsvngJ3QrpzefRqcbPuWCGSyDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742884194; c=relaxed/simple;
	bh=gSM2EBkLcGbVbYbpGKyusEX6Mqo5EpT8jmbnTFcSuik=;
	h=To:Subject:From:Message-Id:Date; b=nrWg+BGwf9DlvU3GW3JwSzCfIEF+Nog4Y3yMBA9uTG0OJnba11mCfCR+JthW7CtuF71UjPhF2KOM3xHzUat7z02opW2XRpFWS5hcXQRQ/xWRv9DUOXzm8qXkZcgTP38IErSYK57frNCES1DP5YYDASH5cNtVgUOflAz8srdFXZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix9rn2Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix9rn2Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6979C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742884193;
	bh=gSM2EBkLcGbVbYbpGKyusEX6Mqo5EpT8jmbnTFcSuik=;
	h=To:Subject:From:Date:From;
	b=ix9rn2XqUYz8nPFeLQy42LEc2kdbEZTFfjSrYRbHN1m9VnWa105xzhTcuo/QFMr3Q
	 GBTtA/qTQmDWNSY6i7lgoEmy3hY6JBAdP6J89Kg8S0fwwg9+/aB0Mbjuxn7TffmWGH
	 bdWWd9gMGD2rm5VxSF4W2Jhnts+ZP1RKVoPuevJAoMc+ujrUtWwmo/MRiqPBiGB9cp
	 z9GxXN0Yil2q0aIqJimfsYT3hO9AmaiZU5iXupo68CoyXfPG8h1wVRp5ev/A3PB8Qm
	 FOlcbE1vTBh3GY/Wa0HwjJhvEFR7dLx6812133MuaK/RzL6vNPkXfZnPxxKwwpXP42
	 WQKReeUmjb1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C4C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288419358.9392.3867152464206046396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3633fc76e4b8bf65cf8ce245222ec13397a880c7e026ac3a0dabf065bd61fb1
Date: Tue, 25 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742884193
