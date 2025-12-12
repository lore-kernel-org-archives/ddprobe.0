Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9D4296BAB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765525374; cv=none; b=r+weoyJPV0VjG7mGQLxzrs0bqNxkdi2RIQ57IvOzgv4ubQtJC13M9M4nnY420vVvIRE7vl9LrrRRS+liGpEz+3EGTqDoUHwBcw66F4rPLm5bxEzM14pvb3oeLZIVjWXc2fML0OQKMQcMWlNs9VZf8fy838SBPfBL0jK6JGoSRiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765525374; c=relaxed/simple;
	bh=/mAHCKMcXDpjozZJe8PfkPW8nhHBbGkqYh+Wz1CXBHQ=;
	h=To:Subject:From:Message-Id:Date; b=qIaAuQlxZXSRdv65Q105b16gBspkGQVQJbbzjNGzXHnwoEPvJOn5nw69iiFQZG/ub9AIAW7z+WXgYVjbq8OkcuVXoZkv4tCJ3SRtNZWGnQw2hhWgeAzKMQhHqoC0BFvUz+C1sO3Y1eQ7f4Wi3n+gaykl3kce47tbJZMfsbCv1KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpPRj0NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpPRj0NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F38C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765525373;
	bh=/mAHCKMcXDpjozZJe8PfkPW8nhHBbGkqYh+Wz1CXBHQ=;
	h=To:Subject:From:Date:From;
	b=EpPRj0NVMm/s0ItHBNrqRuFiV9y7qCBaDXMzX/tsLWlP/7x0cdINYkm0ns2hUg7tw
	 rn6h1OULHBoVDcSeV22a9mCzB3YSXW3wiMcAthAHPCkQwUTTHU8NTTZI/dEXFGXWhz
	 5AudF5V0NYL3Y2xozDtJZQuuy7lg2d8VOGhUrynNOS6sldTUm0DthOuAUNFsOIut2C
	 aHiUY1pIuD4edYZUGXuQN8GI4INqAUshaM3abOGBlZ9xZlTxlH8Oj7j5YGfe05CvjZ
	 2Y5wKrqISnEoUjffMl/jZ7cD97RnYQAx10ldN6n5CbzUzlDsFLg/SYqnbi5en7m/2z
	 AUl04D8urgv6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BBED43371
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552537359.15995.14507967387780808101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbaf16186a0daa5a7d65705e3bda33b79f6c838668354107f8ec16431942b3b0
Date: Fri, 12 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765525373
