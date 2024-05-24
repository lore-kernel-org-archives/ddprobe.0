Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6538C4A01
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716591203; cv=none; b=CGsCINp2dcafKlAoV+8pqN9Em5YipoDNZOfM4o52BXJW7tst+3/npguPfEFBdpf71tq6bZncsE75PFAM8jktJSAWc2loCtR+bajWWYfzJSo5q1PMYjmT/v3o2F93/M5FxbUJf6Tj+9grdbyg4uIITvmonYeccX+irmw3lugpB4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716591203; c=relaxed/simple;
	bh=ILOfySIyGAEUV0PrxXVBsYJmyPo0PxRa8B5mGU1+cP0=;
	h=To:Subject:From:Message-Id:Date; b=I8977QoytdhV/6+2K5K0SZvd77x80fq8m1XzlfYa9rTpCXI99LwI0omIQzYxYt/nHSTQjDarSHT4p5ENyP/UbSEMeDRUj6+5/mTohLdgdd1SukXuTTxO0WxHV16oYqtPRDFBynHkEgVW0oev8uL2RH0qH8C5XsRIUk5MllEEvTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT9/TdWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT9/TdWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0D7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716591202;
	bh=ILOfySIyGAEUV0PrxXVBsYJmyPo0PxRa8B5mGU1+cP0=;
	h=To:Subject:From:Date:From;
	b=KT9/TdWAZ5ZIOVaOTR2pGUQl8QgV9fs+hkpxwiWQ4IkPwQBFF2G98iy5aVBGO9W3S
	 vgMzB2UdP0RVysL5OLCB2Y3Q1OMRVLv3NxHri83QLUT548RO/hvAuxXcARaMkQMz/G
	 ZzX0sYQRrwy4cyC0dEdq38dI03SomeKfJsZUg2k7za7OHIc92jeBCNyHlYL+Wuft/o
	 wFioAMvShi6yOTnXRDyI98wlH6mOqiJm519ItFSvwDoskdrdg4rBdkUxa35WIu+2rG
	 IXw8vxk3ydfOMJuX/IRQRQYIJlYFAE1ciOmcJiYP1uW992v/ZMRnaJZhcbYk5/4Xr5
	 YtB++DvAs3fLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4194C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659120279.10018.15313787016217341862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdb076b890b71170548fae7cac4c7390ad677aaedf0cc6fc27e36dc2815f10d
Date: Fri, 24 May 2024 22:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716591202
