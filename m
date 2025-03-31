Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ADA27726
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743418795; cv=none; b=RqGzGz7eaFzjGiCQ4v73qw7H50un8C0uRT5wa6hNK41AIzWIuNzTrCn/gVe1gSMP54CEx9YTRs+0OyVxj7bcfmb7Cymg5UQ0Y8zODlXd79jhfkCIfIhiVq41cIrucr13oTczih0FtuuZUuiEW5MlhC95Lz1ONncRwINZeFbU+KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743418795; c=relaxed/simple;
	bh=k8IaUksgvINATEQIfyiMUp/AAkZZWHahVZGrOGFdKrU=;
	h=To:Subject:From:Message-Id:Date; b=hkTXI6Jp4V9pQToLxmTyTqm8aJ3fya+n0spzqAd5UfMpytUMYyyKoPzpFFXyVGuaclhwDolB3RMNVdpLru2e+jLAHxLo2AESHy3fq31C/mgt7LOk+LOwOnlp+IDvwhZC5/uskhc60tu12B2k9JwtrotIM1IedrpqPAD7jdjthlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFYMLmax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFYMLmax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC6EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743418793;
	bh=k8IaUksgvINATEQIfyiMUp/AAkZZWHahVZGrOGFdKrU=;
	h=To:Subject:From:Date:From;
	b=KFYMLmaxcnsSXaeD9aZKwrQ5eckyWVX/jcky9GOiNNRF+eNvbHgal03P7/H9dYuvP
	 +s7Uvm1sj4wiot8eppYulfdFurU4/qkdrSLnsjC8vtADIhbJlg+P+1jnSa/kNPv7IZ
	 /ZOJMFmM5XI2pb0WYcNwqBs2Br7uzG4HlaEnzS+xYzt+ljRPLfCT8W5Q2WY55GMecb
	 vox3oxKZQOo+sYrhW4UBt+E604bzzHPP9EBIt7XK/aY65MAmBCZFWf+XMWc4anOpn/
	 bixWzG5kv9YG91Hgk06YKkuLOBETUCee3ZZBySj/k7OkHz6w9dcrH+oq6aS53ZtHw0
	 oYDxBlMxeoSaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD3DC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341879369.27203.7952838250482208270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad53181f021f5c28826865e5f8894d05077cedec67b019dea285c571a40e6ae
Date: Mon, 31 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743418793
