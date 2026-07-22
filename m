Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D7C1C01
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784699314; cv=none; b=fDnraWaZX1+Jy32FG0m/es0T6ctId4vedsUPR3oOPpfx0UXVxr87f+7rJSrHralAd/DzUohafzVDQWq/K57+fIdpXxOsMOYbOQr5djSPoCWAZBeX9GkuzUeTkaTwEGMgKJJwS56wJ+U/S+DLWck5AsEIkttBTjXCoDWhaCZ5Fxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784699314; c=relaxed/simple;
	bh=pHNlWUf6LZ8SArgJwlXHmv8XR2jdvXN6gG1xVyji2b0=;
	h=To:Subject:From:Message-Id:Date; b=D225ibtrUT6yRlJgwDEWstaKx5tS6ILtf30dYsZR5DRwe6ZXYdLGb7u5UjVXf+y74nuTmv/CNxNTdauuoOiVGjtc6e7Blkrg79MW4YvYAzfOonTJo6j2bDtMNVLJwxgkqJP3mGDNNohqu3R1ku23dGasioa/cakCIr++42fmIJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTDljkiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTDljkiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49837C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784699314;
	bh=pHNlWUf6LZ8SArgJwlXHmv8XR2jdvXN6gG1xVyji2b0=;
	h=To:Subject:From:Date:From;
	b=CTDljkiXq+gaLisO/wHruJKiszJawreQopZTZAsxC54Ibp/dh2es+GbaYFHkMrUnb
	 2wApxxvrjNoh7kSdo600vz2H2o2RBQheNGtivgUkSx4rZMxHzUXqFRbg1Cid0yn9o+
	 eLzVv/ZtYFSXzZZi0SBq0xDWPT7by3w3Nc7BpEq+0PSS9T5kSeGOEW886KGtEqAgLu
	 aZw/pzzioRZZBUFwZrn0mUUWBsm26mi49UjLUz77cQz5aYQ4HdAq5dUm2ZO0cr8w0E
	 X5kNncF16fXK2YvHSaMIBiJw4mUixFEWuLYtcSsb42isTDqryj+jtyimnCzM9eEmzZ
	 MXVtnhrGJHG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 046A3C44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:48:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469931394.4230.11708019708716635334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a7c8235b01566752201b43913d82cc6b6ddf3d24bad48e6af27d7f3380a024
Date: Wed, 22 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784699313
