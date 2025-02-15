Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4479D748D
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739623134; cv=none; b=NN+1KT6ik5JEdzbG7c1RyCLDCgnTsvNg/6LA4RoitOK9+sT2tVO9M52k8JXLm6b6GoPyNZYWZcszuSzGRJ1JOzXrQCAEZo3AMoxjv/OjvY7ZOfEop3dfIsAM7033Y5OLuMM5zHhzCkwau5yvktPUH+AjN+hX5yRMD3LockHl4FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739623134; c=relaxed/simple;
	bh=gGLFoIEjFqSk70ndccT1GTutCZlfuduyi4y1MrhJnms=;
	h=To:Subject:From:Message-Id:Date; b=atzOPt3nGMcvqG7TDmTU7G8lUzqjQDw2ZNdjoK15t4Z43/zfWrGR0VAnt9ModHD8iGQxIKfPcW6sT04MmdKzUWhHSDID1OH/Ue2F9TTdR3lCDydMdbtcqeKwEKPAFY6NRoKb6V6TmEy6gnynR+WT79LROOtUCKCwQKF74R2SR2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjXdLu2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjXdLu2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4521C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739623133;
	bh=gGLFoIEjFqSk70ndccT1GTutCZlfuduyi4y1MrhJnms=;
	h=To:Subject:From:Date:From;
	b=bjXdLu2yr6vXp7Z9OiAbAH8Dk7pti0OIiDIzGrLmhvUWDzymfMtw75RjjsQ+VJKpv
	 BNbz6stg/1uwGSQ2SkUAaF8b/gP4oPUzAlhMREqpten1yct3wldP+qkPyufLTX9cZL
	 dfX5myXyxIBeUls22dcsfTbrEAk2KXJoXBlmxEnoUEzr7cpy43ZOknQvPiLZfvNRKs
	 DD/kANBAblouujE+wHQQEzyBQ/q/us6QnFfDevh0Fe/QeFN3PWMU/8SSZJO6Q5vbJV
	 LWVe1//2P1FxKkKnl6tStdztsvaQieKXc8syWRyzZM/DK9JDr6aggV5lxKXDsbfFr9
	 TvRlp90PH6nag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FBAC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962313360.31960.14268924572870888015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e18a54c3d912bdc3a06da030ef762d0ca1c50f0fac073fc8d5ce5f3a3629f1
Date: Sat, 15 Feb 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739623133
