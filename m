Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A9515E88
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719076343; cv=none; b=oZpXOgoQN2z7YQ2a3zwS3eu956iBTPz8nNzr03g9IvICK1Emh3ZFa9bdJQVtcA3LbK0VtYzmxuIsuF3jXJDaaGoSNpmHPnkkK0fH2kaVtYnJB0TeoKxhnpMqJ+eU0O5WAR3onaN9ioRr4BA2y4OUhYrLYi1MtQKUxTFwEQ3mr/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719076343; c=relaxed/simple;
	bh=uYmVSiqXQLuSwxASxB0s/FN/ZZ3jgehkEtHq4idbWIk=;
	h=To:Subject:From:Message-Id:Date; b=Y3+vx0fPhjDnMtpBXGGWnTOIxjtQFxOI734H0YroOrdf2QhwW4T6z3UBqPrVNsxjxD8VuYzos7elsQf3q1WfYBd6+xb9dDwZIyzFegfYrx2CAOIrryREAAwukdyTlH2eJqra1qGGhvI0qB+A6MMCB7BVhYlPcpw6eYbpS0i79d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kj6JrV0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kj6JrV0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA477C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719076342;
	bh=uYmVSiqXQLuSwxASxB0s/FN/ZZ3jgehkEtHq4idbWIk=;
	h=To:Subject:From:Date:From;
	b=Kj6JrV0mORGBX9DNYZyQbIlPQ9B5ecjYP5CkS1nn4NL1fMqydzrfiPMHfi+9mL2oI
	 98y2sZCt6tVepPHNsCAB4a4Rilgs+D60TmELGu4ner3qKWNsdgoxwW4EqQMTUsR1so
	 5ZF1sJD1l+CZyYfuPbCoFqQY7QeAKB9UpVTtY1QokQjtvSLyEj7WAU2b664z8uTdLx
	 2kFC0UTTM52LUXVpVJ4PuIV70pitJGkpIU07fuB2Nwoauf8ZQ0OBQQ4ysDPAutAyOi
	 KbFJqjnuN8xhXL0fgnq3fTsyimpQkNrgeC6id6pb/LRrWigTvQz2gU5jb1Y/VHbov7
	 XWXpLeGcb8dZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C551CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907634277.17583.15378510558351671952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66d5921a929efbb4aa2c69dde9c5558cf97bb46653e4b5a67c8242c738066a0
Date: Sat, 22 Jun 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719076342
