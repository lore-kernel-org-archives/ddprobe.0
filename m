Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451552F431A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749682195; cv=none; b=WUwXK9Fu7BqFt0JGsGi1+cjJkajvC/ECvD+HCIy4TUbfE4kpflV1QmF6VLkjPynt3QTJNYzr223EgImq73vmSW7B2xLaII/xb7+0Ea1lnXA64qOqVCtn422D/KUuyaYwr3fV3mntWbaR8J1gQjiert+KG4CT5LNCjOE1p8o2Rq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749682195; c=relaxed/simple;
	bh=7boBidPFF4jeB4Uuh3OYe0/tunKRAmSLL/1MxLDggV4=;
	h=To:Subject:From:Message-Id:Date; b=kcNE+Rk7ZjfW3SOvcz94eZEuWZgTUZC6ym0WDWwbbHhAvQkRivJX7ig4yYW4azQ42QWXPALjFB6GoNiQ0EdrqwsnOow+nJSU5RdAx2S0aDlJec6A4e6hdl0q2meUVXor/mK7Qg4upxWTze0wbKWMpn9hKEJWjd/hQIV7fah8Ayk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjWr3l6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjWr3l6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9D0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749682193;
	bh=7boBidPFF4jeB4Uuh3OYe0/tunKRAmSLL/1MxLDggV4=;
	h=To:Subject:From:Date:From;
	b=sjWr3l6jNMnaE9Py/4mmbkDc7fzQKZaqjKRVvQkwt0w0uVPysUfEN44hDcol3wzSz
	 Be51qRply7Kgd0t1HkcM9CgWCklPQme5xGqJygCQcKNHVE/8HVz11Js8Jo53N7plY8
	 nF6coEECysYTvk1Ob/CrAN/m6BEVvULQ5/nhVxss5OfdX0BFf5mpMyMVnhGtf5qnr8
	 w2Nn6P4q9gzUK23SONqdA9BEMaELhbfkcSppxqudiaswduJe2eY/qncxnafl7GCkGY
	 iuxLqprQYTeRbJL3f8urKc/coW6e9Fn+nlgOVH4c3qfdwtUoNXW0FsYWllI3zUjl2n
	 cu0Immx0f4p4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E99C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968219360.12631.9464217894173657109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823b48d43179ba58b4ddd999d294d386928762f526bd38638c81d5dbcbf4f98e
Date: Wed, 11 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749682193
