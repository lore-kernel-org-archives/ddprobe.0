Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7547928684
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719210743; cv=none; b=nwCWD0zO0ViPF/u51nvvMPzc1rYdD9ok4lG6bck2ERPsaaryTweOKJN5/lNkz/P7/ubdiuBT7wAgQGFtq+p1n4Rj6t3ePtwo8EusYT0BJX1deApKMc6vo1MscVSYbrgp+PL1RfGmvyMZHDCWoJQQFS16bfGgyuk9djqn0Z4cOLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719210743; c=relaxed/simple;
	bh=aPKOOC7gHqAY5sV3ItTi3dT+pPUqdhkuNbdMzPUvZO0=;
	h=To:Subject:From:Message-Id:Date; b=ehpbyo5pCJdzL3YFn+eXXgtyugwnSSAAp9/Awpp+mQowuoZW0nKeVG79RpBoVxhA4ORYHqUeBPLv7qjEV1AsjjF23RZNRgqxDmuzAom1qqNXQbEpX4nV1tTwqfUzVVnA69z5Cz0OxYy7CtwV1PxUmNuyYsC7ryG72iEGu4+DNlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqoJMyLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqoJMyLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0AFC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719210743;
	bh=aPKOOC7gHqAY5sV3ItTi3dT+pPUqdhkuNbdMzPUvZO0=;
	h=To:Subject:From:Date:From;
	b=hqoJMyLRif1kyt9vBFzTDC/3PF8xrBPCyPQraYKO8JOwYBRCPUgIOqH4eg+QB6+KC
	 Lqx2aYemYBvRpZUgTdrspL5758PC659UOM3/SKArARgn7o9cIxQKnfO49XumeUxgV0
	 PMV6NLVyATYplRDhSe7lA22D8hFBs/1lwdoQ5OvkfahOsGZfTSyrMkch0E+ry7bloq
	 kA0wzsOfNkasiJnzE8Md05ffhkv956LzrO45sXN0D+O5cZd/GPdDiavUzLvXuDJFXB
	 NsnEEVDcZUw+htUyON07pIpEvTnHZxz0Zk5VMuho1gsoLNtd64Tonk5mLIwrgMlElX
	 2/w9FpUgZkjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4986C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921074282.31108.3952079024280049725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e823f370168c3d3f67d115ee554f8744bae9db92605b7c93fff9098a846539
Date: Mon, 24 Jun 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719210742
