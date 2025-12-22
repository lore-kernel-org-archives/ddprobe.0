Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABA73563E8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766442834; cv=none; b=KwZTeDKQ0z9vNMjHqjiFHNfqfqKqcQ705AR83hqrtVyvzF3zrlrIdasXmfLMwQHyfMJXD1shps0k8tnXM2KjeBOv4onAozRCm+O3k4xeR0yU0bfnlMIoDnEcpY2mvGfnRQkCT3O2v50FuJuSFGzuQ8A9BudFb6sn5oUkscJ4sP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766442834; c=relaxed/simple;
	bh=MDdBgzTYzco7R9yZtUBjYWje1XKxo3HFtVkUa1FoIWc=;
	h=To:Subject:From:Message-Id:Date; b=OMLdOGKK3I3job8lVQaltSsol88k0uPeHVylegO40UNWPtMXssZfn0fg9AU4P0vZliF0zNGLSieNpNdR0WRyAJt5SDPhYsDu/i3JiRyIEf0sIOJ4y4+phkDXMmdsy4QFqJdSeQK5spTQy3iEtjWkpxXfbALQEyWWsZWozgHLh5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3BvagUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3BvagUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F0C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766442833;
	bh=MDdBgzTYzco7R9yZtUBjYWje1XKxo3HFtVkUa1FoIWc=;
	h=To:Subject:From:Date:From;
	b=s3BvagUrIGGuPCAO6O6WMt8NhFS1rvy/AH1qNfa0i/0OnKqr3ZCB47LMGGXlSWA1N
	 BfORzQcD7ZrE3giCs3a0PHRHJUvjWZjbWlR28fO9skuT8ffq6yh8M2xcoBgVhlBMip
	 sGZKjKxRuNyI1aDZ3+RH46A91RrvLIQevS9yt70Nnjwt9RQ4GOnihyRNV9+Bb6/JyB
	 JfGWubQU4iNWyrQaOAvRMy+EzOM+DLUJ79XlwOjn38ryEzaGh74R6ZGKllvWgnuk62
	 eM88xqWQvBH5rWOHg4n2s2xta4L2FfsyCfh83HmqxD5bFVJT2Y4j4eSDGgIVLHH6h1
	 6uQmnnF2cTvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6EE6ADF9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644283358.9057.16290383892989101922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abe40f570588d35f1c80416ebd79065da001b775a7e8c51d94098f5113a85a0
Date: Mon, 22 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766442833
