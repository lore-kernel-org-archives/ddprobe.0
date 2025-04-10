Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4635D1F0E2F
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744283395; cv=none; b=N7fk0eVy8h5URsgCcWw/p6aX7oO0B3Mo9zHm6y2SpjyF9qKE2xI6z5VL6pT2IC2mluRh711aktjyybH4aI6Ul/UrPBFIwgA1uAde5ErB2O0IllgybgRlpx8avWtGtXlY3vUGV5A1Am35rMK4S1MYZyf5M7bpiqu+ioOAY8q7REI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744283395; c=relaxed/simple;
	bh=hCJjLTvWT+ooCovx2weG8k1Kr9CwCwJkD+yDqsiDUrs=;
	h=To:Subject:From:Message-Id:Date; b=pj5jNr/F0fDGnRdoSk0/KtNv2AgwNLUfLSut5bSeZq2P0gWyQj7315QWSw566XqPzQihs4fpPit2tCavNMGztyafi/eV60DoJ2JDgB1QxFCQOYjNWGUaKpzhmxZ60/ep8bnmU0+JEL24rGZUqPgYc2xuFeYNVtZckLEwnZr9wYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPZkB6i2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPZkB6i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DFCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744283393;
	bh=hCJjLTvWT+ooCovx2weG8k1Kr9CwCwJkD+yDqsiDUrs=;
	h=To:Subject:From:Date:From;
	b=LPZkB6i2cmvaY8FJWwHD7DY3dMKSgg/T2TZpapLA2EmJjr6/BnzzwJ/lGhiG0PaxN
	 Xm8L2MEI9Pd3iq/jLJ+6kUENFkDugghyjGPjZqkQtEWWL2BJbaSwQw84MrBAuB1VbL
	 k+izVcJcKczO9yUswtV0KS9+7yhCW1ypfoCwl56B/rjH7R/85JerzYvqDy9l4AI8Fs
	 +XMUUWNSia2ZnCuDAk8GI7WvE3YtEa7BToQ8hozf2saVV/IrsiyOMZrD9x6KB1B90F
	 b/Ftvn/Hu+h1Mcd133gt6x1SOYe5e9GBrfU/a029SbRTTug47fBxVWMqYkAe9FOh0V
	 Fho5KwLk4GRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E31CC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428339363.31764.12152975410963158425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f582ae799bcba66cedf21ff03ca580fd4bf71aaeb3abeea9f8ec0cb60b693f
Date: Thu, 10 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744283393
