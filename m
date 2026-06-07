Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA4226CFE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780821874; cv=none; b=JePk4+FbCf8qAw/ncAdwuGR3CrsaMzu7arzk9uXMUuJZOkrIPB74b3p6qDaAr9QcMh0P5zdemtMpBT9L/2AGyv7g8sebGUzwj2QazTcG/ZVVpgQAKhE4jyMzc2TP8uPqy02Q11T5eoxJV1qoPxyaiqpm0AgM4x7ceCMNmnUb8K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780821874; c=relaxed/simple;
	bh=1Qi2HKSFCePuSHzjD8HC3EUIxlx2vro5MUxsb+rS8SI=;
	h=To:Subject:From:Message-Id:Date; b=dPXX2hXeA7v5PYoeHn/k5c5G6XSOut3QibhOd/MY3f5oGJw3sPAdA5nd8fVW+vbxGscPOfCIessoai0KSpRSpriyv0vM/sSYR0+UeFurN1wOZgvJCcA9CmvRVEbO3SlEdlq5MMyEg6+QkpzmaxEfK6O/z9s9Pj/kfo5DkvNw5ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGNQHgJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGNQHgJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FFCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780821873;
	bh=1Qi2HKSFCePuSHzjD8HC3EUIxlx2vro5MUxsb+rS8SI=;
	h=To:Subject:From:Date:From;
	b=LGNQHgJjDgRaEbV/SyqWyR50admzUhCqp7LAFIrsZ5+d2/TRI7Rx1bjHoVEEZJ2pV
	 YeSUpsn7/IUitunzyjU4MeSgfwIWmNBSkKokngseAU5//xIq9l4QW1gY/ThwPe/aIa
	 9nx2nojFSxFYRkI/d27afDaA638OHypwX15x6KAgIFC5uiHcI0NOQ72pQpk7P8t6Nv
	 dPN5/1MC5f9F3GesO3wAnAlicVidGk17GBNf3WMPVBydxzNnMHljglb2SXmqN/usIv
	 5dPt7tmONoh3h4PZM1p7KdVYzbqxZanTvQK7KGcUMEZ2a1IXhJ1W1s8XC75pebRibQ
	 zt0/utyKJKNxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA166CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082187368.11763.83599072826275388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1edbd446ef4ef599140550eb7abbdcd5e8d8f7fbcdf3b5630939c17d741bbf5
Date: Sun, 07 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780821873
