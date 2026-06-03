Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A521477999
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780488874; cv=none; b=go552E2vW5T+iOeNM94Jul+h3Vh3/zAGLLrQdR5TEaYjyXCTCw+nLtq8Vvz24wUvOJiG3AlIVWMX4IoPGQs9UEh2MPD8MBs7l05nrQOYk76dziZUdQl4KdBF9X4MW+lS1TDSFT+Z8Bd06k5cw9OxvtLARqzEazv76mB70+VozH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780488874; c=relaxed/simple;
	bh=hT5a8qbuCdi7iThaOGm9MPdnpNiiwx8QABEtK6/KKoM=;
	h=To:Subject:From:Message-Id:Date; b=KYTMXj31XHs+oEga7lT0GNvgXafxYN1LNBkvCawstmYRCum1bY/EZ2A8Hrj1AYE2e32TI9UEumC/HdQxb8YgFJ8G2mwRmuqHO0xYw5qTGErfILgfafHmCGBlyh4NV755ce00wFb9RLMGFLVsBTcyhHJW7RBQEvVlSDNgZ2GNTzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpezMthe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpezMthe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0447C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780488873;
	bh=hT5a8qbuCdi7iThaOGm9MPdnpNiiwx8QABEtK6/KKoM=;
	h=To:Subject:From:Date:From;
	b=TpezMtheUweR7YGCN49ib83vX6L6n9fscLDKYxs29j3COPlEu2f0t2xsyi0SXHwWN
	 laNXHcqPjYIiGZD3dJmBdJdUezZvje+0d3+Gk7EPlQCawe9NQ+AUUu5InhE0Lsm3T1
	 3BgCW/6yus7jhXsWG1Q1/vyopuKvFF+eHn901Ry5ngK/3ioyO5OLzgajsK9BPY6aJF
	 RQoswIbSNZH4hKS9oVbtI+p+wVHj2jC147GnUW+DrmVVYydciI67Vqr1srTySSPVu8
	 BobuorRn6L4AtWH+PGc/m7lQQ8iJneGUGYqxeone4ET502e3qg2JdrVE6D5NRC8KtC
	 QjKK6lJwXe8Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EC9CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048887368.2747.7273726399465636791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d423e630746a3b638fed4e5a7884b9c5c1c41d719f1001b4ccb19acfb9f36cd
Date: Wed, 03 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780488873
