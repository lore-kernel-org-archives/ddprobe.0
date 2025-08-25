Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABC82FE59D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756131595; cv=none; b=PSMrSMRotCCpolEhLQEQUXDQJVFLlUFg8wIthJZyHJ1KFnlrWALJ3savm6icl6JEr/Mlj6RsLjngmGf3BZHnku6AtdC+lU6IyC7GHq5w1bmfW8iSHJjyglqtftc0iv6a2jL0jeLyh+l4oP5+TKk74daTtZTXWxRQh7ElqFRyh1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756131595; c=relaxed/simple;
	bh=L7o6vkeA2x95NBMC+IBj0gZEDfFWVucoF2bzV6AUwmI=;
	h=To:Subject:From:Message-Id:Date; b=E98FxyY55ujdPY9WCpMTtay6RBqNl3Ow9dtppMBtW65fO5yDRz9w1irty1TL7pPSbXNoas+/0W2IomXL1IDqJeXMbLMF7UFTUk06pDBhpqG/aAbVf+v9MP7Rfm0lm+fn3Oe2YGKZ1PSTVobmiTyz7pjVkWyh2LA6OnsX/j8wlvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eES/MKxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eES/MKxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F43C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756131593;
	bh=L7o6vkeA2x95NBMC+IBj0gZEDfFWVucoF2bzV6AUwmI=;
	h=To:Subject:From:Date:From;
	b=eES/MKxhRUs9L/n07woc86W3GmGVZRLEmkxHCiwhrhnMJydjR5PMoj/RKO8fiKq7P
	 oXUzzgthoaAjQH0UavptLv+L1Ot2tTEvayhRRtKsTznGwRKakSCM6+t92MY04mkwI0
	 cm2VgGIXJYursWBwY60FW8WKmorNuEE/2+9j6UYjQaIvjzMyxGrgLLtJ0eG4z4hYDw
	 1wO4CvyCfIshqZfd7uCLGOsNbBbqBXs/JWMDjoEG4d88z9gGNIQT/8vOzxCkpuEzVz
	 y0hk3zUgAMrpwuzVxiFzK0yyvaqorULNNgpZ+nyDtmYW027AdbboU9TQgaItfMSHG4
	 4r0ajXj2vxjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B68CA0FE8
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613159358.28309.18176015328500521066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62dc69c94d5145323ffc0ee1bb01e42279b2eaaf18d4ef3f186e66856e18306d
Date: Mon, 25 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756131593
