Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC9283CAF
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434195; cv=none; b=Zl4RkbYpu9UCstcMREy6mry1nDVTmsHgOpjLlZm0/TUOoj85znNJU0dtPDKFr2KpJcMR8m74pTBZ5xA0XTq4BJTQ5Ik872NTmDOUqP6GwVmeiK+iZ2G3tsps0IqMcZ1hNdZLKvBkDSQ7P5SNAxLUfFRo65LZCCUuZUT6B9SgXYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434195; c=relaxed/simple;
	bh=huwUBQN6VEMPeGXkRRy8xrd2PwzYJAWewFmIut5LYpA=;
	h=To:Subject:From:Message-Id:Date; b=hsTp0A+8Ybs0fv1SRiFZXNwoRwqg7gMbzfDPLiToQ6X9XM/YnBKBY5o8HAuIDyfivVIGTcNECghd3nQxKAtsXc08GSKMAOgI7Ibpm6XlLA2wELjG4usml7lzieqG6fLhmr9TjigyxoCw5DRwAnToY6rl+JmwxGB8Gtjd+bSFCps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXvReOlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXvReOlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3AFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748434193;
	bh=huwUBQN6VEMPeGXkRRy8xrd2PwzYJAWewFmIut5LYpA=;
	h=To:Subject:From:Date:From;
	b=pXvReOlZhLnu7AkDs8VjKrvcnT59RcAJ03vgFOywGtp3pxmXoZISS8HHKIVXqTGui
	 +0d3dVPzVLJgoX9Cr7gBOuN8m3jjSC3US032YVAH8uySPuYk5M8QT6GR8eQL1/oiSP
	 wJXVpibOuAeNsyGHVcXVrDkCtd9O7EIPmwKP0a1njfZ9B22KjO+tTifKYsN0clu/0Q
	 LtXNjObMYYzLWYC81poqsBiAZZp/8dVhoHlPoxodBe9zFqEoT3e7u099oYRBDn7j9Q
	 pkDemBvHO23wDMHuOokL4sH7qp9UcxE8sqctziG4ig9jDEX6kuVFhv1a6FE/cEQ3gZ
	 T5sMa6I57GJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E22AC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843419357.7019.4077956150617940126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81407391fdcf95c5860f819096ec97dc9b5b947b5c0692e71dd621a50b23e788
Date: Wed, 28 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748434193
