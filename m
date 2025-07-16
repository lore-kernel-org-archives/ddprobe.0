Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356442E36F7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752643194; cv=none; b=FxQevNay+ERxojUtYXVHHMpRpGVroIKzqe92gpJFpLOYVkuDPQYWrD9ungDgncMedhnfzYFGKgdF9gcsIvNgWXQMS7IYGZdzSSjnIAGhKnvCEaU2XYavt5glEhTA8JysW1mSLNcQo0ml6v6QDHguwaHJQf7a5+ydRs5AZwo0YNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752643194; c=relaxed/simple;
	bh=cpZx95KChy55sYb5h27gwAYPTTK+78a4t6FVFnJAi3M=;
	h=To:Subject:From:Message-Id:Date; b=DzU0xue5tdDptM9KNzkpMG2FkweihHNBvsxg30BuGnVBa5HB0//rz8i4kggaxyTw2NeF7g1qVK4BJrmIv/rAqQkOIBf0YJpOGlPWR3wYatNF//zChW+j1xhY04J26LKbZR9BzK9mnrUPfckX944GO3UhUlVJbN5SPObaQ1iBSYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLmOBMby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLmOBMby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5CAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752643193;
	bh=cpZx95KChy55sYb5h27gwAYPTTK+78a4t6FVFnJAi3M=;
	h=To:Subject:From:Date:From;
	b=dLmOBMbyggHoAti9ddWHnbbR2KFr/aJ+5gyOACJmQCAwp7YRAHEZ+c23B9Y2ECSJ7
	 BeUyFbJfaU2XBHF2dbc2svPRjBDkdynI8pYwRWzbnFKz9OocwzV1njsIwgg8vxuEcK
	 mdayktVNHFzeIWXME3HHpyjWdcvZYA5jdHBo05wHXUvERMA9Ba9zgv1Obm2BtXMQQO
	 pmW+Fw83G05yfEaz9lkifmogit2me4EkqOTQ7zguWMpZziEfAsM1z5ygXvgIvqQw8e
	 LBNpg8f76JCXZLqgXBrEm5ndpFxHSToAWePu2XFStPb0nnB5r5VcNLIOK/tAKI5ZPS
	 Gn+Db+Xje2d2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CCC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264319357.10681.7890145657451317653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23556f29295e8ba1fc8a41afcc3d84100562a76fd66ec58e39c4eafabfd7cc14
Date: Wed, 16 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752643193
