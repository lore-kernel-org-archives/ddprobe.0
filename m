Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A86C28850E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768958034; cv=none; b=g7N9/6G6b8KrN6XGdzizLKVG3GL5xQEwA74f7Ggui0liyuMTuMp96/3jJQ/4XBvIH2kXkP4iGgHH7mQsOmKMBOwxrT3q1tOc9/XDh+Q0UW82tjOXCsd0v9+o275YfBOUF7Q9sbBjcBD7RWuvUh1WUGb+6OI7gYJgy1oFkevQ2es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768958034; c=relaxed/simple;
	bh=okqYKtjNoQCSN/08V9n887a2L/87eih1MPZhgGIcxqU=;
	h=To:Subject:From:Message-Id:Date; b=Vk/fcsV61JIbqg5HpiZ8EOHEv6I5cJWwD1eXDTozRLTjeSidbAgoSeK+o7JnmBLVrxeMAnM/dDyGbBEWTspMk3y4TRE+x3faYC33LLkKdtMGw/VbfeFLLizT9QfCVCEtypjS3q4zclo5lyWNM4OjwR1PCjZmCU3JHe0Ray8kICc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksbbDuBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksbbDuBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10CAC19424
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768958033;
	bh=okqYKtjNoQCSN/08V9n887a2L/87eih1MPZhgGIcxqU=;
	h=To:Subject:From:Date:From;
	b=ksbbDuBLqL9WjPyHS9ibVirfA6Stc7uAREY6XKGb4w9AtkaguHe51juacHaPpcpNA
	 O3EL2p91cH6T7jzRX/WZHeFChAYez8x9hEzeNVQ98mDL+BcjAQfM5nQdFFmQ3049r9
	 VwdhhzlvyAYzMdoQEpfJ73T4tNIOU1ojfgUIvIzHsyhpD6nqTTjKATwwgDTfnSbXFL
	 0dNUl1n+kHQ1TUVU/mrU0oXkDMOaL4t3ZmzjeHbLAuXy/rjefpKvTT/yP2QykCZBZd
	 15FKiAWxw1V7XW075dgq6anrMDtExEfIvlM9jQ5aT6FCH6KoLOQHNBEiWXmx4mFj3a
	 tBQxSkztk7Crw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915ACD262AF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895803358.3390.3492194221059986788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4720c899ba0e8b7c64832ab35767250a6da582d56df114df9681b1c633a113
Date: Wed, 21 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768958033
