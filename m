Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8442DCF7D
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772295294; cv=none; b=bCvjouOkGsH1YeIewdo9UEmRK8W9v46OdRVC0ykmBvrH+dqzfbMnNDwYZiC91mL7hPnOrnofhkusmWnftgZ7bAGmH6Nbp1JlTvUO36UXdP81OI6YsL8HFpvZ3L7DP0i1tfjv9j3ZBX2AYaSON9e7M1g2+UM4KlXPyn9b+hUxBps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772295294; c=relaxed/simple;
	bh=XDQg32EPxd3zk6zwImjhCjaOC458eqtWS+KLC/yIWX0=;
	h=To:Subject:From:Message-Id:Date; b=degH4CczUBob0c1wvhgWQ7OGZjNY8+3OpYAfMXpJlNIoOUf70sHuHtMQkCVfSb6zCtKjKgmUzPbYuvqY0NinkMBACgaJebdXO1QYQsoh9+Q1f+GLe0ApFwk4ayYWj7JZTc5TpqfdENct/LGpcOlr0meEbcjdAOicOG6MFS7FI7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvnTXMCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvnTXMCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97C8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772295293;
	bh=XDQg32EPxd3zk6zwImjhCjaOC458eqtWS+KLC/yIWX0=;
	h=To:Subject:From:Date:From;
	b=pvnTXMCozBfINRknuOSzrGVd28y4ZMor0O8tOm3QArMoMYsn7hCtJGj0O8MQXkFc8
	 HXWDMskB490zAH6nesnwhjmq7o3k23Bs+CzepYscCjgzOMQT0k4I97VledFYV/JbYd
	 /gEkPG+GVN9jYPgKwmeFQp4HywIWZJhCiVEnUqrOGRuKLHjxdnzw6ZT6xUQznAYxGw
	 vfk4FcIXVvHbPENhbCvPT0xqH3tec5HCP72YcagGvnluqfXw+k5Id+gPlQOyHpZYkP
	 w2cLxgEOEvQ+f+dXhX3EhsLRn529hc/FZ/S3jwdyIDGG8mULKdSLGhyu9Tq8V6b8Gd
	 R52MmSgJ+K/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DAFEE4F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229529358.987.13137277876818697738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bacaf50d6b65cd99905c9a4c11dadbc8ab1dbb44139de9389c40d91d8b55630
Date: Sat, 28 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772295293
