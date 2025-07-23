Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F7F1A317D
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753235994; cv=none; b=JbNFwOPvXjRYZp0q4pG5Q5z0zR403G4+WI33hMEGcgY8AtzM6KDU8zrkVFiQ8X79YFCwRI6xrUgCgeVh7BJtDCv0JbXVn+++dip0/Il06eGX5LZ/OyIj4muV+QbcgZcdU3RpfYRG23mPLVG/h43FR14FXSkPNQVRXCiRJ2ylXWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753235994; c=relaxed/simple;
	bh=rXB9b8wjJvEwNroEQsznZvGEIH1P86FmYxZeSPgyYj4=;
	h=To:Subject:From:Message-Id:Date; b=VSJKdVIqNHGL67Ll5iluQOeCT5my8Ir/fJitibMURm3wds8craWcoG/PVqGaz/nUQHtNDjkcUy3bF3Nkp/jlHohsPQbAPIBV3OQfrhkYcenfHCHItUJ9l9tqUPkU5QjCSHFEVvjpQDuyJA8A7ydHyymr1PWNWLQZu73JfFYNBZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lqax9ziI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lqax9ziI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE68C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753235993;
	bh=rXB9b8wjJvEwNroEQsznZvGEIH1P86FmYxZeSPgyYj4=;
	h=To:Subject:From:Date:From;
	b=Lqax9ziIA2xvYK8gPSg/UGx/dBkqeWFbrIztokfPRSnpBiiSXHqTXxuvj+s5a21yj
	 pvG3Qq0eBp0XLORT4Z8AszSCoNx2A+XuQ2yl2OEgqoljPmbXtIYzhrU8n5QxfD18Mq
	 9wPbPcWlZLwvsGu4BpXvS0JUqfdH++8DxT9vzKadhokA7stzyDDAQPyY+ek+dm1+SL
	 G9BG8BbUim8+LSnkGuRHCWmlQGTlVWrAXjnTgJ8S2Th0GHol0kvSztAf/44AWgnU0w
	 Ro2T932P5OgZve+qKx2HQG76xnhhI9jH7Av6lCH+TzxASN33JUb99YUvVzn1sCEtE5
	 qO2aJXpH2rU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CBC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323599357.1955.7294863672446223702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703e9fee22898f1025a67b6955f79dad98703b45e9331b6637764a756d0df5ad
Date: Wed, 23 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753235993
