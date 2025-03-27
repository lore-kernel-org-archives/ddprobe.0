Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D482116EE
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743074394; cv=none; b=Cn9trzCFm+h7Iml7cM3I/tJQ+5OM7MQSXuvOGutXrri6FnAeqjFdcT5u7Hv0UkB/s4bW7p0lQ1bfIYHHt4CCE0CDe5QsgQEViTBIdHGIL7IpYlk7WmclKEDMUm+ccE5Aeiay2+11mWUQ+IMsp/7oUjeUz2L0JTlyJSb0Ir+AKMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743074394; c=relaxed/simple;
	bh=INIl5/Fo0oOOb0Kd7FE8dyhnAB17Q72zKD8tBk48MQo=;
	h=To:Subject:From:Message-Id:Date; b=qJxisEoMOV49ajQKgmy48k2yEA9lW+QhvYQKQG+9+Qgfp8AuVluQxERtXiOqqoVNCcXJ/vEWQrwcjrtZUN9asAF4esnWsLOiWrxP3SO3ALpDaVWumBM69g2YkILpOe1ld+DF9Csk9/TwBbWGlEvJq1cooI+g+HaC0Yuj/dHEt9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4gBKM5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4gBKM5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743074393;
	bh=INIl5/Fo0oOOb0Kd7FE8dyhnAB17Q72zKD8tBk48MQo=;
	h=To:Subject:From:Date:From;
	b=G4gBKM5hAohImtKR5urxorpEe7RXu5xNS+AyHzjGU0afBTtDvoSM8jEibLg1m+EaV
	 QYeQVbWc+1xjIcD+ewOZM3VI4ZTEB36una74e5gKn9Q1um/3Y7jgN8Tz/3rrB9shrH
	 Tj+Ku9IlCD5PpSFm8B+ZHSsktg3UUBz0o3P97WyAoPfQrSTpPr/gQnZxPLnOl5lTpl
	 W1SB8t6nxYalFNppiLpEshvDyugNJ7Th5vMO1A0n6kns9UTxScN9lPqiJwV91iUnqp
	 ct8YZOQt+1VEk1/SZYvFY3CkCY8t8XOgIkgcGJ/yruRM/vXtfln7gtXlUQ7oTq1D15
	 JaWxZGZRrUa+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9536DC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307439360.14948.3975661123756923442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9334c560783fe94b636f2c2f2c73d4adba170d2989324c3ef9da447fe58db268
Date: Thu, 27 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743074393
