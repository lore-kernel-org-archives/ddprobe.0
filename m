Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F802DF156
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781223994; cv=none; b=OtfjdDpsZ0nBT7AtS240CA+L5IWlpOefyMtZ+aES9GvTLRiTJleHbqizSKTvEZ4V6GBuK0leThTf8igzAwxyJOGZ6ef4BO3gfh8pC5ZjtSjHxAUD8pSlYsnR5ATruSeaShFkgI89WtGN/2Mq0y6wksQaZ/5+pVDZ7/IsQzoqh1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781223994; c=relaxed/simple;
	bh=Z+bWt1mDoGlvrIFld8wGoCMlZVvR0r7iIGgxaTW+3RI=;
	h=To:Subject:From:Message-Id:Date; b=LwKDfvP/s8u/HcR163c9ZFkeg/stzUnKY69ZtjBH5oZp6vE0107XRRFi2MEYcXZSyJ3syAYU+cNMNQqfviD09xC9VL9MfaWf2x8CoaPYZ85cxinlaNNsCO4HMrQp+Z1ANR6THaePn2+2S7oEoetrgbhULpDukYuNuYCpQmzR4js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVTYqt8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVTYqt8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B22C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781223993;
	bh=Z+bWt1mDoGlvrIFld8wGoCMlZVvR0r7iIGgxaTW+3RI=;
	h=To:Subject:From:Date:From;
	b=BVTYqt8Qs8wfe5jBumZ857aWUYowUF65rAoYyGA7krdmArmvf7mjhZoDV9KzOi0Vg
	 x+CegJLc9p2HbQ7spSTQ7jnMU+3nSz+6cG+LyxBd5FKNCxykr9ks2ig1OpotjVeZqG
	 D2gQ6/I5Que6W4js8m+ApYBpjlBonHx0bP9FSK2lnZjQ9LO/7H2hIkmYvX8kJDiC5k
	 WMLgSbFvXkwcjuZT8DO5nWXyiamd79vel5341Joo8i/mIfW6FaHn5DCjrTQ8eURKoL
	 z5u6KbZT3OqiYJlXrzjtvnRyhcEus/a2G/kjpYy+hnp5Gk0dJZmKPC1U4StkQyCTF8
	 85Yxbs2LzNkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF46DCD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122399370.17968.6943939721170547308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e1fbbefec2bee7721341d1fbd9a0f8f677281ab6f8608ac1fc30c2e253dc19
Date: Fri, 12 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781223993
