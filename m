Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4589E389DF0
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785596434; cv=none; b=JlXjX1scxlQAGZJbWUi7lQbo96OsJacXCf+7VQ9NVmBXDdtfZPCoeqLNAEmSpkDKMqanuUOAZsL5KE7O7nTGLHWbNuGdCTBC0mEbr/gjVYQ0oSSB7Bu0F3Fw17qUgP18ma5goK3srB4YPc1N0U4XzP3XXH9wve1yUu9kUqIe/fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785596434; c=relaxed/simple;
	bh=rRDbTpSnmmllKqKIgn/xSywtfvKiXGu8NAj9eVLoLMg=;
	h=To:Subject:From:Message-Id:Date; b=KsmMV82s68t0fPvbfCxqEqpLx8cZ/CTyBdjbSOnK+2+BQQ2soIo297m3mmb1LycjmtEIOXr414uPONhTZ8Qtq53TkXVa6GfzKStZYCJxmcgTz3HBrqBziYJyWGVNFI23JwCOarf44ON56xmq16MTKqMIUuTsseBgyrJw59O1O0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZM52VL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZM52VL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF27C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785596433;
	bh=rRDbTpSnmmllKqKIgn/xSywtfvKiXGu8NAj9eVLoLMg=;
	h=To:Subject:From:Date:From;
	b=pZM52VL2R4EuWRqEhcBc/Wd1buLfCfTxSaFCiDAFFsFgTYaiIv38WtjRRzhO/4hQd
	 DcgSHE2E/vZmlaSWeke8a6sclG4AvOZ61iirZm5NzJ52zXzdMili84VNVojQSiyDQ0
	 /mhNX2OGmwMUqJf4ohzAAiylfGUpaFk/abccyvsG/iiDz0Q+XAIuEi2QBFGGt1YJh1
	 FQxsK8BnxDeGjdZ/h2OthCINRo5QaoecegdvGo5VMZpbp2zW8VbZBcfqzV0KTofYHl
	 XRtVvkLzwTz9bQvgQ9RnVMGvHThzVlj2WVLSevqfboultZxHtxiK8UkctJeS7GkY1l
	 2LNDm4IdpoU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A7DC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559643368.1916.7435880014177850769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2813827bddcfa5100e3a56dd8ad85a2a25c6f2395c49acbb13ed67778be6ff14
Date: Sat, 01 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785596433
