Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2633BE652
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777894654; cv=none; b=uVEN8/FLk+rlgsVih90ET+P4PJOzbMmA8hTLS8kc20Hh4tekhe8FQILpHU/VS7GqzX9ZwthnzNTnajvzxaBvoAjxEqeMm3pHIKOhD0AoKORE8Nsd+7RDmeo3ackL/0YA5JPke9uKZOT9iLPwVV3oa1gzRIJAaPMvxe3aDlcb1F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777894654; c=relaxed/simple;
	bh=za0fVcS+gywD49GWjjp8T97s1gg53CTWve3uYPJpMj8=;
	h=To:Subject:From:Message-Id:Date; b=iTq/+IxmGN1JTBFoPNMjR93H9AmwU/902ceYTvADoAfuMGrcO6MrVZ37XgzCwBp0lQIhmbd1mwfWIi+rW6SMC6UfLGmbYallDyQ9Bx8Ec8tZ9wBTofnpKH2/2aL0Vu7KCfhZU2xexnbSXvI6a2af+3FZ3kAj4SkwRGG+jyKgG8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTnLW8ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTnLW8ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0B9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777894653;
	bh=za0fVcS+gywD49GWjjp8T97s1gg53CTWve3uYPJpMj8=;
	h=To:Subject:From:Date:From;
	b=tTnLW8caqUwEQlX9Tey6VpGBorYqwlDwqyLg/LEwij/INKP2/1R0+VWVinIqwL1GE
	 HK85VfOkSR9mB0XHVlIr1NA05vX6GYbrS3Mxku3BsWSZS8m3iJLvahDSbfKoAm5Ibw
	 hSUcNgWcvKCcC2OZwuPXUwitGw6Mj0wZSOk2kCiY3UwbAI45lAy7uEifsvFyXXTpuZ
	 F9XcEcwqXLnvZQX/mLnn0Ip0BxohMcwQNhcKrD1Z5bNe3d5vHwYzmYIH2Bd6hxA/UX
	 O7VXEBhAcXnXCuGCN4y+JbNC5ol3me66M3j+HlBxLnw5TcA81qzNJR2RZPpxD4Fi0m
	 5W3fOsHQS0+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA0FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789465368.27410.14985065633685049186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecf904e2a4d846dc9a7fcc386628b948450786359e91151bc0727b3448f4234
Date: Mon, 04 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777894653
