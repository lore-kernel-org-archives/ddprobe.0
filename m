Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC414265
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 14:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714744943; cv=none; b=N1GParFWrC1EV+r/dgIJj1ardS253nOyez7fmKUn0KkFTsWOtfmUpgTtYPbSO4a5k2OZ0XEUMeEYcXzLvDhlA5/jcLibmwSKpTJWNLfOO8jcoI6l2E1jUYfQPQNwVnwGSQbZTo8/B7A94zfHuJVvx7XUdlb9S91b//HBjLP33UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714744943; c=relaxed/simple;
	bh=BgfGWdrpSnfpr3rorLK5HKsVCGHSGx5/xNT6N8rzvec=;
	h=To:Subject:From:Message-Id:Date; b=RCwGjdb/j7QtiGT9FvSXtcEeMkoUJeZGKiunPXY6CfUhZP6WL6IUL/BUdbkDrikf3H/DjAia5KRoAy3lRfqov6Mb/0lYZkIGzseorxiQZpFd3cwzl0mZQjAZEkXFugcTn2VvchS70sxlytnOXeJ4f1u8PLmQ6KH/yq+304oA3pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHJWIuJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHJWIuJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31FCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714744942;
	bh=BgfGWdrpSnfpr3rorLK5HKsVCGHSGx5/xNT6N8rzvec=;
	h=To:Subject:From:Date:From;
	b=kHJWIuJm9R75AE3nBRZ0pARBpAYBV0uPu6YFvrLOWbbdW703BD9UkQtqn5Xv+bYKg
	 BPfa/Xsq+Mx3xB8rQQp1LLVXSs8uyw1FlOi/KqcGeQo5y5aYjkdsVXa1/CpGRppBoO
	 0YBycaXZpIXEst4r/Hz720jz3zLWXlm3takQ7tKKFdTxf7nWvbmolTet4Ax8QY9c2O
	 N8ZUa2/+DQapI/P2TinJ/wWKqDz5eoMcjJk9xit7eAEfZzNo0Tou7VDC7eqHCIO01m
	 TrdeDmmD0IwDx5GxpaEWaoylkPJAlr0W7RkKE0yZAlQn5tRjF8iXjowQMChbG0pBtp
	 u0eiFsO6/n4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C142AC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474494278.26260.15671280589051969671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f4f00d11ad2260788ed185a861d67640a2762438991e96676a36b863202889
Date: Fri, 03 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714744942
