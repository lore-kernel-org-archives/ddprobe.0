Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBC73D76
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748036994; cv=none; b=b++vQ++5KPemWVR/8GOK2GJOksyr0pdWKLd5SO4ZouAv8RElbEMYHRnnPe/Ch4R4KgoIkkEA++knAeonR+kyM73rZh7nd8km6neUiQkwsqRZ3Q+Gzw+mzK3DtcpGwwRKSynRSSO/QOrVbzItNFq36EFl80BtS2VR/QnojtauEoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748036994; c=relaxed/simple;
	bh=w1zsg82+f0b6VJxPv92zbfZx343B/l7nCo8R8x7AHBc=;
	h=To:Subject:From:Message-Id:Date; b=ezveSw/Cg2uUQMEmgm247Nhib6xySH573GSHxx2/acqhOKN584Be4qv9RfLb8otfoTbID2PWzbVVV4NOYhw+pXy2pjLAAKDf/F4eysM4OMPtF4IWWHu5CLRnB/s+ypLhMKwCtYhD8g7rd/6Fj7uz5KX3xP1zBIF9WJK7ylm9n/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzvws8tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzvws8tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4314C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748036993;
	bh=w1zsg82+f0b6VJxPv92zbfZx343B/l7nCo8R8x7AHBc=;
	h=To:Subject:From:Date:From;
	b=fzvws8tqH3g6+w6t6lrKmJ7kUM4F/UZYUiakSeouRfvWKvhOUiCY2jCym8pwjMXDX
	 xs5spxHneoxTU/gDf8MwIGglbewbZ3/4EW7/5x0IeHSNHgZSJkSQS8v3oUMzprs8Xj
	 zmSVmJdJHUDqOYI4XDilMyR0EtHkj7E3X3cbJccvxt4lGXPJhUsTTTRBaqY8AhIJEu
	 nVvAIJie1ZRjlyvVrvtsrbXv/sHATEfZ5cs/q8ccN+zsHdLK0yphIWJBT2yHj3oXcC
	 FoOkUlDRkeYKuUWmpML4NsDT2OIZjabCLG7PGgsYooo7g6FPkF1bFuaJIj8cK6JT6u
	 11a/C8cveAb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7FC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803699358.31476.16228846716539165742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78260f058ebbd2b1fc3227ecb4a52576b77a352d58eeb1aeaa603ffb79b0a0f
Date: Fri, 23 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748036993
