Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CED28C2D2
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753160394; cv=none; b=HiN2bLMfrgvz2U9Ec+xHewaJBXUmUoDCiy2cYpwvWMWoCtkoqgyq7JX15Rp1tUdfOj3XVkfQYMuZ7aTR+wqUw8eUsHgYA6xbXEWIVoQhRbDu6vPcTKsb3BFuBb2Li7xG8crRV+xJc3Rpo+irNm56eF2LAS3lIKnoAZv41rXtnA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753160394; c=relaxed/simple;
	bh=z6S2Wl9ocE0dOOC3/ra6wD4VXPW++2KCkmvCuE3c9l8=;
	h=To:Subject:From:Message-Id:Date; b=W+doxUsbIZMkJI82QeKCLddQV9qBKW5xcb5m1lDnYJTfx2A5jNi2U4xpDJsdKMjrldSWvZ7tlk9tk/VG/AuHNkBzEfcmUpcS9eI7BgFCfguoJq8/MS1foaViJzI5tE78gqzbhsnptlP0FwjvOYHDSWMIdDngfkZ8YsCJSlTucJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGEQKV+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGEQKV+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D98DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753160393;
	bh=z6S2Wl9ocE0dOOC3/ra6wD4VXPW++2KCkmvCuE3c9l8=;
	h=To:Subject:From:Date:From;
	b=DGEQKV+PqGVdjBOtnMOqumCTHz7aF0ab9afgcLZ808HcOe4+USEniBQQ19hgAhRUK
	 weMFb798GON1Te6oa0BAkKofAGn7otowVq58LOWfBuSjBAeTEymQ3Lqp8gmhn/Bh2x
	 qX/j8HNwfLIymv6ONBmC5Alk/mLGecrsUTAL45to7lDhYMlZhkcLfiUUG5YrIjcxUc
	 XnyT3HddDJ65iGP/0GLZGO66mBEN/RKfXJ30guaX0XXEGHosZRXJS8n7T4gnvyLTga
	 kt+eu8CarB9r2O5RhDpZ8Z6tVkz2El5Tt8ITXc2KAg0W/0AvDUNTCuDrZOUwTbYiOi
	 xB4DEPGuRdP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C6C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316039357.9166.10052514833729888592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b36e0b15153c497b0531450ca299e067d4f280a6e7b49bb6c914e38eddb5e6
Date: Tue, 22 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753160393
