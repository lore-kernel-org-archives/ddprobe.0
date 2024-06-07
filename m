Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793B315445E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717796243; cv=none; b=mabUv+YV0YKfGmSESyM02lJniixkjHOYtOX4Qa1KzNAa1xEQ9Q9aLt+6yBZM1ASAELetxL+YRrFQ/t1yBkrNuxYUKjstCxSHqpy9lEW66gtCeK8Tn3ByI/pcLO93bF/cK7MLXsEehVJr2GFfoUSzmpQhkwBqtNUgi3v3/1YPy8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717796243; c=relaxed/simple;
	bh=2tVt/UGuOJVLbfXtttDbTWU/icX9eb5M4DhW/ogI48g=;
	h=To:Subject:From:Message-Id:Date; b=o3cQVO9vG+Y5nSvSzmNVscv5tV/7YGrReG1lawvUoUX0zG+jmWbvj7szgicQBWKydUqxPXKKOlziMXVeSP0RdMZOOZqlH4SLma7tRWsvG1hKhDekQKS76uKCs8MMU32Y/O9B0klaoiy8MydqWpueHrHoCPauz4WV8SvcRooXZxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+c9KBJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+c9KBJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 150C6C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717796243;
	bh=2tVt/UGuOJVLbfXtttDbTWU/icX9eb5M4DhW/ogI48g=;
	h=To:Subject:From:Date:From;
	b=T+c9KBJjP5rkHZaxbl9t1GZlKeKejokeTC8YbqgYfOo1oRuqiEPbsDfUMvijBEvjd
	 vMLMSh3YBMPemS3oFtDpkxx2luq9XyGuhYcCV/aY+qFrXFqD9EG7Y6Q/D+oU7DmiZD
	 BqzvhJJ5d0o+V37Zn0DNQ+lX/NriGIWhNvaoUc/ciq8MRwJtqiURkQb036BkLeUc0h
	 +FNbBL00wl8xMcfS+jctpEIJf7hB2LaCNgpbIbX6s2BWh6oYOO35177Pf00BpXBp39
	 pLrngbKPAZSxqLe1SarmTfeVUBfD+cQldO/HKEHbg+ClRAv9hTWQMzPYuFtSSyf5xw
	 SxHD+9yXRkt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E488FC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779624288.22945.12615575247590177073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8b3a0315d1dedcc03b6b9304572f84ab3673f3b65a60cf5b489619e3f75b4f
Date: Fri, 07 Jun 2024 21:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717796242
