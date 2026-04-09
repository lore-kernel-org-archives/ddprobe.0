Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9DF351C05
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775703934; cv=none; b=JwLN4+GCE0dYmHvseQiXnb7AaAFpK9G2kKH2TVdYRJKkGveywUYb67PWh+KDSbYgHl/JJ2rlJxu0MGbMP8jkQVtE3QIU9jT2oj4YS1zVNQenH5JT9BrvwBELiXbSt7/y+9LIkjD6OpceO/jp8vGx5bqlE/nMzVNdE7bVldWit1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775703934; c=relaxed/simple;
	bh=N+h0NUzaRQ6uVJ7jp3D86oYPKb/OWD7LB//YPWKuAU0=;
	h=To:Subject:From:Message-Id:Date; b=ko/KV3ASTUht3ib23uwGP/rUKQZ0zN9jpBarkcBq+ktvG9M87XWuaPqvjSfJwPNwYgDV0cUEzB78bGMsFax3nD7a64ZxTyWLhcfB+mu3F1wkL/LnLpoziElG8p3vXXidsBMiy12cgA6SlQIoN2qrKw/ejb+i8pMMkRwA/zIYgdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa8ZpRrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa8ZpRrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4353C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775703933;
	bh=N+h0NUzaRQ6uVJ7jp3D86oYPKb/OWD7LB//YPWKuAU0=;
	h=To:Subject:From:Date:From;
	b=oa8ZpRrk4WzCdRNLbYetnSGiUizfCEPcMwf6SB59splT2YwVd5NQjTbJMUHUIt4j2
	 SS+fBcx6DIYZecmmejCmzriwRwIdaiLR7aZGz+E2YtxOTh+XMD71ibggDN+r5nR0c0
	 sIdbd4p5NW8scWIaHiYaM/H2QIYbvE/45ciupef/x21Vhq/rEzouNoXZSK9HM0QfeO
	 Sb62xzS7jD3izLaiPpdOp7zrDQn5ibTQUGYhFUx0LH5366r9nV7E8Np13jjKlNeZhe
	 vh8xzIBaGqMGtY0ddQWO7ewLGj6Xcx/kLx8MTIlxdU38Pmbl2UfL06KyqONAWECxHI
	 P4Vtf5srnj33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA610FC456
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570393368.15345.10964265599062839072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4fcab16a3e24d79e2f40a6753c70382db12caf0ed1ed536ca29839ce5a67da
Date: Thu, 09 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775703933
