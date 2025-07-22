Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBA32D12F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753168794; cv=none; b=ZsRUDwjibsP+eRWDmV/W1uVPU38yzsyoCGChCaFLKkvvQSRlft5iTHo46Lhgi4VhY4Muar+uN9DTDNTMz9ySIqXSBeMT2U9DDeLa6IO5rF61WDqFHf+gaptKmpk/rOxgYGOCbpY0B0OR8uPZk8xlmrXwOP4G3R7nkNwy3hKebCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753168794; c=relaxed/simple;
	bh=YcMcnT9rM7T13TcfaDwLtzFMX4MbTRZydKcvYaYYIho=;
	h=To:Subject:From:Message-Id:Date; b=OTiBwjfHxsk/nZHK0gn08/QIehgeYwxo6xfAu5F9WRT2BvRmzYURLCSBWeRaEZuPhPdvQOCo+hRz9OZTLQDNvNy8FCGHCNVRB5z6/z6w3rVML8Cls/KA6IccPILc+Bbi+cFfnFlbTjBqyfBKvCsvbUhUJFlnYU1/csgvFXRHamY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUOuFz8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUOuFz8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F843C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753168793;
	bh=YcMcnT9rM7T13TcfaDwLtzFMX4MbTRZydKcvYaYYIho=;
	h=To:Subject:From:Date:From;
	b=GUOuFz8DIfaPWRE9WKGOMgX0UgLR9GuYwIoElR9wjhhmWIgR3ACRCHhkGKXYelk14
	 LGdLMy92jqc9nXVMmlD0cPkusWV2th+rW9N/bM8fUO7Yt03rWiy7NF6HHV+XIBxU9l
	 zSmrfnWogRDTNZVgOjrL9khBwZRdfjPbJK1wRlT2h0lO1rDJrM9lm5ayxtsnxoa21N
	 Ze7kbGoiURP+fRNwPcEvp6bolOMC0n9mo/jp8PVHvm6Evl1FBX5XMNhNKEuzZqtuyn
	 72/TKp25AATU7qyTq2ehX8VRwqWetnt8YW+hSKJeITmDJGKL/rFoE5nKc7a93bA2Dn
	 rTzP/J0b/D5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90776C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316879358.11768.8685168373199180371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9555fbb8df1b7c0b3a8f656dc2d5e4d78f58514a22299892eb57e99a3737bd2
Date: Tue, 22 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753168793
