Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CB33A1B5
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756125594; cv=none; b=ZZK/wWCGrYrjh/12mXx4Mp3in4IzPuKh4/LqdXOOwFW72majZLdJmxZMuJnciX4O4djo3dqk7iEDkTVQ8LZgFPuWRZH41mhrOLzc65N6aW0ggoRY/iuJwW0NcFGNvVlsNFgIYyYr3TjzXvX2sitQmy75DcAllODTn2tePXw6MCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756125594; c=relaxed/simple;
	bh=dqIsYjsisdlSAqUd9nfyCMpfu4n7nIWNKAFVj5sg+/0=;
	h=To:Subject:From:Message-Id:Date; b=qLwzvAV07Fo5RI+ElGXlwiKRCFiWf4v1JyLcNbjKAgDWo9pdPvJ4DCSSmlTfESUzFYkO126ZDtvxMvYH9HnrGszu7jUojKB6aVZuiIOue87RP4aF1PZZcp3aP+A9ld3KLnky1LR1uyd8DWTROgYdIpkgEsQNyVRlTp4dttm7c00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drk5oFXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drk5oFXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBA5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756125593;
	bh=dqIsYjsisdlSAqUd9nfyCMpfu4n7nIWNKAFVj5sg+/0=;
	h=To:Subject:From:Date:From;
	b=drk5oFXYTnSm4QhveS0i9L1+m2VMED/rsvnqzqCCIuuPt0nX3eDwDqKCAYgWqFxGr
	 BajbMNLSOI6Wl74w7xMXvBh7y/ED8duAPZIjSxhTZrDQdJB2TI2g3g9g6oWnVjZ/nK
	 DLwQJdvuBHHFc4BmJYO+o/C8sMC3k/PpgUM6XpzroHUPlK4zabIa9PfbEcM47aa6te
	 3t4dax+91lfm9rxiPlBiYvFr2peKTRbcr873tgvAp/fnBvMy6dM1xlgLAEpQHcR0hl
	 uEI0EpkWTjfvQLpZYpkpPPSsm1EGiKYbDdnLHszMgfA06JyC98s3K+9/pzpB2qTzPi
	 urwKW4NUHsnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58DCA0FE9
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612559357.7783.15433242116521301615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c001e3ad0eadd740692c55c4b2e1a601c98830966798f3fca3f9942cb7b6b48
Date: Mon, 25 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756125593
