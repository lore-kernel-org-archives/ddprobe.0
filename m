Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19815625
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758982795; cv=none; b=JqreaauIb0Icp+tkt1AD5xgg3DxkAW5qBU/lRLmH+enMbSTin8vaALm9Q9VnCbPqH9GkIilLoj8yixFjIYWkBnpyeNFVlHy3vq8LuL1sqotVEG5qVCT7S14z6CIJ6CkIls2useGyMiliGI/rWlb/wweWAmdnaZp588CIUDD+RVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758982795; c=relaxed/simple;
	bh=0DEZkxl8TwhCL0inTKSxZ82MTK7o4p0iYa2jK8pUpjw=;
	h=To:Subject:From:Message-Id:Date; b=VYN7M8WA51tdHUtuXbXK7VOjoUwmUfm9u+NX3ZKTKTvhP7AqybdE5fVruAPX4wttZWE9WEmqm6wS3CjsO3bafsWvfgUBvMWFeEVDSSJsKwatTtxN0VeJnXxdO00oj2L/fpyFUGzzAXdbBKSig8AaLl/TMweDEVwlkVge9dASv/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5r8x578; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5r8x578"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F997C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758982793;
	bh=0DEZkxl8TwhCL0inTKSxZ82MTK7o4p0iYa2jK8pUpjw=;
	h=To:Subject:From:Date:From;
	b=k5r8x578HSQVoOIlA3oS4KwanYKnj2TG6u/vOWkfh+aoCCOD7t4PaRZ8pDCfKrIkG
	 EJqx+5TKz42+syKQqy8QmxyAF5ep5zErTLp/ie7yvT/dwIS3I5Xqpx8S1X2Fy6+HzO
	 eYFlYZeHILaXbedmptlqa6m4NOd2YmfFzMvBbW1ycf8AuTxZ8R4lKbdjrF6j4r7eeU
	 Rw7aqacltU/FtHYo6r25/rLoZ7NSC5UYbQTGmK5B5bR+Dirqz5LsrCfx+BabIlMtcT
	 bBExr1/EE8ew1iYFveMCEwcAPrSsOyEsfrGB/TSfFhO8r3j5fICpunyaUzK8WYgEdy
	 Gvxd1p83Ye/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A9CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898279357.31393.13112824808093606185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86c716e89aa29043109a42bc300321d6e6c956f41f10c72992f4771e5aa69bd
Date: Sat, 27 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758982793
