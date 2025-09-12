Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058EC2C21F6
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757662194; cv=none; b=qdox2VXx7k6LQwq356+08e3lDCqcTCvGehf8rxh4pGsOLegrOISLbgo+9G3jQe5ydGeRV73WTiQk5qfXYJ4YFbIjxrtPURqsRItilTzkqCT+w/5Ky9MQ4JaxEkLxmWulGJjBdgamL9Jfny3VKiNDJ/BM02+nAwnmkExp+7mU0kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757662194; c=relaxed/simple;
	bh=+W/UH5hNsBtlUvcfW/4JX5RGRJDAlikHZ/xXtppGAPI=;
	h=To:Subject:From:Message-Id:Date; b=ovxSZnyzG90gxiMHPmrgtTS6/pmuZnqwGRPUGVCVeaGLa0bT5LiL8M/5PLk/hqi3oY9ZldQYDPjqd7Hjh4v2j5H8Fwt+PK+5kgXmveApRlMtkAZ9EIXCR4UdgZ1030P+hNuR84B6c1LjLjazXtVubIqzAAoyn6SPG4QW9GfxN1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4aDa9Cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4aDa9Cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7358C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757662193;
	bh=+W/UH5hNsBtlUvcfW/4JX5RGRJDAlikHZ/xXtppGAPI=;
	h=To:Subject:From:Date:From;
	b=b4aDa9CmxX4zUn5Cyp/FI0xCOArwxIw9b1XujpE6Q61TthmCG4vk/BwRn06mFuzdw
	 TDLKHR7StRIIAaMRwGUJQ94fsDFbU4PMuI9OoQ9s8S8AUQKlzPNpnujQqrZPRMfe6n
	 +ZC7r1PokfEOjJnaX2pnZmsVGNdmgZFGUTCngP1PjXWc/UUHrFIPo/e+AHcn89OjXq
	 pi3kBGmVdS/zIwPMPUTl/SPmb1cZNPDO1BN14wuxASCXk4t+GAHFyvlBC0BClvYVqt
	 htTfCycoTxjwgHOq2FVheR5yppbIU37BcGU8Hrm9tlOE43CHOdBPOmgcM7QB1XX0p2
	 B28c4xuQBy6zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB9CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766219358.16652.18432452939770594649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b585eafe016549b207e5ca031db0abf17556634dbe9124685e254b6b7cb64957
Date: Fri, 12 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757662193
