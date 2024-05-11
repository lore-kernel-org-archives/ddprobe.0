Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ED217C67
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715446943; cv=none; b=cJ+ppOKQ3t1cn+IYxMXpOjt5PWk/5OlhF6CT+bQYDHiNk5IjIT5Y1pUUs27tmYJDdIthtAP905uLXVFmu/pfRQI7p165OMw9PtR1F4st0HnaqMCl7Xpear/8IIhCACuxWwMmvzPLGMT1ZeB6Fcu7sA2DIjWO/Udr99JiUSJOHa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715446943; c=relaxed/simple;
	bh=W0IdAAx5Wsv/+Pc4DhELvHjdAWzTya9+/1knxb7UDOg=;
	h=To:Subject:From:Message-Id:Date; b=dgQ5YOW2PpNlmcxSBPxA7QgeCUH6U9V8CCL6zkvRkpOzV49oic8XHLjhikjw1ObvP+y6BEAFlJpBZPykKS9NLVeBrYyNFsooKSpmpjXczMEXX3UoHeW37jtE9fqQ580KTGn1CblkX+7h5dElDkQeiI9JCbNUz0LPaTh5Q1/aPZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAJ22vMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAJ22vMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD162C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715446942;
	bh=W0IdAAx5Wsv/+Pc4DhELvHjdAWzTya9+/1knxb7UDOg=;
	h=To:Subject:From:Date:From;
	b=NAJ22vMI/0s1eTME9fMC66YOp9NYsHACv4whsB9odOuUEHOS8ebqtXcGRCRHcgprG
	 qZDQ4QM8Q6OPYrBMHRJQVeG3oJ2YESG7lUGjEoLEkZILCrcI/rjTjEfmLJZkm168pU
	 wl3ceCs7xFC9SiGPoNr9mjcB0c3E9tzSel/kKcUYzQ8ubvKJl1A1Sep9NjAKpGkRU/
	 Da/BXBE9cUdjcf38gETyhSjx3T5jxEQMZMs0XCgMnDeF7J5B4PoXRmLZ5CJ3Pb3yv6
	 scMr6dykmW0DYFSbSruGbtJw4Xp0GBAEk8LqQQ3ztRmYZtMTBQsTIhLoT6tpfwtsiw
	 BotLhpf0sHDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6496C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544694279.579.8663639026841578471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44917e4d68e55860f14a8ab8383b86600871688932c15929bd6253b99b24b532
Date: Sat, 11 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715446942
