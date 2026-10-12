Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B343932E1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791840634; cv=none; b=GZtsn4ttDNVwHgd1Ps/hYmBWtUxy5kSjT7UvuFtShq/cpaAG+lJpuOJBXLcBjdGfPDG36yJY+PSkbwGiyARPqHzQ8Ps9U0r4dRwFN0J00WvHCGdnogp1hY3UcVUISjed7K/soeWFLDK8YDolys2tEyGbL8smgG2c6x8vnBacNJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791840634; c=relaxed/simple;
	bh=JWDPyOMIYrNWqMO5nAnTy9xjNm/xUfqZcUfntMgaDQw=;
	h=To:Subject:From:Message-Id:Date; b=pMCrN5M5B516CYXKEX9m0rpCguZ9GsRP+EvURKOphOARvnglhET27Uo5ElyrVpnP3TeAL/k2bSa8KtNbcJc3Q2ZkUUZQsSRl0cilFhxMZrrpvSTotEIFxRgqmbVMSFCfYLNhv5RaSIYNzzAargdD7jUqkLUOFASjVsFCA+tgw8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyrYXoaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyrYXoaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FDDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791840633;
	bh=JWDPyOMIYrNWqMO5nAnTy9xjNm/xUfqZcUfntMgaDQw=;
	h=To:Subject:From:Date:From;
	b=gyrYXoawqEk2YWjq2aDW7AzyWPyJxqM9wI+tvWIsk9ppy5iwG8c2n8JR55C8e+0wT
	 4xN94XpsPlWnzztSBYdaiUEG8cMBUKanYoOMFD3ja0n9vVRRhbJEAjOkLQsuXapuEe
	 KQ7eJj3jH97ars3YTmAZXMSTl3Ti56MFmZpmpbmfF94ltYm4hTbSxhWZC4d+1t8aJF
	 pmV52JIFQvY13hWV3JuukxkrkoPZfQ2zcCa9wzPcsjOFTBkPpGq5SZXQPo+rgDqQ11
	 kfqnquvwmoyt7hrfMhorku5BNdyuUvV3/Yv7UlAw+61Jl2X/T5ONmiOOqt+P4aQXoz
	 YHC8elKb1DQEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC13DCA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184063369.32672.7171527015258975881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a485ae102ea6e83c5a64cf354f821000d71ac7eec2f75b289bb2126225d556
Date: Mon, 12 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791840633
