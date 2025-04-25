Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A141F9EC0
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745607595; cv=none; b=M2P1vTeXk6uvd+wDxGLi2yaG+OVgR2kuvqI3UnXWvzkhwIIplhYHX1IgX4pvd80mssoLFTgthAqBNT+3CAniFxvX8TEyo9gY0V4DFbTW5IAF/CEB0YQuCJO3vZ9C2vKXgtyB/Pp5YYZbCO590QwMFFY0AaXGxRaN4qhI97S3ykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745607595; c=relaxed/simple;
	bh=ggxxz4kF/jbadlDc7bEiBLv+W0TbDPxRL5JA8eMb6aI=;
	h=To:Subject:From:Message-Id:Date; b=C3fGsOypXs7xzBBaQgodgtVR1pgD6wkiB+kc07psflzu5QeWf7+y/D/nTRUIAVItqtfZmAjReCEx6Rtm0gUBnTMSa43p9ohLoYBJeMd6v6h3m2xcLdZtR425JRZTj9ZTtYzWtxgcHhmScC6blf9mo5kwEXbnPxxVS214lVXErBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2aKPgwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2aKPgwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745607593;
	bh=ggxxz4kF/jbadlDc7bEiBLv+W0TbDPxRL5JA8eMb6aI=;
	h=To:Subject:From:Date:From;
	b=o2aKPgwRSL2hMfzxxRQ8LKFxG167mVwD0Qg8/MhwQh1gvHUgtyYd7osrSqoh971nO
	 Az8jSUNMB/NCVMaAvsNpwGUCJZlOqcQVY+xOY4E52U9e5ek6pcFUAHvVg2lr/GCh1G
	 F9o5T8xJG+AobZHDvGUZkRyqdK0VgnVgr5+C8FenADBCqK3DOtkBgKS3nMr/BE/GYQ
	 HiUpLo2XhxTZczuzUWqEHnnZGzinDoSuq8m0Je0Vrw4Ahbqy+Q8qVhbEkzALGmKFEC
	 pha9rMA9gD5dCbQeO14BJMSoFSlNMtxadnhpVYnxxikM6Y1Y/ZJargiRPNYwxzQC+L
	 Dq/G46ZclTeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEF2C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560759357.31157.16222346279073734053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3212ace14a77dd051ea6c1092f2c72232174505b2383675440d1c9eededdd93d
Date: Fri, 25 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745607593
