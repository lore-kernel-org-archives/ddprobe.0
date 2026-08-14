Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763CE36D9EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786685434; cv=none; b=lthF/vreOKjsJPIlVl5p4Gp5lbZ8Phd1Fg3sMkYAeE/4rdIjAhFd5fLHHTHvv0F+TSnLQkeoL7GJxPLhBm9uKkcRON80EmJXPHEFXp83ohuFk6BcchrE08Mc9njt0Bstf5hWntveQOcNp7TrZjiFz2RqngbUcVgGj6fGXqM3Uyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786685434; c=relaxed/simple;
	bh=eH4uJ2KEVx/69G7qY4m3poI6UXXxAH7OKcMGhDIOXgQ=;
	h=To:Subject:From:Message-Id:Date; b=dNm5B8j9khG+qXnoSkO7qprIGr8scQF376TmcFhIos18nYWf74adckgFxcuGvpajqBQnCh9O1LbVDUD/VJM3GJWn4813kkchALRBcgN/NeQo7uH33wPMkJ5iFHnzSp5H6ozvEBKTxyQ60ETD+lunhdEB6RbL+UVo+LsXiwcHs/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnBgdn8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnBgdn8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9666C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786685433;
	bh=eH4uJ2KEVx/69G7qY4m3poI6UXXxAH7OKcMGhDIOXgQ=;
	h=To:Subject:From:Date:From;
	b=YnBgdn8lDhX3BlTdQRQQfyTzUKvRysYt9SieJrX/PvQoVn1TUwbaG3oSukLlOvqE1
	 qKFPYsOtokELHg6Dx7vq7NhuRC/1Kdpl5hvRH3jM5uIilD9yOQPmlESqi8nfKluHAb
	 uuZ0iceP57WxvolVDD1dpmhtYfp0WWHgk7RTXxC+I0UMJPesj58G/b79nCl6neoJ57
	 56mRsqUAYkYwVrqL08N6YpWndYZoDUj0zIFtjFJ9j8qOHXsBiE5OHxBHxaq8So4WJz
	 76WmYVOsufOwzoqn/5H3h/Col8G2y+pAK36z3GshMOO9SEyA4HEYjDrLpEeJ2EafdH
	 vCAgWacjBaZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7847C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668543367.10655.4545899518407374756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ab917e9d3adb5ac8901a5f084d50066f8041ce3b1ee3f344489590f582eb49
Date: Fri, 14 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786685433
