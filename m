Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D380E3F9CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736013953; cv=none; b=G0zqsQi0R8rLKBccWspDMK//zU5o/GdOIonaxay+c8NWUHX3QuGfOA7lbE8fhee2p1uw6KblcQ9IjcrQ7FvK2Nxd9NvSQc83ycf3W6Yi2v819n24KG+Qf1pZtR+oT948MmqlZ6HMAWRtLKYrQTAQ+W20TgyOS6rzbImSZHU3du0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736013953; c=relaxed/simple;
	bh=+3s80qlnakdrl0qY/4NBmGVLcWHiSVojvdRSOhQEVYU=;
	h=To:Subject:From:Message-Id:Date; b=bbqlEu3CaDoUZh4Zu+K0N8XwHA53FKpcXUMIMcgZTz0XtcU7xtA0wnjU18L6BrJ4pzMFyLQGXkWbEaibCsbgAqT0Yj0RQZZm8yjUXzbXwkk0U5yTppMt6VVHRoZfqN4KVjJ+oLHyNnbsNvLhA24flr8AFUw5VqPNpaAvr/tJNVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWHfKCMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWHfKCMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B556AC4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736013953;
	bh=+3s80qlnakdrl0qY/4NBmGVLcWHiSVojvdRSOhQEVYU=;
	h=To:Subject:From:Date:From;
	b=BWHfKCMFmS7o3z9pciMpaj1ri4zSWCBqZspYUAdeM4lHM3H5ng1wcfTU5D7QLiUuY
	 1SzsXk3MiX+x+VCrO7rjQ9QV4luwV3NejYI3n99QS5Cgjy6MoP3e6sQl2gBmjokdHp
	 swFtOqgN8HRG67KtlnRk6Yj6wcRfo/tS26khmdDefSOoYZME3RelLLlq3tAnIIfWYh
	 skRAtF2Dalt0+uYxCXV0GPWzRfmQiFEKI42A4FO2kWLNF1LRfNZOW0ZUu2OIDehV8z
	 lDCxz5+2iw9X43+oRqJEll9kIQK4qxJfHyeHanlpLqUbSz8LTeGw96dYCuQL0xMEiB
	 3PS4gf2zdNpCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C696E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601395360.17282.3943049184026939289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5c56316800179e76bc9e81e137e05bcdd3c13bfc2b25e0515670e4838a45a8
Date: Sat, 04 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736013953
