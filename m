Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4DF2EE262
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784173714; cv=none; b=MOrke3j/S+g50sO68A2ySutS0+4RJJBfI300mWha2Uyu0sBV4+ywPdtkYX2JE5AUD9bxi7JQzdcrzv7SvJw/YdGHUyh2mP6HUVqLtNAxjjQGX87NyGMbrH/BYiqC8OXOsgvgIXrGX7CBmSwHzJdcb4LqyikzDDo/WUOBeIKsMlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784173714; c=relaxed/simple;
	bh=ut+Q2tm5IpbJg5MyMLwC/O+c9A8BwlyEQVI9/klWAnY=;
	h=To:Subject:From:Message-Id:Date; b=SCmGiOyrIIT6LGJrxV/O5Bhpvjtyx8IGibnq/P+YoWzANa3ZTjxpljbjYw3e7Nj3TwBWmxikpK2B23YJC5AvTcw7bxJLmV2xbLcie18zdY3ot6xkAQ+NL25ddPpb3l8kjJ9O1l/lAGvoQq+efMRiDVbzA75QI8yZrplyn6kJPS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7PBwPmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7PBwPmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5BBC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784173713;
	bh=ut+Q2tm5IpbJg5MyMLwC/O+c9A8BwlyEQVI9/klWAnY=;
	h=To:Subject:From:Date:From;
	b=O7PBwPmqMElWbXHx65UDIRx3dbGO8cBixXvbMXRuus5l1ww3/iSdJ+LH5m5ROsSZ9
	 nofs0Nds62UnRKGV1mkJSZFJosxHpkeJl4hKnZmny5s38ZVVucrcPnup3rvcAK3aTE
	 lEUYcpk8F40SPDLAHdfinSqzLll9uN7OI66eivWJzco+CjQUbC37bDBgYdjeFZImmI
	 vrIM15hG34l1ZmA7s3XnAIEXC0roxZ/41wU7S10tvzEYFBgM41y2VEAgZqs09z+QQH
	 +76IB04jqxwF7mycNy15h/rPNmYfvNBc7a8EXdSZQ8DIhbB3ry/uCQvEceevcqlqvJ
	 DqvUfbgZYPgGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C39C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417371368.15539.3317089615523993963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e410b769c1ac153cd3a6792adfced895bd633523a53328b586dad091ad37818b
Date: Thu, 16 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784173713
