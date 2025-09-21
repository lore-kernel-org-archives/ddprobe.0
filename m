Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367A229405
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758418194; cv=none; b=te46DM1+seaWb7cj+TD4XVwD1BzRnNUhoybsY8JW02DyG9vtKfHF2J7kgf2PcJKL4DM6PNlnIUcx3PpxeZw/At6p883rMccYK06fOlmkN7uLYRizl1/Hj7o4cNkThYCN5agVuwNq4sfu5p88CLIlq+6WG49sWu/CTtSA102sn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758418194; c=relaxed/simple;
	bh=1PPIFHLgf0OmvbrtUJ5dnw4QBcEGHKcvjLDxUYE4iVM=;
	h=To:Subject:From:Message-Id:Date; b=Z5ukIx183cy6OD12PjBAcsdGyTsRrSDGNUZLlZhDap9ydx2qs6m5dAzNwnGZT8c/+llmnnYdv4Pb+BsHc5h83zjjEnlypYeLMc+mMp4oWTJ1Zvyj1OK9HulgLGR+Y/QqF909h6YqwqqmGh7igeQBiR6ISmSj/FaN7aIRy1wOx9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtH5Z6Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtH5Z6Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B41C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758418193;
	bh=1PPIFHLgf0OmvbrtUJ5dnw4QBcEGHKcvjLDxUYE4iVM=;
	h=To:Subject:From:Date:From;
	b=TtH5Z6FrJdJddtJR5lVMgBj1A6FIg6JQXBGLZULbTL5ZfYnjFOfSQ1n7QZQKBPiC9
	 Uhw/58s6etwM/iY9NR+TIs59laYQ8ReAyDx4aEszIIZdA1/ENTNooQLHjSnMMkv88q
	 QBS+/2idkUgcmkihTbTL/tI0EHZcqQfOrbbMgZXv3B5JThhdP0dE5eg7fglegKCgOH
	 Newo/l5PTXDHe+KRU1gLVH0T/3ot70cMjG3AS3xs9kphT1eMl1q/W6vjhATzPiQN7J
	 fZPxSX8upBBqsfUtDCBGaao5IdEclG0Mq1dmCLw+dljqwQae14d2CRVyaXYqZN7HQr
	 l3LNxpHLGORPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731CCAC5A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841819358.22189.9300250367550999719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb248a504e3090d5226eecd9e3839fd8425eff27f461650943ca7317440eb97c
Date: Sun, 21 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758418193
