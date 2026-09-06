Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6CB3CB574
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788700236; cv=none; b=OvglP5rdZPrUK1NCTS+bKq9CEKxVfzkPwtsrhqIM5ajV0PstZhqPomZvlURCFJHgLl4lZhGeKiZV1QfzQDkANkn/d7lNwo3VLzvNQ7eyQkLi1WKKQz/XA9QOUtUSStpgOXIe5kLpDP5eD+Evdg634RB0w1KlS3i/TksvDuzc+GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788700236; c=relaxed/simple;
	bh=XvFtEjJp3rKUCfqWp4AaCs8S6HpenWtXHlli4pNODhw=;
	h=To:Subject:From:Message-Id:Date; b=pUXo0NmnWvFKprOESSp8Lfek2H8XjnDF8TR5Z4dfKd4Kt00aPuLYrFQbt0AXBkIScpd5IzFgz19mtYru5ScJdEfbmSf8M0x9pZvKeyJlQFHpX+jIOuARyWI71JK3fLWmBFkfW+iaALzyiTxaIRC6YhdRGJ+q8O+jcn5H4NM4YsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFa1TRyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFa1TRyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD700C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788700233;
	bh=XvFtEjJp3rKUCfqWp4AaCs8S6HpenWtXHlli4pNODhw=;
	h=To:Subject:From:Date:From;
	b=bFa1TRyz32zZnnyZMDYmfftj6WSAoyHm/BEQebEJYnvJXGPrBDzdoVlQoa1ioX52a
	 EsgFw+qqQXGRTBu31h+EJHklfH9o0KoGVPpcfJiGYDNuCLBMXrXNGXDIHNMI3U2tHv
	 fi8Vto++uvSgS0GGxd16Jjv2wFaiGo6HPfL/vCs89B4cPjK0dFg1BeiP8e/p8yow8m
	 rN6v8kkiXg6cKN05bnoHV/fEWL29yBhqB1ytyL717ZrV4EBm7xWiXRDkxrsAUzgATt
	 r/h3cKR43YcRzcz5OVNUBOX9HCU8LZk1X52Z2a/2/dHUOHIWIpNSQGO+FO1LCJorys
	 3WCytNDOoRSbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD71C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870023369.13264.17340925482534803838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73378bc7d5d37445c712ff60d115491772f89c03e91da2464e496404d8f89624
Date: Sun, 06 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788700233
