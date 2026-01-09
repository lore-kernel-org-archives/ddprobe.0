Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DA91DE4CE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767925434; cv=none; b=BqIP7/++WajjCXpqgDhle/tY+F4ipPjLRhQrvCfrq5dUroDYZJWAvlOyCnShosFpGLCsM4MSB53/xED9Ft6ICZB5y2IsklheBy2vm/O68v7UJOgXPw1+57MzrlJ3NRo/DBLHsmMFqpC3cJFtU5cMyhNFahuDO/JZsJNZ85qhuQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767925434; c=relaxed/simple;
	bh=BONLvIr2mp6Gv+6g+zL3TWmr33pPih5cNBECDQIeMaM=;
	h=To:Subject:From:Message-Id:Date; b=FTTa5Rfj8pCH30hJbyKWupT6aUjelV55jL4Vjgtpw3yIESAkwpJmKNTQFHAqssJmP68cfRABPvOJycUaAMNHaaX3Fg8y2nD8URZmXIoInbYoX/c8yz88vIkS/SY16GuCvWnHy83KDcU0xtaOWlGsgUYA564JTomfKdmNVp0OmZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrOjvH2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrOjvH2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E02C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767925433;
	bh=BONLvIr2mp6Gv+6g+zL3TWmr33pPih5cNBECDQIeMaM=;
	h=To:Subject:From:Date:From;
	b=LrOjvH2+BU0R0DNNjU3c6yLedzE17ZDEbfpdM74Xs0ubFkEWbTmI4T4r1MBILVrWv
	 lKOdTAHBpJLckWtuRJt+YIsKqdwXLzmYyVBmipGBTuiYETX3UWsm+kMaFvGJNWiKGc
	 Bm7coLRf8f7DFL3XE49pHdnzv6YVKV520r4VpYM8QTq3x6GPBF//UZrjHl6yNRZDR1
	 QNA8NYdsDyxicreBWjt3seS8xnvF6GyqmdCl7zofV7pCR+Sd8RJPoTcFkd5X3Ccrgx
	 IbyW2htyhinRBNz98PLJSNkiuSg9i9aWB/O/OLmB2Wrrr/LaCbqFIVsqd1vOqXCW+J
	 Jy20hTPpuDJnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F8D232D0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792543357.10106.8647183531375501998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6758490b0b0b4373c813ac71daf0170128f9a1f41c0509a6a90166fea933118a
Date: Fri, 09 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767925433
