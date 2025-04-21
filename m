Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305281E51E3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745234394; cv=none; b=GvWbpHgwhQTNDBaOujtm3FWcHCuVXG44IT06ss0crvXOM6TkeSR6bDP4gsfAva8DUM67itg5dyeE47VvnXAhVYo3DVlTsd8I+kv0tqGIpYSSyPb/Qmqn4LySlbUXeMrOAQ8e2CJyQhxG4YniwhquW4rMMIMh+0/a1Ql7ZhgGe30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745234394; c=relaxed/simple;
	bh=sE05BS/ZphBhzaENzzhi6rPYXOzEKV4eCSDttUNutqw=;
	h=To:Subject:From:Message-Id:Date; b=lmY+qHcms8UT/Vk1c1A7hPn9BUhP1NThSeeTNT9To7sNJBVxAuBY3FWpPGC+AG/KWye34vNEiF7X1dpuGxUC+y/dT6cf6+Gu09QlACvmVDR3QSMXddBUrwfzYyV5LVsrRejbS0yZKQPgprOaIIQzWZebR4H++fqDvaH2nzaPutY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZFmInVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZFmInVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745234393;
	bh=sE05BS/ZphBhzaENzzhi6rPYXOzEKV4eCSDttUNutqw=;
	h=To:Subject:From:Date:From;
	b=JZFmInVh8TXzgQPdn0ZYO74x3SU/EfphgBDGpai7pu6Up5Y70uqLLij4UdmC0werA
	 2KbGumjZvrUORA+Ppyw5JVYcrWtg098OOWKt4yNsV2/2uqxT/CPfWZ/321vuJc9MQv
	 ECufjuVTO2y7ac0mqCQEd0GkftM1ZohkpnjdnfOnU3Sm9Oj26j4vFhsjVyrQWsZFGk
	 wgmUXO+fGiCiaj2PG7hgTHapQ7Z/lcTH4NXBLsskA4bg9jACHUeG/XrgEVc4Gmu1i9
	 mMnMLTD08GFzETVYcGVqoJx4bxdurpCHZkHgqmSQwJBuGqGyLYpcorkWS7vYGLjQNy
	 lsB1nqywNpclg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD9C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523439359.1237.10004647190829004268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde218b213f0e1163fbcc7925bc1fe720eb26cb5bfb8d254bfdf5723d3b1ca08
Date: Mon, 21 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745234393
