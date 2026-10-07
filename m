Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BB036DA00
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791392434; cv=none; b=AscY7yMLHr/caYl/Vz/GGhqPNmMD6toRidpOy/CH4vN2UEWJIq/huN4wWh0uyYPHsAuJ5Wa7Wjr+Y/cLEAG09Fh+ENGNwFmHJ7c4aOA2vYYGSc1QL8ehQZIxXGi6rAGrNIHFae+gz4R3nxo0nRTMFti25h4WwmCglsCKNC6V0CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791392434; c=relaxed/simple;
	bh=FSccFj08ZIWt97Zwmm/CjZIu2+fXb0hGru3f1YPFlYY=;
	h=To:Subject:From:Message-Id:Date; b=dI7e35h2iUwbi8VwG9MQaClkk+4QxB1Cg32zd62VGPisqW4s2T6s5BwiTh6vKXMtqpPtQuv6ghkVLAAGy3UfsxpgPruWSw+WrYs86YjWnLZRI5D9pZ6xyEF8Zf7aWIY8rWxqYvOCpDp6QdRfLX2WE5Ok61mB9Qvxoq6RXzPkkR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehe0EGcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehe0EGcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2143C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791392433;
	bh=FSccFj08ZIWt97Zwmm/CjZIu2+fXb0hGru3f1YPFlYY=;
	h=To:Subject:From:Date:From;
	b=ehe0EGcuPvgWrs9q258DNhUfNYeeyh7jMz0i7cqoe/278FSimhn1s0lDeTv/KrWQR
	 zCccwKLoYLweEsjfDhiws9yXeH7hj6aT7sxR9TBU065eQjvu4Apn+dA5iuEnooRD/n
	 Li+/ox5O8xKeSxarEZsCP7X2uttdNCfwA/L2S4otoMJIudfg3Smg7rKh4GQg0MIbVr
	 uMn2rMXmmmMCSOSVUxCmQL7sD399B2YMPH4X8u36285Q25N/vOa75HGKUJL/HV0vu+
	 SNw982UvqK1KMpq4iflxpcaotEkd/WHTGSEQPVRpbDzXyW7TAn8RJUw8NHOV717shT
	 p0a+HTVB1EmXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC267CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139243369.13289.7729097558726673503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3404d03c8b5bf7aa0f987742732ed2efd37f9485f5976053359cc7f006e143ab
Date: Wed, 07 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791392433
