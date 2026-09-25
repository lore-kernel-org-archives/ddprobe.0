Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F81E261B8D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790301034; cv=none; b=loBvNX3reR5WJKYUIi6K7pt9QwJM97LxNngqY7wfMsYkCAgsB1lBht3Qq0w6wmgWmTJt93X9daoS1DQiy7TYJFYMtwkg+CH99/bugY5TaSorUbNfb0usXdJkpOQRi73F7RC+7lEqhrJxxo7Gu+fGmrVga7amtXUduUc6RgWZiRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790301034; c=relaxed/simple;
	bh=5ZJ5zdWMCePR9LiQrvSeqV5fEFYr/VMksmxyHulUBbI=;
	h=To:Subject:From:Message-Id:Date; b=SmeUu6xuHuKJFylvjs70HYB2HUBekx5HnGKkBGmwJ4sx5uHGDxDIW7aOsz0i5RAti5Yo7HGJ81m7aCjw+8K8UGCWE5WYkPJhhpTKr6voRbKAHrAwFEpPDeK7ovNUVTvDaAjc+K/YkYAtSfz6GHpu+y9CxWTW7VqSnfYBv9C1mOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU0NTYYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU0NTYYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D158DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790301033;
	bh=5ZJ5zdWMCePR9LiQrvSeqV5fEFYr/VMksmxyHulUBbI=;
	h=To:Subject:From:Date:From;
	b=eU0NTYYx4VBuEW7QBiXsmBXppfBPSwMko7yN/hLGBrGyjE3GOe4gT3BS4eBX4NQJ7
	 mCcvWLHelpIsG9kRRBOVskbCurUUsZOx3SQAKgWfAYG0mcDfStjc1jVkAakNcqev05
	 G3ToFHqwn4+4QLk0gQuyR1BdEaI05FlMQ5TVIVl0vILmsDlfj+BWr+RO39xoVFroB3
	 0ICSOHcWuGAU9+/ddgSx/ucR8zYekehFBosFJeWlZHhsTmX6h9dYm/A2ZHluNMUIJB
	 05NAeUVrwb9MHFAvyFsjYgAR/mGjiHusf+5ApWmT1+G8G+WtSbMwVuOiWf1yCNzYzC
	 DuZUCFPHBt0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88FC9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030103370.11764.14569042399948300490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf86cf8c7a2d033153fb7688491da45ff6aca660bc8bd2e697be3a65a257591
Date: Fri, 25 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790301033
