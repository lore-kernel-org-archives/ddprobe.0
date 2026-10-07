Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689D049B5AB
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791384634; cv=none; b=nJkKCiqJ8/kgvgTEbpbup1KNnI3i1Fgnf7pCP/Q8AEheNNo/yio75yZColE7fIwzPc8OgH0Y9PqEDroYbPIXrkAHO3z5V0jFUdalUk0VH/oGNlGGpu2cF2D3ZCFQmZDDvuxYLEY6cpliG5BzRid9w+khpRkJEmJrp39cUbvitmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791384634; c=relaxed/simple;
	bh=HCLPQ8AqQmlsrYwaw7Xypxlp8OWZAoAr21DHyjZVnW4=;
	h=To:Subject:From:Message-Id:Date; b=oDQUSoW1+S1v0lEajxdxatH4TKAAN/qKrvFhDNGKx0mAgu5zLdGg0JdAL4GhL6aX3yrrSjwjsYMijUicT8vlhHheU53Sq4lkTwP7lTTUQaQCWqkkgK/6JiHBCmkp18IoBPc/DKJ7L2u+jkmlnFOLSLayISTVguLvMHWu5tR1Mf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAR0TkzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAR0TkzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77DAC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791384633;
	bh=HCLPQ8AqQmlsrYwaw7Xypxlp8OWZAoAr21DHyjZVnW4=;
	h=To:Subject:From:Date:From;
	b=gAR0TkzFhgIX+We4n+hDNpY/fVRKi3DJFs0ghikkHlZzwzXC4Y3RL4A8svTFhYWfi
	 S137pDp7/p7nGfupRQewpVm5wr2OscF6enbWDaAdKWlUdzpegVsobZxxpYRvktaLoP
	 bkCabhfgCJ+4EpJ1QZTb1f8H6+tDM0f63FMlAPivN8Z8hwmFGTW1g3GzMMZGIzdJVH
	 6xer/L71nSaUmwFGwrnRCnzUrxA/JBfnkXIFnvAC6MsrfX93KaiXteGpmHNndkvJTa
	 JJXr/cXwayaOUemGhblpQrX+mw5Z72qSFPT3m36Iw1nCI+eD3IEAKBMNZH/e1MdcA5
	 +s2l18jtivyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2599CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138463369.11260.10313544713293466335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9002409823390375f24f7d53a2b9bb31ff86055aa1b1fe2542b7c9e0621f6c
Date: Wed, 07 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791384633
