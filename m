Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D9B2AE8D
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778383234; cv=none; b=VadReSpJAM66SzotU4QPxE1P4Ouu0D9bUlof1nHN27ap9T2GZrUd0tXU9U3a3/5yXAVJQopQccQRfiD9pS6aHtjPSbijejPh9qRuPBTbmHnahJ+2Kg7jacWPZuEKG0hGnoX2GC0RtcfKrPJGCMrwLBWFcm/Jydbuk1xwl1W6plU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778383234; c=relaxed/simple;
	bh=6dXfxui5PAgHZ8OGGeuJFfY+GKcpN64U7CPjRosc63g=;
	h=To:Subject:From:Message-Id:Date; b=dpTGWnpKyvdqUFpCVQw1/c7MZhBHxMljUyin6e5bXbNTCgZMqpcDJuHNMiUiruXoigGjsmU5TCtdao0ZEssfl9t7FglE00dYc1yHSZSLvZnFnFPVzDT33BjY7nWgslqOhlLf/J0Xe3111dwmVz3E5HOQK8Dq2v8FXU9cJv5Cq6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhnujc46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhnujc46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0199C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778383233;
	bh=6dXfxui5PAgHZ8OGGeuJFfY+GKcpN64U7CPjRosc63g=;
	h=To:Subject:From:Date:From;
	b=jhnujc46iIjc6mMdRUQ0lSBxXddZYHJ4AJEhmWgShmvd7HMyh0F2xOPJww9Vf8ShE
	 AKvqqQORVJnQl71fq0S7h5Yj87fAeGcDv0eloAay3c81JvgqFtk2LB1LIeLGEAlTvC
	 tRWzHHFiLQOjVhE38hHjGF/wplQdEGd1PgtoPMed1dh/xAZJHqkr23QhON9io2x8Ia
	 OaRdd0Kwwei9ZaQKs1ffrHOXVbKFm3//2B5ji+cNt31l4YD6UOMJUt14bVgFYTiuT3
	 0CKcFEI3IjKH9JkQUZhQB6TfNkxD5i0Qhtc3HkDs22b5JH4+XIF16J/+Tq++2I8TWZ
	 cfA1GDzbUEuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A8CD343F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838323368.17604.14999946523335337732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a95ae142846842c4aa938f3e98a9322e7c50562fce90ffaaac7590f8723f09
Date: Sun, 10 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778383233
