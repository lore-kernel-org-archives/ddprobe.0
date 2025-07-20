Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2720010A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753049394; cv=none; b=XVKseLNt3eEq6oQ8kLkDYghtQx/whR7UeLMDFEx5+v9qmNt71V9TMGfyftL2c4nQNI7c2zw/qK5ZRxhvxmI8leEPC3Z8T8lePJn/Q7XqDkikgk43ItuPs34qRRItWO42axCim0fHYHfkiX65G3o9j62+bYOv2UIfpFmYLyb4Fkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753049394; c=relaxed/simple;
	bh=PHzRHY7Mifl9Et+l3pfLapHF2hebrg2ecPpvH2jGuWU=;
	h=To:Subject:From:Message-Id:Date; b=PeQJ5o6VdE7JmbeSxXTQ8sjd8QjqS/D+s5oaTfVv+lVQMOssY9kkm1zHycus/wBKXV3Ho7VSQrVV5r0uNvfmWnbdR769KDI45D8zmYiO16qXiLI8iXsVGUPxKtpDqVFBA5iAObTQHtR+7Af6TMmOxRRzAZlaNKDrBtp2kyX1Ejo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7js0ArU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7js0ArU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6342C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753049393;
	bh=PHzRHY7Mifl9Et+l3pfLapHF2hebrg2ecPpvH2jGuWU=;
	h=To:Subject:From:Date:From;
	b=g7js0ArU7Dk8GiTvqcIM1IWe2DrEkUUYkHJb3ot4lNcMKJS7FuSkBGIyuBw1u/5ND
	 x64Pqbt/t6NWMFmgNb3fX7u90RdPUoEQpaozlpQ5E7kAbulEneuOblrWXWRvirPPMK
	 +3ZIQ88vjEaRorX3JNYHkJRM7KVIhZF9T7dHGfnQYbqIvS77+YGBhuwbXxtL/BrAV7
	 A3VWcCnP0Rb6HFBykYr9udhwK+mHB5aAP3hbO9YGkDhxthhE+hgk9Can9Eos2pzwI6
	 +2Yi7kBe+RxsWkqr0XhUHExZKcyBE5qk4ScpQ1ZWjcAabYfCr84NBsDa/rxupuxGJK
	 tiE9DV4S8YcMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECBC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304939357.21676.17131540616460306553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc203d73e46de412938db1c5c1e6834a513cacc915964a482f0bd913aca83a9
Date: Sun, 20 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753049393
