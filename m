Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BC31A9F83
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775398534; cv=none; b=Wdl5epcRx3DzVmax3/9XI303HJez1C5bze49vRPJ6NXxAuTTl/FRpxjRmVWPSwreauVi2Y+GneO33S61a+jU1DlqXFZ+adzXQqMiFbj9p/D9841C3nwvXv9e8ThyhGBe7hIpRiPVYQ9Kv47Ntk/NsNdPpOEoxs3S+0W6cL78Iw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775398534; c=relaxed/simple;
	bh=cMmk1rKkQYUdi75+MBfybbYx+M54IB1GyPkF31zehhI=;
	h=To:Subject:From:Message-Id:Date; b=Fq61hfqoQARWLKdO/7sWdhEBCtuf7B1Eho6/xpo6/rlz4EFZvrqTcKYRTWUBwmeCQc83lGlRap3NKW9nQiK0e8Zb6X/qgIse00USkZOw0RecYH1t6dZdNXqxWG0CcFmXmFrX6mempinHmO49BvX8kQyzEO/IsYIb8BYNhQjE5wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F607gZ9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F607gZ9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7A8C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775398533;
	bh=cMmk1rKkQYUdi75+MBfybbYx+M54IB1GyPkF31zehhI=;
	h=To:Subject:From:Date:From;
	b=F607gZ9aCHdr1qYB3MWzn64tC1n0mafCgcwl+SC7ONK1X4riDz8nD0SgTnz4QM+nc
	 wwKgjyaEb0bJizXg53Vp1/TQQ8+JUNq6goTZDK3fs7hdUqx9ARXpXT3U1sGlWXeRxG
	 u9vlz5O2DSzIhsvWpnflXBzifw5whGIyUsBSFnmKiM4mfiulMnyimbP/Hs3u89iYsF
	 zfir+Wj7cmZ1TxmxGLpy896rBBDwHcFN2J8CKj9/vUmpDFv+aY/PI1AKt88vcya3vy
	 ujQl8xps+WQ0fyiVe5R61KPq12+XoX4UQwSDWJ96xL4vYFixH3Q0DiZ1d6fgp1gsek
	 d8zlV2rMQmx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB347F5512C
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539853368.3968.15353034121207795179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1d2135191a19a5f2be81f3033a57b3298702e952e7ef3fbbf88a5a4bad0e32
Date: Sun, 05 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775398533
