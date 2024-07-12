Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCAC2941C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720812563; cv=none; b=OQLAmlW5WUvNqIzv5m4AWKj+wORNPalaYu/uj954dO2OsXme3gMl8Xmtj+tPhCecQwxPs0YTLCjN9Jcea/xm/cslhRxx1/Go4i/phZ6JwygwJsonoB2IdJSDhF0mHdp4gKgJ5tuOeBGCAcJj+/6chdbzO+D8XydTmwmq/hFFXZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720812563; c=relaxed/simple;
	bh=9OnyAhKSEq1LTt4G4513th+BiL9dyWl8675J+YJeQi8=;
	h=To:Subject:From:Message-Id:Date; b=UDtmrCbAXkgz6yK6IbYWKwlelXdqt3oS1Y1lzj8m1Kw9/y6dr/TE+SIUaOamrI12RydyeHftQ2nJwprfnsmPnoKhbWBazSLN8oXVfZOP3qhJepNiV5Yet6BXYJgNDKY3IsbE/NPOCAjHxNuwqlLxuU2jfhDNjebZap6SJrEKpvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u217kOrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u217kOrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA6DC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720812562;
	bh=9OnyAhKSEq1LTt4G4513th+BiL9dyWl8675J+YJeQi8=;
	h=To:Subject:From:Date:From;
	b=u217kOrJV68i/l3NBla0kNJCWvlxrdduplk8z79GmmJU3kl5prb1fqRf4xXIqG5/6
	 UgebPeAML2Lt2ok/Iu60lOZWN1SKDsypeAOPdlneBIGCZ932MOdk5XFamAuMUmDCDq
	 9jO+Ne7ZRlydyc+ZSbknA9dgb0HWoj7gSWTOpFv41nrdBcLAp+19gKKB9eeJ3Qf4xY
	 2kErISc4E/r4lAJ6/4alXUMduzZ63csotKl34i3oFd7e7k64Kl8/P40x0J5Q1XSzrz
	 ZxRlAfqYW1m+6h+3bmQgEhsL63hWUC2PgutyE5dcod/adVxbTCIjqNZFvguE1QEdId
	 6HFb7eaEBTuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC106C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081256282.30840.12532853917220677366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334f7ab069e4a647f0b995e57265cdadbeeefcb3c6417bc86670027416e5941e
Date: Fri, 12 Jul 2024 19:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720812562
