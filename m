Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E17D9454
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719123143; cv=none; b=DZ/mLymkc8AdYg8yv+YTbDu4hQDE4EcNvhFYB8ebuyomR6nn23OTKZskT58M4UfXuikgTMTMlNr+1ePwczAn9Yv/ZZCEIyNmIbTeNcYLOTwqc4TMNWpZOL9gJt1a81PFrLA/xB+YL3qKNXmUAOjA3pY3coM7/xZal6LvEmz0FL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719123143; c=relaxed/simple;
	bh=tFeUq8WeGrD/79I+QGcpfZrNYTIBIo7Sc6xyBCCXJ1w=;
	h=To:Subject:From:Message-Id:Date; b=QZ6AyEdwllIVDSsEXQN/AJQdDJ9TWAsnRr0DHfXDzkEcAxxW2azzhwrd85sdoyOUgXVb8QbfGXyhsz/MGr8iBOiDV2wZSwn7eiSW17Iduvjfu4JQhCz8fnLR6s45m4pV0Tb6Zv/CbuxeuHI2kIDLNvhgoPYRYu7LmedLbxt5Yko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lttMoqw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lttMoqw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE8AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719123142;
	bh=tFeUq8WeGrD/79I+QGcpfZrNYTIBIo7Sc6xyBCCXJ1w=;
	h=To:Subject:From:Date:From;
	b=lttMoqw2eO5PtEZp7UTG5Ces2rfbJzDBc3X+IhGA1Iz69kWAJlk4CTdxCFznNkMVs
	 DyeUIMzsWyBxBdyClK4oIa6EFKINeHLRfP/25zhMdTar+Y5gb9MQ/pCqvGNtTsu63y
	 7uEWNG5Mat41Ar453qbf/Cqp5t6n5k9XXlrnyVnw9DdUVnG+1l5bwLNgrdetQ+cI+y
	 ttKLaKRBaq9i73St8hTC2IeODWu0rwpBn+X3uZiTDdVBKQbraqVJTdBRYUlN7AwAiH
	 V83buPC7MOWNERxAqmVjM74pGZSLAAAp7xrynl4qbw02lHDINU2ZlWqxw8St3c3Lov
	 FEkUkIzSKcUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A64C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912314276.24843.4738916638881866592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f976b52a0d4a91f4ec34fd2a5b1a539711640b9793d1b8d754b352c73a39d756
Date: Sun, 23 Jun 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719123142
