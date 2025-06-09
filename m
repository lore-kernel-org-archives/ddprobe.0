Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF5A21A931
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749487194; cv=none; b=h2KTvLV3uXMSQenON6OjW2C3ab8ONAe6xH8WvFmRyw+PotysN4hMlYtFQi1x7m+ElY/o/5AzFZr8Um+r32tthw6/ElwPgLgpMcbS2+pX8UkknAGldvpST4pLDWfZB6GtEDWEpoEZhlpgrMlyhFuZwmcVxuFiY/paa28MGyDX6qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749487194; c=relaxed/simple;
	bh=xTOC6+BoR7HPBZPULeWeIzSE86Ev7N2IZjYMu1Vzo/0=;
	h=To:Subject:From:Message-Id:Date; b=MdJ1rfUrsL/gG3ABQIWMyVP5OJBL/+SAJY+f872mWD8/e2rqgolfKaq3dNz9kziD9zKJISp5T3XclN7XZyvemnTqpdpMa1cTQ5BCCTfStdYB1MdJDTMXpNQzu9xkbVcYOFu3y0kxAAouJY1sZWF4Ne5GJxxUq6BejsGnXssmqIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/pfETkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/pfETkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6E7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749487193;
	bh=xTOC6+BoR7HPBZPULeWeIzSE86Ev7N2IZjYMu1Vzo/0=;
	h=To:Subject:From:Date:From;
	b=K/pfETkv+ze6zg3iMpEOluqLcgrUpYo0g0QqCTENu1x1nKm8+drxsS0R0lAl0bRJw
	 lHCW5QA6DRMgtji8E8S793xj6NWVQsfnqsbVqxTXNcdgM3JIcPwiFb8v/qRemtPb+w
	 fc/dXJxCzIUB9Cv13DbLDgSaCD/nDTRnBUD5ecfGr9FtRVQxlds0UktWNcia8PAehr
	 6trZ70jNsH5xHENX4ivmVa4tcgBV7iKVsc7C+oLrS0yx/Y8dVunZowh+TwRT6F6Gyv
	 jdHy1XW/tcLyizrdpvfNBQxh/B5oZXmsSoxY4+sWJsCzzqgnQsnJpMrlUHrt7V4uTf
	 aQMNy5ciXILTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC57C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948719358.31837.6334004360491314255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a814e6198c91c841f916df8d69052f50c454e6292b13f6395118cbc885e2d1b3
Date: Mon, 09 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749487193
