Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396DB634
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744700994; cv=none; b=L+8m5n5rV6XMtzbIh0MWhhVLAf5v3OWLndjoiTvL4uE6AsNaqor5EQKaeRxKAXMaAJ/iWXnk5/4+igFqPPjoa8hNA9iG4tbMNeSISBxNsf9PAeruTWRbzr5y952JgcMlYF81ZOaOmxEai7zwjjouQEKR9KSPUBcXmEhbDeAI7IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744700994; c=relaxed/simple;
	bh=jc72nZia3J3a2itt84ud8+QQ09u73US159Ea4lzySz0=;
	h=To:Subject:From:Message-Id:Date; b=Ovw5pVeYTO5y6JFAfLEWBbKAcU/bhj5BUQlMspzghWMw5s9Rzv0zEGL2TgxIu+CU8BgeFUKYSMMq9AVIye09wvAQS89QtSHMTlJcNlwZk8ajNtK5YtegQpB/4qsVILZN1/wjhZO4YzyGjU1FfCtnYuwehSqRbtgM8t2psXxeF9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAKHyVQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAKHyVQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2C7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744700993;
	bh=jc72nZia3J3a2itt84ud8+QQ09u73US159Ea4lzySz0=;
	h=To:Subject:From:Date:From;
	b=EAKHyVQMW6i87gwjK/Lo5zB+KF/eBuP55Te0JQ155hj0yv50XNG/Zsp2K905Tw5YY
	 LMZG+A9SHudNvAnh989KvKzXCzDds61qWmTbAptuXRVOomGIanii74sc2fQnfYEo61
	 qwP9PZ+XyQ62VD5VjX1rTWpLlJCGgpgmxB7n8mdnzpJPy2P/YUF/h4QStYQRifvjtV
	 80PovWtizDpzKssyw0hoUA8kAZEFGFX8RyMGXi5oTuM1b5n+AvvcMZ0k/qMRXwlE/i
	 P0r0SDxaW3VZ4pid1tOWg0UFenGSPW1Z1vvplRMuBaiGl+53V5T6ToMWD0QipjV4Yn
	 SQNqtJ4EplMlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600AC369B8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470099360.26244.7098829182666138707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a4e8f283656ea3d424c8aaf445afb81cf486071cb8e1976b543f8fb1a76a67
Date: Tue, 15 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744700993
