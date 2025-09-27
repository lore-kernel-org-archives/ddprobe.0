Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D0A1A9F8D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758938994; cv=none; b=U/Vn34j3CBjNZyD3/XYS0xLeI7bujgMdFkXIWKgqnvo8eR1OQSK+M/WbU9/cINx+2vBh2CH6Y/N55id2VN+eYcexHuZelKMTz8Z7XPlGGZa/h0bWdjBwW+2Y0JZpR/e5Vv+x+OVD9u5WeSVVoVjop33YMWJjtti8dS9EkELad/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758938994; c=relaxed/simple;
	bh=75Dh3RME6QgVxrtK18eWC+jaIlgQr5DaSm+RWib3CiU=;
	h=To:Subject:From:Message-Id:Date; b=Pk1vYVDcqJFiwPkB6MJi/HCqyICNPp8ryZbn9wUFa0JYvWviUY02WqvehTvNLLlyGKnB6Kda3Zzk7e3WQDC7+GsISrlm8VyjSAIW6jgVVNAMUUNipsIFDdrT2VAwZ0s6izdmcZurZ8cM4gTv360D2xUnFFLrLtcNkcVzw4tlJMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSu83PcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSu83PcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4003C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758938993;
	bh=75Dh3RME6QgVxrtK18eWC+jaIlgQr5DaSm+RWib3CiU=;
	h=To:Subject:From:Date:From;
	b=DSu83PcShhLOcZdOyp3JC0YwtLlrGp1L32UK3bCVPbgT8asd8t0xhp0Up4g32gL6P
	 Hl+oiY5LHOJBkg6Dm/HqSvJ0MGgl4LHzR3HaovX7uhc78dB96MIe3nLBKe3C9TxG2U
	 hN6q7y2+5X8H+zgKBADrYHyhjDMKbQdT4yD9OrCMP6SuCfv1BB8ha/pkLV5MNYpmk1
	 SIb5gC/quvjDz/XUpk3LiwHKqvGWCTs3Y8Hg9UU/W5Fy23NrL2V2/xG1gMFhDH97QN
	 FyKBClNnwdnnuWKL1q+o/6r9GFeEpeInZg24KS8KQOFd6CtrJ/n4FWGrUUPBX+2F7Q
	 tSdA5KNioAmxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91988CAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893899357.6269.8971587429496039938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d1f1be963026e9d5ee1590ce88e956f105bb095eee553edaaceb0a9a195570
Date: Sat, 27 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758938993
