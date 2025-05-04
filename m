Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E3F1F948
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746346794; cv=none; b=YYOlDPvNUpdnuDVXKMZ+ZPTmWRNM8YEXJwcQSU0IAiACJnD8GbBxa2dWUMcKq/sIaxBgYQcFkWaPXXwmOR+w4t32BLYVGgVKfYFoXJMGfWBwWcmrgfNyjpi97Gc3lcRZdLmsfKKJhLgWNOQRWTPKlEh91rcu5pi4mt88pM6/Eko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746346794; c=relaxed/simple;
	bh=ZD/pTuae7SX/2IgMHXWTPMeglAboeVr+o+0S0BApzg4=;
	h=To:Subject:From:Message-Id:Date; b=q8KPdr07wQptMfkZIE9gsHL4Hv6v4DWQ1q9/eIvKswoEa5l85vZ1oTbTZOgcrr9Vxz7vzyhArOUacFaFvtaM670WlY/s7srYa9yl3mJtcFTu0Dqme9AIVQxcLStk/Nivo6SHC7cpcI/DS73G7f1KOlYbw9nuBka/SmOT0GleE1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk1ScJN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk1ScJN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A912EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746346793;
	bh=ZD/pTuae7SX/2IgMHXWTPMeglAboeVr+o+0S0BApzg4=;
	h=To:Subject:From:Date:From;
	b=dk1ScJN8OlXi56ND6zWf4tHhRF8yebidq5I7mdR74dHFRKc1y6tWwMuctvCHsn57l
	 JG4sX2x/s2l+4o5wVhlr5TcLbUjMie8Y9BZ5z5rJyGUNlAWToyyuwYGPz2WZ1QwkjB
	 3bPE9HS2rYekkW50x9FpZ/dwbtmr5+SyE2PFZ8TRx4W+LnGdUuylnoYftHr8IerKpM
	 uyCzCZB9vQaCUu4ieoVZargCnv5tEpdCn8OUioy3LTNgeuG35zHk/7vfizpUZgejjC
	 BY8KO6xyl1tAllWc8pVXNOZhnfHXVxFMMWFGvwVPwPXaOOO030An04+XnGD3b/Gv7u
	 Y6ArgtpseQ2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E31C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634679358.3790.9488483958045698661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d097488a387d849fc10aaa4406fb74b397c0014d3c906faab62b3ab66b2bfc
Date: Sun, 04 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746346793
