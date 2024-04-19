Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2BCAD35
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713529223; cv=none; b=aZ/YR3zusEac9+utzvycc4hbTPmHK2w1Vn64+irTJZhisJD0/x2fhY3INCuMJE+kt995qzFUWc1jMSIjFL7q51BdrDs3EqAaPsqxPDA4AzKVuvTwWHmgI+KHdVA46Y8/uaVKi+xaURePCN7Cmxlwdi3g1/5avzJoFoUuZMwG/NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713529223; c=relaxed/simple;
	bh=OMIJG1iDIPq9stOTVBYQAnoj5VVDcG+tz97bGQlS4jU=;
	h=To:Subject:From:Message-Id:Date; b=lSDyoTCOyvPWtejxcZIqkMOI9Q4rJtgRhsti0ViEelA+GcF6gDGkvahV+lEhEodrI8ZXEe/JU0JXVq6jkWGZcyw1hd9kPCYkx7EWqkblQKoUeABu99M5FllB7tqpeWbXe7C5hGdRMhQIaXdwpibj+YCoxrKpCnxU1tfq3k18hUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/7yB3uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/7yB3uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F33D1C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713529223;
	bh=OMIJG1iDIPq9stOTVBYQAnoj5VVDcG+tz97bGQlS4jU=;
	h=To:Subject:From:Date:From;
	b=i/7yB3uLIoVW/PBCHWFn4094Og/DZu8bs/tL8qAZFDb4KB9HyhSgA3DkMWbBrgfWU
	 LyTmkzECttg7Z/uY5D787h0/Hu4gesOO043xsmlWVIa1EQ1s4Kgvp+NlJWW4NEt5+4
	 KgNyffIzvuiDr+qP4yBId9V3ArqHX842WNTJ5zzTGbttPOqpGTn1SqiEAVq2ikLkgp
	 rf/Yk9wTis2+DnLg/l+yhsB0v3wBjDOELvsv0mPNYM6HUq8NI1mUyIGZ3kBWv2lEtl
	 Gmh7J1piUf9lH71Bx34qAXZJ3/QEWOgFcpfwSTH5nFpaTsmUrB/m4m40E337hxxuhn
	 MkR8pN39vJwgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4143C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352922284.22239.2878036172968964058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef41894cfb71de27be123ca92dadb7946cd52ea543a29fd6c1551af4b257976
Date: Fri, 19 Apr 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713529222
