Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAD82D0C64
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787197834; cv=none; b=QI6ViXXxNnve3yG1r/e65nu2u+q+P4PZ+xfXa40jwbBfdJ2zkGJyTkAYBoQmwh2v6mLW7qK1G2TSym8dmDpUqFEYD4xya0447NIoYAxoDe72psi8qwEOJ+cYUzXZVQTajylqsfTYauN30uOjKxtogXiDyLPThPYX4bWtaKnYvd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787197834; c=relaxed/simple;
	bh=GrQVWUYOJLPGkx4Gv+zHYWphW0za6rl5Akl5h27MOYY=;
	h=To:Subject:From:Message-Id:Date; b=ZRoqaTbzT/SImiN+hbhXKayeMGo75cji9rbhqHGF5ws4IKcf7b2e6dKmJeT/Z0pyNO6n10jggSBN9BpPTzID/Z0+vgbfggrsEnJXnlcCDp5zxiuXyG4NEf8nc9rgtVAZ9TR53GCR8dgEUms6hwqyT8pX98jHn1GAOgui1fLZmDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPqSWVYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPqSWVYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD749C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787197833;
	bh=GrQVWUYOJLPGkx4Gv+zHYWphW0za6rl5Akl5h27MOYY=;
	h=To:Subject:From:Date:From;
	b=rPqSWVYs4uoDiZ9hiJCqalrbERUhbb3059lFnWsXtMy+otgvUYNfnrqoh3iXWmmJ7
	 XrB2vmz8rwij6CFCjyaGi8YgwqLaTy4tkQsMOX3US00xnVsqdeYK5qy704cFbbVa8m
	 vVeNqj8VYlyJJIZQSOCU29cyvZE6Eu4YiIMho1ukJrKqz26F8AHc/lb+rnUBuuWxWC
	 WCFX1bCbHuXt/x2SqCfz+Y6tLxR4geDCpbSrq0zfKng2zHDmQ6TCvH3F+HQwbt8fcg
	 lWvDRLU5w5i9zoqkMBGSsIUCa5mXe9fdfxXzl0Xvetl/EBCABGCPlnwuKcq9X+ecxp
	 hlYDAQ7MahbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0EC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719783368.18760.6596155689933774045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984d12ef91c556dc3e067c28e4085b53d10ec89dd47f6639b7d7c6080402bfca
Date: Thu, 20 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787197833
