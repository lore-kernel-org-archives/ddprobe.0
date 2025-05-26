Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3356253BE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748235594; cv=none; b=NQMqaO7J7GS/gsO8fIEP3tApc9/g/X3xQc++GXOnVRT7Hd3+kKKxXHxbBU5UFASCIwWhuOnBDFoYyg/QSJhj8e6FY9Zr4CPnYoTRJzcsvaMlb3RAsu/VPPrGESRU2sCL7HoQsalNpKSBarZFwz7/Byu6pCUaoqs7toE4cxXGPbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748235594; c=relaxed/simple;
	bh=sgzCWDSz7/ubMonzvMRCKxCQLjvL7taLhtlfQrI11X0=;
	h=To:Subject:From:Message-Id:Date; b=RDH2HWDqc32vJW9ZRJug4rzLxW5vCtbm6f/ggD+/kKiV9Hbm2BJonHcQRS8ZkKzgqEqL2gSuhJ59IRQ1x1Db37FKA5gzs9ZmlrmKokc7/PppM85kZWknR+0jkct9iQsAz1oSbkjJ9OnLTqWFq+r3sn4wfPwUv2WkSfKshoaJKtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or3dfCEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or3dfCEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A479EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748235593;
	bh=sgzCWDSz7/ubMonzvMRCKxCQLjvL7taLhtlfQrI11X0=;
	h=To:Subject:From:Date:From;
	b=Or3dfCEeY5hqikrO7U+H+RP++eOlYjOq2DaB8GUZB2OIHHsLf8RfsTNjPlNZ8oBfW
	 ivU+Exu8yHKJFXEA9P60rve9LYSQeSj/ZTHALLEIHmSYTFCMxfOcBuAL7VPnzpU93W
	 DK2OONGJEh9ybAPv31Y4Wyuii4sGe5lN71J0pX/yyhwgQCOD38w9hXJJ51jxiRfpQb
	 6uBBQN0I39Gojmxf5ZIZObZSLJS39JSPSdtxrjJ9Yc7mlQAgZshuh7XjxoNTkMLcC3
	 IyQg9UElk5zwMhaCoEnOiW6QJSPtWmAC+Q/FVucT4fy8J8Lo+NtyHUY4Hu61KyfmAy
	 dnEBHK6n9J5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919ECC54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823559357.20113.9024730459820837818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f8c3326451b210c68214d7b7827c36ebef57dbc7ac94e2e56e8bc058620889
Date: Mon, 26 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748235593
