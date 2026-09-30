Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E433A9E8
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790729434; cv=none; b=qKi5bdIrJxTK+OsyipksbFst49HZfbuOCOT65bRBNOybs5MIQNOzW/y7o3t37iP0A59sfDj4vkRk2TDPTPW14PuvEp3x77Dmdy/wJT4aS5N6kP311Em+cMibavcW7YxHgzZG52HtBCjPPxbRKxluSgFv4nYB4igp8wHMGI5C/dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790729434; c=relaxed/simple;
	bh=IRtqG+BP7EWYFWNZiX4Ah8wXf1rl6moUEys8Xhi6YB0=;
	h=To:Subject:From:Message-Id:Date; b=ex2SeZwD5fsk9Ulr+mu75h4pvVe6XkDIOm+7xF2YBXm1z7tmrh2Ab2J67aOXYiUFtqkL7+eJpLIBj1I7cnagc0MYcgkbbkFEq4CFzeNhAtb8gxd0+If9tFdqBKR2Y5g95pmBFe8DCjpkRRDRpo+yb38ab7uMD46r27NSsJ40vqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gv0kA0f9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv0kA0f9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D060CC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790729433;
	bh=IRtqG+BP7EWYFWNZiX4Ah8wXf1rl6moUEys8Xhi6YB0=;
	h=To:Subject:From:Date:From;
	b=gv0kA0f9CGRSXkI7eAntbl9FYEnnubWXZJcpWax01SUxSiit5qQXIGaJ4SVXKrqdQ
	 dkblIoqoSv8m244eAbDgyEpP29stBmhY0EWnii41gGV0WUxscOgGtnYQrmFONLCDGm
	 XJT83vpAuD6zMN41pGkI0jYVEMFNTP58cgaRD08DcieW/NMiEtKnLAA0GuNPcuJuUU
	 giIUazKaGgaF2RSrY72muo4aQ8vuSLllenVgzvsFfv0K6Psm0dm8tSJiLBew9ckwNV
	 V6sVcexMM8C9BxDDtz100jzCEqrW1W+Blce2ud8v7LpTJr9DuUEqIZn3IpZMkIKLw1
	 UaIkH6mZigyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC04ACA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072943369.15595.1369096692456773651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54257da0dce5bc2a6479b05729560ed6f9a65b0b6a902ce4a18d439f44a8ce7b
Date: Wed, 30 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790729433
