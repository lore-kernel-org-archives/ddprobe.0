Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390E621CC48
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746625194; cv=none; b=g8eovmC1cW06nF4Buw7yNUiBPpfqThWCqV4tRHoVgCTjKUfV/rDffhX2HuYG5q6aPaauKRXGkvdujYLUoiwzVHwb3/1MhR1h2ftyZsOolWvhvTO0tjUrb8fqdcAdgpoAE4Rua5WSP0TeyB4Icm6arZ6mUnfXcy6oSGlZ79U046Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746625194; c=relaxed/simple;
	bh=+1U8Nkkr44nyQyQL+XIzAFBarWMx45JcMaSRiMttPz8=;
	h=To:Subject:From:Message-Id:Date; b=ZP4SHM0wyTKAYzF9o7LCuVpXc9qU69tT19pVMa2/j4UNw5G3XkHhBosLa44VcONoKqeQ5DC48IOn69jvOnL2xLL0UwdTpoePfnNe8VQwOvaHh1Cn0g5UJKFqLCVwd+uHgiTiviLC7pwabqLWcJwvEqg35T8H2FYtmgbGQc0C/Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al6Ra3FZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al6Ra3FZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ACFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746625193;
	bh=+1U8Nkkr44nyQyQL+XIzAFBarWMx45JcMaSRiMttPz8=;
	h=To:Subject:From:Date:From;
	b=Al6Ra3FZcjKmWOCqvrgdGMQ6SEjYFXF9dtKGJlfHUrJc1FSu6dyMNmRV1Qb+wrUxA
	 GLRsbGxiQMli+Ngd1AMsDispahQ3CWEOzm7N2xaH0pieEWIFKlSXYmTvTOcUYdmmMB
	 N6ri0tvlmWE91cx/vBXjhPcQZRgjIq4yBVzrPf9ZTWIcvuKQjL/k3cwdT4WyIH4fx/
	 N4N1bShPc2Yr6ULxPJddl/ZjDMqzRph+Ap9NGuGuh4p6uqxZb/x6SLQuxCzs9TkEQu
	 Hrb0vAvy2wZCRMgUYFxm0bo42DiLqamn8PR6AnrVKpJtM6QB30bftjQzTYZJxTLx4M
	 bWEZ30WjOtrNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE33C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662519358.3405.9828461621765687098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb811d58c9a1062dc02dcc0121a13890e463a42cd1d02c2c76580b6f2e681469
Date: Wed, 07 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746625193
