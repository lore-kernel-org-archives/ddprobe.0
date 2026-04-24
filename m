Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E273D2DCF67
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777024054; cv=none; b=FpcwMxWjLbjCnaF30n29s1r0A+158/3/xCbbdbGP061TCKZ22adO27DB1n/TVai+l1FmmtqK1NpTkHenlh43HpJ/CyAoKeyEGZZuNcuq4mzbdBazYq1U+KTipBV2O1k0j3u2+0qVCOTa99kBMyAHp7LInYrvk3DmrcpmNpn5CH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777024054; c=relaxed/simple;
	bh=j5y1UDpitjPQAE7c45L1MYIQRS9nVmYZDbou+8owccM=;
	h=To:Subject:From:Message-Id:Date; b=uoj4klFdjdoPX1J4kUmpC+KWle3tbXMnyQdiQSamsNpKaIwiQs7UfU9xEMmUzZ3vPkSsd9CMlB6AAC5E50WkRHMUAymBdi6enxWZInzp2IAUSfuouU2afm68tfOQe4hlEcOXYQ4rqQo0+xzOESuDhmQD08QfGsFV2q/0Ftal0u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQiVaw0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQiVaw0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAA2C2BCB6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777024053;
	bh=j5y1UDpitjPQAE7c45L1MYIQRS9nVmYZDbou+8owccM=;
	h=To:Subject:From:Date:From;
	b=nQiVaw0mxw/NTwW1Dh0BkS+4/TFduvCDNT2841CCII6IVlUyqfqxzOgvpdnr+X0eU
	 rKMDqUQMoDeBDiw6bco6fkm0UcFHEbH1BbKzTiKfy/xpbj8mkO/lNs96DKFoTPLtYU
	 UbOtvjfoDgbCUWKBxR6wJqPqRO3DROh8Reo/rxxgSh40iJbfs5C66BF2xDeDmbzEJi
	 G+R/4XcFaF/YtLdg7fEF+ixVVtlKq/dPsRL8bjiFVIOtkGEi1VbXgou+kugqRxn7C7
	 QnB8i0LCvKNOnfR79dDJbwTQmTa5xraLPAREWCk4bUFTdKD6Q6FDa3jMghu4Bit3hg
	 CM1a30LxfcEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB245FE51F3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702405369.20832.17030026765906525122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693220f5638c13e6325223ecf61b3a1e97233a8482b442b72bb13453a7b6cefd
Date: Fri, 24 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777024053
