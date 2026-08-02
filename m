Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9F2396B6F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785663634; cv=none; b=uaXjsBMocQSHMCof8+oDixN9GyIgecH3thgagt1AW3MhP3x2mv34vMj/CSedtRT+eqIeb2tZ8SYYqctDxW9ng/A2PUFRe0hayD0f5CJE4oiq1ggmzqndAJZtrfheubTlZtWqLXC4FsBEH+EkX82Dm7ymXyzKiZiMik/bZD4INpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785663634; c=relaxed/simple;
	bh=plEKDhU7vE6nrHUiyrpI9hCh0/DjrLODaDsQDQymvso=;
	h=To:Subject:From:Message-Id:Date; b=B39bTCFVsGHfdO1AmnZaZfHk6m4W5AU2siyyh8AI5hcZ8KLvOYG3lZaPAoVNa5D1kMTw7pTkGlkT18v9ZL40f4JJeiYbPx4K9p4+p7WFSqweP/1HZLdsQ6GrNOq7Mf95/mW+Aocrj6MzOc2xabh2OTiopOhHmiLmYnKVSIvWiEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMd4Okd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMd4Okd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D234DC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785663633;
	bh=plEKDhU7vE6nrHUiyrpI9hCh0/DjrLODaDsQDQymvso=;
	h=To:Subject:From:Date:From;
	b=WMd4Okd4KOOStmxjp20quMQdvIs+myJmj3umSGklOevOP2kB19DQo18M1D2gQ2iBV
	 1f8D9EgjA8SlSOzkJneQZ/DEg/ymqBHW/DD39BjWkJFRnWDh766IktnkcP2aKkiXix
	 3q7c6EkdnVy/uFORfR+4mlQumP4DyfDcPI2BujpCxtAgIIqFpIIKQrJChAe/s62izJ
	 Q+uDJ1fIc6IW57FpOVmuJ6nVLjKf/a5VVLM6N8blzSkQrauJcuygkyhoiI350xQJVY
	 ipeiHUQ9VgvuRUmYk25CG3jMKVcOlzfDiHWSww69RbatmLDtZ1jk9Fq1buj5Ztw/Bf
	 //ANOrHxcC5cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF144C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566363368.5409.2065741438832971783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cf2d2297fd45af2fc7269a1352d2aaec275e3442ce0adffd631eb8397801e8
Date: Sun, 02 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785663633
