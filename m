Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D92143756
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754491794; cv=none; b=h/uvZ1JrTqABMfqIhsLupzBG9QJJAaYWurE+D2V5kaCtaC918PF/9dR5TS4zYKD/P+SQP1OLDq5HFhWcUjuk1kpGUnvgZ1hGUxU6sfhHWjQO9aPCQjIFwyj4YtgjeJL2MRBZ5zJqcHq0Ofsza62Nn7p/ArQ/FIiTYd1AYPqsOuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754491794; c=relaxed/simple;
	bh=awpHOinKKHJIzGNYmtc10TQKWaeuEt+sug2ocplwATM=;
	h=To:Subject:From:Message-Id:Date; b=c2i1+qh8WbYjthGQm3qe1aLlQ/w+cWLR8a1nSkLKszsdl2Ke4jUHbq30X3Zv+27qW1s9PhzA3VNFHNm5NASIjq/JsyNdOKY3MV1Gv/kRU0ATn5vUmpa3UJ3wPSblP7QyEejADQIFsv1/RFvuMYs+vSqJQYxIIbbe4f/D34s4VJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIS/xWS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIS/xWS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0085C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754491793;
	bh=awpHOinKKHJIzGNYmtc10TQKWaeuEt+sug2ocplwATM=;
	h=To:Subject:From:Date:From;
	b=dIS/xWS3TOqwIFMyQBDPxsNbwwQ94r64lyfqjIwpD6enm1CZHQH/B5wzBNpXCKoHz
	 XeKsYg97GcixfPSq0Osv1v22yGTkhz9tkBxe+lfqzkb0SYhaCKI2+la8jhRJeLP1XR
	 iA+XcKbe0XMDKcR6DeHeCYebv6nqw6MhL1SUBv6lTA7+4TaE11GeBc5wlmLHVMiyTT
	 ZDIIh+rEdoVt2K9p1yllcPqsKovCLu9QNAhsc/wF5V14IDePA0/jMrUMQ9FjIoRLGy
	 dbjQdkyu0YMUnWBz1Awzsw/cxkPuoUbBOyt5UGqycpioXBM+bAQL+FZKGGeA2hQbTr
	 J1B4KNpcIwFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC70C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449179357.7354.18246608444263253055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4881a9b335069140625c54280ef7ce2337c877c1448759d69da4d7cd2b7749f8
Date: Wed, 06 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754491793
