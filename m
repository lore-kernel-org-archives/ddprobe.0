Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACCB1C862C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754456994; cv=none; b=N+rag1FV5rQQJjIZ5xgMgo6u1zFI+F2AURbFqpze8LKCP+pIbi2xzbtNgmMpT6HvTrqFgQlaeybdC406BkyeXf3ti/ObdNYJQZQLoyvVR319m6ziaSounSPYWudNmyxcxUMgk5uxQdV2Ap8dlz0iDlE/vvDgHhXLKzpseSqTJng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754456994; c=relaxed/simple;
	bh=R1BjwMtagxJUUj7Wt3IKj81ZPe708f++yPMniv8Yhhc=;
	h=To:Subject:From:Message-Id:Date; b=dLKpCQTLDZOvVq+MvqgRTeQJ0BJVtO1Quz6CWXNMnz8taHu9wAKU2vKUoXStI51nLpCzxEqvR4Qkg++kiciLph73YBM1b/yt0K/XcyGoVdQWhnoAZQYy/P4NNPkHy9/+WP0g7rvWlxLOKRoNEr8IgP19gEFMUwUjepQvVWJ4Brc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6upS4un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6upS4un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754456993;
	bh=R1BjwMtagxJUUj7Wt3IKj81ZPe708f++yPMniv8Yhhc=;
	h=To:Subject:From:Date:From;
	b=c6upS4un+t7liy9h8cQW1VdXiA4MaB3wLRbQsijjdrXL9IRVlZeG0FimwzhN9CmLx
	 vqizgbffZ14NkSHLpDRMQGxePj/ArCy+GM5S3GNGSNabwvENtYOsRJFInzxXk+j59x
	 IW0GHfSS+lV/3we+ZE+7Eplj7ChqPgRo3OwRgh9nNVsyH8OmM8VhxnFbY/h62DD9zw
	 Wiem4jxhz7DSVY26sOpzVMnjhAH6PRWyG/y4ot/VkOtIxUHkUbujOSDvcntBaELHU6
	 dGjtaMuO58eSdzvj5NYfgk01ywiXGmiVNyVMJ2PiGoOQ7BzRrPXMcyK/Vjthdr2El4
	 YFnG+wdnAKOSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9DC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445699357.11490.17540219689164828671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be792e68329b2a5706b75978aa9704efd62bc4c90c4e7861e099295b66e1cf9
Date: Wed, 06 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754456993
