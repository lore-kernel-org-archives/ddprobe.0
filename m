Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C984316910
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764776574; cv=none; b=KuLdPNYOCtyQ2T5qIZuuPtyXIDqFGdsTkhgnyutbi8Protv2MX67eTx/NKInXuSudiP3JjzlU4eAjhVAU3pNDXNudeoZAtLy+jtOyRyJ1ZBjei0egdS0fDj6ZmeCEGzVsqw2Vy+moOC4aCb6vN9Wd36XczjMOB9zR/y6k4quI5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764776574; c=relaxed/simple;
	bh=SDwR4d4r/XPVN7/uZZuwdWpcnGRVL9CJUO64uznPPYo=;
	h=To:Subject:From:Message-Id:Date; b=IgBk4jku9DtuZvzpsH/KUxLc26JOjayGXqsUPeNofqf5+EDYG1GIvAZoDtWv6lKp9lQaZGy5OpcK/962ld4o7TcBjHMmE3/O7kMFw8FTlGdiyjCWKAb3ik5o5hOOHKbLaTtpdZS0vIJEXtQQta4VTc274bBeMP26JHhL7y6srfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k854nHn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k854nHn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFACC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764776573;
	bh=SDwR4d4r/XPVN7/uZZuwdWpcnGRVL9CJUO64uznPPYo=;
	h=To:Subject:From:Date:From;
	b=k854nHn69tmVynXpDg3oEFcI6WPljkvfBZNSWOJzswwNmhzSPda2ymIc2IpgpBpV+
	 O9aib+y/GHrssKgh4MbbTL/vlvJJYsD0lOWx3T8v7+YpyJMlcfspGQGEclDhNi3N+V
	 Zj/7ltO5hhRreEXDBC1j5inDijmPuhxgWDX1SnFx9w5//b6nnXtkbUEzq+l0y0hT0t
	 v5rWlAwnP80+ENroS8zw/7qnH3nmxFnXepctFKea8bY/UhBNFEwzKkqyRC7Vk5m87b
	 HliyGxDeGcg69Y7T0fL3+h1SZOiMS5C3WmfycO0YcpaYMxAJvbHSvGXaxpiKSG0PUB
	 NjpgjaZ6eKTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D72D15DA1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477657358.14892.5727693062015940182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac19e4d89c1a2b686ad05d61d492d0b9f37ed578e55ec7fad6a3e62bb0409698
Date: Wed, 03 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764776573
