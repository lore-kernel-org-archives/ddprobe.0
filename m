Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2465C372057
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780320274; cv=none; b=X3pHnIKchz16K7B/5WDyyEyUwQe/smR35Q/kf1BB0Np0G2JiHuhECpmMp3J/FKPjx9NxXDfoj/CE3sre3xdFQweJgRJ6x2bdxARz4bey9/+IzOHR1YMQs8mwq2PccTanAZsrbxXUjqUc8uzdpbwhemIXqf9GiuODSz1upBzaOOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780320274; c=relaxed/simple;
	bh=5Gr3LNS4ngKBpeNDAQ2LOAgS1qi9LD+9QVH+01IoQVM=;
	h=To:Subject:From:Message-Id:Date; b=OpW+o2xwobAyKKs1x22fleUnGhvlVKkPQftEgz9ja/RZjwtFo5Mo5yqsxNQXJsozwIA2aoAN2xwHjxAONNgj/W2XspsmAQvkU5zhMY2J66dM6pis9hv9zuQCXd9j9wBVc329DTGbykJ2o3z8qCcvYif/yOZXFw9XnhejktYwYMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVTvvhrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVTvvhrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F2AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780320273;
	bh=5Gr3LNS4ngKBpeNDAQ2LOAgS1qi9LD+9QVH+01IoQVM=;
	h=To:Subject:From:Date:From;
	b=WVTvvhrrIvXem1q73lB6QXLuB5j4A/AxwTHPNMRoghlX7/dtRXZWYqUnseV6Ubf4E
	 14ZWHTTaNurQijQ/PaAHm7jVLN+xM66U/9Dqb6lg1/NhxaGHgWetIOKn0K3eaN5aWQ
	 hpeoGIM+RoM59grS8PfiaSv2NTUp1jGmnxT5mNv3cRtb0i9LBQPr9H6BLeKO4lEQsZ
	 PD145+/JmfCp2OUbaTflKjSgkUSoUqPb/vpxNrOg+ttg7KrDl36kYzoqQe42NetVlH
	 KMTiAZN2+xQ2VEGSbYwu1kbUtELlAZdHsaXVRdaWu+1KZI8yP9ySDYzS3yZ8Kz3SvT
	 JMRsvX0TSmvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC69CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032027376.31317.3325758751133261524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86138bc378eadffdafbc9ac1e9f554b8ac95ea3b628113ad945c2dc06569a016
Date: Mon, 01 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780320273
