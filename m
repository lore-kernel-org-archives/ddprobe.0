Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2AC23E35F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755745194; cv=none; b=BNtjjVX09L/B7+cdKq+PxcY4H2emtOCQ+UquLhR4NIJSG4xtFTwpMzHIpA4L8nzrAeKyXzFn0wbu9PLkBWMFS3WY6TEfJ90B+ia39PDsxP05HyqxmrnkNcjNQWuINlJJ5Icem9Gnvl9oc4Bn1s2MZv9NsMOg77G9Lm331J+8Rno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755745194; c=relaxed/simple;
	bh=TaTW5oGJS01GahQoEjMcwnszWbbPX7x+w14LnUE/jUc=;
	h=To:Subject:From:Message-Id:Date; b=mBGklfUsebrYqnaG0oKWplI1i8obCbjPd7lrQ3nHkBwAAFNXqWWXwQDGWv9DciL9Rr0W/m7Z+qMMC0EsNX2nsXEs+czM1gbU+fEOOF0sXUDo9XvV68aYLVoZAtK98QFCeGA2Yn5M8IUR5zKk+peWlE/M0WJS65g74HO5AGbH6ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4GfOl17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4GfOl17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755745193;
	bh=TaTW5oGJS01GahQoEjMcwnszWbbPX7x+w14LnUE/jUc=;
	h=To:Subject:From:Date:From;
	b=e4GfOl17PvfLB3vvgxZutn21ua06HD3mVk3tagRwILqnVxU5hKhJalz989VUHqfZS
	 HKt+ZumU0zvmqk0uZTRJtvQF9pp1RzYF/ieqHgo1yho9x++UPRk54C28ojnsb/grXh
	 E4JbJS6paryGS+ncWEHK0rVvR/Nnx/AgJv5WQN7hP+inWqushh0qwXI9bl6eIXfstW
	 0y1x2sQINkpkSmBVkzjG9tUt6/lRJsn02LnKlyAVQ9xXLpqdCU/k2tPnbDUh1w1ALk
	 y3iZ+gdjbiG16umW2m7pXuF/HhNPw1BeaU4VWulm1lq4/A6pOFavB990T28U2qbSzL
	 M4Pp5fUIyLBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92557CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574519357.1972.11376620464379787317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14651998036849087283954bfc4b658a5614d7f0111e2b20460ac017d3e65026
Date: Thu, 21 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755745193
