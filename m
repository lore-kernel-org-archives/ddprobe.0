Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFD243AD9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725553554; cv=none; b=c2nr9Jg434YToBXT19ikrX8p/KnJoZAGJ9QZgrYvGmD0WXvjLp+Cpl9XwQZRnXTIZgOYMlzKGRXRPKqCnUJK+1jzuK0EkT8wOPuyrcXVXHAvx6XlhfJDC6k/nBEw3c8ZF3qOKiREmDCMRB1WxKydd9alDU9BELjuWJTIMyxai9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725553554; c=relaxed/simple;
	bh=kOwwuaEh3ux8JndK6s5PclyWvkkum0ocxWH+qEFs7tQ=;
	h=To:Subject:From:Message-Id:Date; b=g56/o9+F4bUpaYpS29fjCpuAvjW+EHC0fbgepn3XUH4BF193X4qcLxws2CTYd90pnZPR2dvd9LETrgMyqauhFtjleusDFI1PtjdSLqT6qh63Eg0AFqPHWg16byNP/fV3IqdwaA4iQ1kV6llxUULVc868YnltJk0/NKAutij5CBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nySAbg53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nySAbg53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA536C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725553553;
	bh=kOwwuaEh3ux8JndK6s5PclyWvkkum0ocxWH+qEFs7tQ=;
	h=To:Subject:From:Date:From;
	b=nySAbg53MiBHPUaegDmavFlpMpAQ6mSVSOhsel8Jfd1n4Ef0EoO6LaC5a6cL+XtZn
	 wJjpbXHFODYK/eInIvaT6hkU/lmnAAZ00SoOhPU/OpeJifL7ETPLB6IUMAIryFB6G8
	 shSbPKVGnlCpbgYboMQ8jfAR9dAIeqof8vgmNN+11ssCFxR6Y+bofAJpFLyCpBEjbr
	 RzSm1ciDvhCs4mN677KjsVCwRZUiTVz4ZbUZXNHpG5/7D38wIQu8HZNFd3nMTxAp/Y
	 kTkYWCjFuSzH+hFgM+uSrE+Yn2jSh7tpDLJyz4yGopmVSzhPcXeZCdlHUkdOZ0TijE
	 hfQjaONa1FCpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99168CD5BD4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172555355361.14225.1573907336820107380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d2a47f808cfc9a23e0a7648ee7c184f948475ca785ac16e9b9443495c6f024
Date: Thu, 05 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725553553
