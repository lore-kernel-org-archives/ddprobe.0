Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344471FF5F7
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741959534; cv=none; b=rGUKZBlQUy+SzEPB9lQLMXET5iVEVjiPgKJNQpjHcQqyV+uRBK5CMoSr+251tSFRKyxAvOMWzP+0PtydMMwxUIi5tV+xaBHKiSrbV0OvkjFR/+ELgaKeJJcQcs9g/GjFmycjvgWAlRhpZfVDd8YgNklTNpDEo2QTEOIDCCx7eb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741959534; c=relaxed/simple;
	bh=I4Yvicjj2tiT5/2OhnV7boXcE8gM9l53U495i/Lt7rA=;
	h=To:Subject:From:Message-Id:Date; b=mC61oTKh7ZIehrJ7u4B7JpiEdQEEk/Rv75OyM1DIIzrgQJ1sKP19al2isc+XbSTBBEWMfxbv4ytf2sGQpvcMjHbr4CH7hveLvrpdTX2CtEHcdKRQfqlUdw/8VMkcb2pbeK4/sJzJKruVyX8HXA3ok4hK1Dum0UiHTe6QQIbb4Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEVuM+1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEVuM+1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0497C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741959533;
	bh=I4Yvicjj2tiT5/2OhnV7boXcE8gM9l53U495i/Lt7rA=;
	h=To:Subject:From:Date:From;
	b=dEVuM+1G78r5gMCl/c1XBu2mXGZam3xpkOX3QIsi0gXTcEKOUhLLJWqj3RFYToB9h
	 wRlEQgoQzAiB5Z+uICQiB3mlycnyko/yYjk4Yx8PmpBFJyuwM/OXjnq6o/XvCXggL3
	 dO/3sUq+GalxGMLcX9h0hOgJnajd0pc4WL78oNHNMZQW7fCDCPf6yMwYmgQ41GGvBT
	 aKv1+oS9s/E9iXhxaqMqaPwKVctIR9LNihtqo1vOwRlzJ+nUg7k5qI7uPI3lkvl4cU
	 dptkLgsUpic2+AniRdYR7ap3lkr/uQYHYOn+q78iHhKyJMkPqjP4DpBWrY4UIH2OO5
	 23Fc9tM/7LVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B674C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195953362.1260.6768296232206277137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173f4dcf0dd5c31a4fd6b6a64e9739cf1bdd71bd48845ee701be341390b7d8fd
Date: Fri, 14 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741959533
