Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916053C0619
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785689434; cv=none; b=pdYXUhXqM8plIGyVnqvWPk4w3qCj/lcl5sqjIv8lLE8U2aAnBoammZ9wAeF1UKNhVIwExIhgYhw0+t6hPVVNtY+SEGatfUxaN/g2IK0mDt9Od/VkpSto8jFGNF1W3SMCx+ySELG7Mn/gE50MqyElvDqQKfVYN/zbjEmC3OUm8x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785689434; c=relaxed/simple;
	bh=fy9O/N9H7rmvpiNrMWj/hgqyEgETM7OlNqdpvrC8r10=;
	h=To:Subject:From:Message-Id:Date; b=NSNcK8brq+9nZ5qNfxIyW5rH13hLzGSglxSOU6UQYpprmVwox1GFjZBPQWxFC4uvYW5SiPfZo1yuxLMXHMueU4qE6no8aKUTuXq3S/nPYFHdwHCtjuNFvZqCzX7KRj0e00LUmCx6RQ7gTLFUNo0ERgCMQq1v6615MyKbAHPJuxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIYc8Lm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIYc8Lm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCE8C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785689433;
	bh=fy9O/N9H7rmvpiNrMWj/hgqyEgETM7OlNqdpvrC8r10=;
	h=To:Subject:From:Date:From;
	b=HIYc8Lm0R8Ls1q1L/9vaL1TZD22IbLNasizARbfbJ84VIEiASmKMpBCqKC104g750
	 8mzEp7o5sLJJFT5ux6m5oCVDi1kxQ8FJUGT9Zl3VVX9cWJbYfCRHJZYWrp3g17Wy+P
	 yVQwHZSkCTfjILFIHym6yu1XPqTapvvYtkSnAN9SwEZLyfqUtFtXy4RsW6WG6U7aIr
	 w1KKqpzljRDstCEMZqjSSjfIMOmklvYHmmCq0BMvbMDEPYzXv2hgZVP7uVNZ/AxlQ8
	 8fWEERSj1RlHAatjTusn1bjkAOs2IK2Q7XKpT4d4jCFM07A8fRHJdJBuhpPHlxWAS0
	 LGwTA4DFnPe8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C6C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568943368.23538.4935224571089105228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc6c7cf975db1a3b959a9a00fab9f289b201cd9bece0b6dfa380dcba7dadba1
Date: Sun, 02 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785689433
