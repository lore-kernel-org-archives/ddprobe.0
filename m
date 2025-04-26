Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B1B13633F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745656195; cv=none; b=bGg0MFlb1muM2Ygt7DMRil1hiNnU73lTgIu+8pM9q5F+Q/AwwrRUXEiO6cGHpOOSrxHL2bZzSRtqY/+wluo6In91pxuKmqeT5KZBgTTA2n6ke0q4kyVHX7i3/ebRb3pBW3ubl69O83g+JX7eye5Ku/iAqMZE5NQqAnx/oWlGrag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745656195; c=relaxed/simple;
	bh=gGR+dtdEKSAjeh2Ur7Odix2HnPtAEIDtZ6+KPZ5k0mI=;
	h=To:Subject:From:Message-Id:Date; b=jdKNLulmMjkCAzJfntjpZytLK1GaExTrsTxnSTeeLnEZ0e7D5xlpJiReEnaKHVwKQCdO7a0UEAPMPtPA70wcZq2Pbs9GSJSZp/GBoXmHTjdnIuYscXorHuNAuvSC6Ra+IkR+3cAjChxxy5J7CUy14BT0WXiCC5UbaxUuIXO+EX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HU8PHHnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HU8PHHnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B84C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745656193;
	bh=gGR+dtdEKSAjeh2Ur7Odix2HnPtAEIDtZ6+KPZ5k0mI=;
	h=To:Subject:From:Date:From;
	b=HU8PHHnu8tXYgLh1k55fCTddhCXrVGowXXFMX7ab93nLLv0zRI3GcQhXXynemZqEW
	 WnxO/BNWSCZhZONn3mW0JolkNyUXv1VgSjn5sqdEwvFVUqHE/qUYW2UWIyzaxqqcxL
	 HSX00U5yyE5Csy8MJyaIWWBIn+P+v5+NEIM+p+MpLmNDsuIC9c8eNq0bm1h/JRFRcu
	 g6OLhctWujmvtw8vdCLMsycnJBHPHDEBKZ8c6wbcESgb56nMwQirSbKwJZP5gL0nF7
	 kaZvdu33dyLa7SGKBUkbDnfJ9kWNFO6BLRTnqLaQh//P2lfzefubDUiRgw6sJAZt0D
	 m8vFSzODM8cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A72C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565619357.8543.4212625532674944915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe673d954a0b5684d2019ece9334d4fb74ef38964928937b65db9b956805d98
Date: Sat, 26 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745656193
