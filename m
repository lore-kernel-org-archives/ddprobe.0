Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FAA86338
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750837794; cv=none; b=iTg0o7XKwrsP3lQvTb0kxlBfg0g2VYtKqHYZmHNVelpN2Vi9fbcEAHXNzcsBxjrFuNpKglKXz3hdJkk1HtCiBjj1kA85Wa1tWxb8d3L9B1LHV2qDOETTjs1waGQ/WxIohi4Or25m9iU/lo5gRTgQJgga1NbYcj0ZExDcXpDSAWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750837794; c=relaxed/simple;
	bh=8OuEeEwrI9ha7x+o2SHu3814+2SgFoOTobYc1RBFuZc=;
	h=To:Subject:From:Message-Id:Date; b=afmDe+cnYppZ48xq9QpwsikKWhHLEEhItQV7rvVncSJaIA6OSTEOj5EVmiJNxQ7r+wD5By0YKdgqFWK//1hbFg1XfN6BvexGyqtHuLPDgU8YavUGe47d7JW5DLeKtAaxagzO/wj6/y/z3eEaBaeXXggQasBY+dA2xwZ59ybZyLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM5GPg36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM5GPg36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D326C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750837793;
	bh=8OuEeEwrI9ha7x+o2SHu3814+2SgFoOTobYc1RBFuZc=;
	h=To:Subject:From:Date:From;
	b=UM5GPg36UZN220xnR3AcEM0zMV9V7dbjO+YIS4VtXrIolxeZIZaQsFOUZcfPG/w8r
	 aR+VDEA4ruedxEhR7kephKBIekRPnaHThkhvtGXZb7uCzTRVd9VDhAUIjzyTEKBwrx
	 CK/40z+nyrh3HOsryjQfCgf21k13wF5M/qW7qF31Z14cyAiARo6n7X0UoDwvETx6Py
	 UzWl7RFwlNSjfL36VIMie++RbuS/BRMEhfKmh0hpY6alRvRinEw5OckU82724CTGb4
	 AyeQAOORaMunaFXs+N8gyK5OQUrAgL3D7LCCpoT9rcGBmp6koBD4IvqF0vDARvurPa
	 H0GF76kC1falQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8AC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083779357.2587.10556556090220138902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25193ef217a6bc5059d059df1c776d7d7d7bb71e48d670124d3374d84fe2004f
Date: Wed, 25 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750837793
