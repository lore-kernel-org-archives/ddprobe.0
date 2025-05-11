Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BF52AF0A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746937794; cv=none; b=lpbs3qAc7M7eShfWhiPE9LwR9bNZ9hvzeHvYd6JajpieOdRBkN8H1I/hnp1TdzmEUUYT9PGeI+WRHNFhBP1Go43xPNJljgprDjcjW2pK4UmkpcxkD8QS6edJbwrxexME/lP0XP3DLg4z1XV66/++uPQ/myQh4wPNekFp5AhP6z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746937794; c=relaxed/simple;
	bh=qqreV4cFT8n78VWhrNRBjthjIUdORKS1JcYLCQmKlOA=;
	h=To:Subject:From:Message-Id:Date; b=B+TyllAc2ddLfWil6NVV+oL3lcYeMS+sDdPYocxssYNGlG8x3XvULY0TOj4+9KIKmD3as3vq0/aMKQCQUfcUh/Yk+pAuoa4rlpzwzNSUYvJg9Z0hH7jOQY/eAG14wP144izz4QylkBFR3HBoFmJJIRctDkuYCaeqZxp9dcm4rkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClUGEKSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClUGEKSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A877AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746937793;
	bh=qqreV4cFT8n78VWhrNRBjthjIUdORKS1JcYLCQmKlOA=;
	h=To:Subject:From:Date:From;
	b=ClUGEKSF8f3+1Ib3MHUOYeCg4aHGGBc9FcVp5q/QB9MLPnmRW213asXbo/FOL9r8C
	 aFMs34e3PAjd9FwtHNdjhD7F3vmXzphy1/R5LrOptfJLspeKE0PpvN5q7GskK+0E8y
	 zEZ1LBXhbA2y8l5EFXE5XKIFkX4ZP3Q5A3YRPEC8mu9i5YL0U5P5oL/EWRSZ0rnslw
	 87KpVU8iJMwv7ma2kE4kLBTtBaAMh++x4fLc+bQGzeQEnCCqnwDSIMdVoL7/EF3AEM
	 Tx5kxrGfF0TdlBqhUPEw2UkAtXwdP33K5VA1dPzyhitzqf36psYXPmYFeo1PUUO1Bz
	 /J9QNlHKdGRNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B45C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693779358.32430.8547282786459556893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136d684e65028d4c6f314cb97a7a58dc17b2e54ec52530b168172e2c53cbc111
Date: Sun, 11 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746937793
