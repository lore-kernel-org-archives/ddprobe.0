Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CEB3BBF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766929434; cv=none; b=ogplDe05zRH8lmT5xCeRhaA5MitXzi/SL5TzZZKkeGxqLbqxEAL/uBwpeGmmM6gJ1HCYPPj464onz9ffHvZgf+uLrXYhxBi7bxCFdL4ZiHJTQYVJGXrq90Rcuzi17ky9MvPpIjUcjsAlb3+u4vq2Tggrc230cC8RL17iFlBLxog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766929434; c=relaxed/simple;
	bh=HiqeWyZkwnbuJXsXYKLwUMfmWKDQA4nqmSoITEYkW90=;
	h=To:Subject:From:Message-Id:Date; b=pob3z/cXI/FQzAE30Q0LY81QQ3g94Nuba2bqM3Uq2UmoNX2K+8kmQH7NRwJXTLpHM/tSuME5SwCRufuXHpBo0d+cc/DfGUnu5yB34+nAfUsVI4fASLXrkxLZm8kwZffwgI+4Z0srvhwsv6ZgjBXt5Z728h/ldxjW89gcaOgFyBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJJYVwCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJJYVwCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6516C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766929433;
	bh=HiqeWyZkwnbuJXsXYKLwUMfmWKDQA4nqmSoITEYkW90=;
	h=To:Subject:From:Date:From;
	b=BJJYVwCk/Og6vahqY9Hc/9egkPvr9byfU+Syna6yuQFaDxFyAzxgZCcxdnwucx/nt
	 /+2kWLxZNJ/a3nuS8WahswTT5NfGpepE7kxOfCL8lU1NvhpGCbixfu2xi4YBqdTAgr
	 s2NnMFp+zWQjwgwGjOfTqKCP/JGBDRAW4qnKQW2gI8HJAkdQ710XL0AQ148cbidyd4
	 VHKMEgZeA8jvMOby5LqdhM90RVUZgy2W0IMsRr5Z9i6+J0FdK4nHd9i8gNIA62u8gt
	 Key8NM2oSYs+PZDfA667brimW+5PIy544vxavf2Lxb1XYe+pAIiIzcD3yOlLrwjITw
	 vCEvqnQvp+CbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98865D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692943358.3467.8378477529446084876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278e70e2a51ffc204a81599838fb697180c1fe0e1181401f6964c5e39ba9c57e
Date: Sun, 28 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766929433
