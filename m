Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311BA1D7E42
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749774; cv=none; b=eBn6jhyRV54vF3zKcjhhb8pQAOWPxmMqpKZRVqC49DteGoBUrtGm/GsWzBMWFKCHDfkRSEm7vNFoeTt20oUABbTP/zCS6soMhTPlohMBcapsKXyLIXB687zT9sFnBn+VTwtBf0txaqAQ+5YeLEWHaSW/sNR8AhzJynNP72IXx3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749774; c=relaxed/simple;
	bh=ehMgqCceNJ10T/1woncEOxYKN9d7g+4W18+3K/F+4xk=;
	h=To:Subject:From:Message-Id:Date; b=M9w7za6mOh6pLouu/Rq1G/6v5l1vxpHZG+OXmMH3prMHcZivSLKK1gB88jVSry/XoimP70DdX6IzC4SgGpTSKB/zNKLb5+92WB38NpF8rs7c/iQY5sNMREq/XxWyr1crJCQ7PMrXBeq6DmFfURRdxXT1SPDmh4z37nQabTF1auk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7RXBU0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7RXBU0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C177EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765749773;
	bh=ehMgqCceNJ10T/1woncEOxYKN9d7g+4W18+3K/F+4xk=;
	h=To:Subject:From:Date:From;
	b=Q7RXBU0IfsQgbJ6M5c1xJ8ZjrT7QH8C0cA5XvfM30F86w3zgfLaX+U7rESMiBQq0y
	 kSg0Ylhu9KKVH3Jr9xEIeD2liHYAKNdv4oNXhjIilVaSdOzesRr+b7V+cnI132JdkY
	 xrz5GkEFMgNhEdqxC2A6a5EwqUyJ+e4GDUwmbjGLE0FrqzAc99kxdqMZ09dA2gcWTZ
	 KTOwlrd3hvtFwgyqZr/BPyRjoNsthtIFncMbHgM1/2aWOR4ovw8SYjy6+rnHmsDdlx
	 Q9fdpIcTWEbXNUsLhzUR89YD/hVD5oeJ2XFBQk1KTZEeNY6b+a7klIqI73l5b1NgHa
	 W7tP6gZCO6gJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8525D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574977365.19508.17540379418192678348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4607aae03a2e69d831b29819fdc7bde295b53251e4d6d2a96153cf1dcdf25e
Date: Sun, 14 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765749773
