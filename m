Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E8C85260
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748566796; cv=none; b=NEzVTxH2SWpvPFDbU9m7RtjHhpixG8MgNnIl09fjL33W7W5BZOs5oODRkr1Tc8lElSAGU6Wr/i9N7+io8HwnoYYnNzHoaBuGhVPIsoBiQJkpAZnDYWaoomseSBWDdiLKU41kbNAzAPNvQz0HB2nTuyMzxqd49HfHJIaCebeeDhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748566796; c=relaxed/simple;
	bh=DURTesPxv7ErPgmmzlklgBfC6VNIAc10mAZSwr4q8Dc=;
	h=To:Subject:From:Message-Id:Date; b=bILm/QRURe9BKokPKL3OwxGjJZNGuOup+A2lujq4QfjkKVYLMr5860NJIf3rUtD1u32QHRPv3JMJ2L5J7Yx4oB7VHX9is//NJ69hp8t6dLxBuwFL/C4L1wvjPyCd7KWFG949BN6eCxY1YEJ/v0ZMPIkkfXyPfnR783rT7pM+8Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpAeLzGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpAeLzGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB2C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748566793;
	bh=DURTesPxv7ErPgmmzlklgBfC6VNIAc10mAZSwr4q8Dc=;
	h=To:Subject:From:Date:From;
	b=KpAeLzGnQVKK0+9LIT3GuednbH7uKo0XH2QjC+g++ZEijxMfJnr4pCdjg2PndZAXI
	 Mxfe54XXuu8nX2plL4qG/LQgeKFQRTlpLOJAINVBnKil46mUtgHTTXfu5kLegi0u8e
	 S5t0z9aVuXen6C3ZlFyaTBCtu2A21DpRAxs04BmwsgnVST+WoElh9kgk6EImJvbivx
	 yYc7a3uKZbk02RIzWHmYv2CLzf+65T+9CCDPEUQGuidOXQQqFvD/woR7VI2DYLRfW8
	 nk2mScv6OxCMrtPM6QlpRXkQbVgB+zdkPUlQ1ZLC+KARGlroyEHyLx11AHAAi7Zesn
	 psp7U4QH4s8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02FC5AE59
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856679357.15221.10548153595952221234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d47ab9896d6ce06ddf54f0b95c55250445a95737f02e7f4066a512fb0d1ee80
Date: Fri, 30 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748566793
