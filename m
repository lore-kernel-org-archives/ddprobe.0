Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098F3EEBB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774818894; cv=none; b=OHFR0bZ77bhRDwzXVo0TFwZu8aThhQUPIi+cjWf0kuT7i3PEMHK6qOP2M+6jwVyNGiu0nznaBvrCjvhz4bIs2fZVB899xVy13cbmggMZ8vaDUxbV6s8iLbl1bR8xC6bGB81Y4wrHJglWwnK/jQoQ2/4Fu8rwe/Zr5ktQ/oYX0vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774818894; c=relaxed/simple;
	bh=vyTU7U+tVzvztMqLijd+Rl/bvjJeM3a/yFXeww06Gmo=;
	h=To:Subject:From:Message-Id:Date; b=iwGrRlU1EZGUK82+t/93FreAhFLQveS6V+30GUpQcyFrtEcr/RpOcJN0ifoEsxfHnGQBhfzGy/cQdK8Ur9BsYkmC6YrIn4De0UMsUr3Y6fA0UEMxNA/KxlX4xq6XrrBHhdeZVTIejjGHWZjZoOgvUj+OMZ5Yr1Zt8M9iI19pnvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ut1H+Sg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ut1H+Sg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C0C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774818893;
	bh=vyTU7U+tVzvztMqLijd+Rl/bvjJeM3a/yFXeww06Gmo=;
	h=To:Subject:From:Date:From;
	b=ut1H+Sg7+aHUNmJ6BWprKzCWzTMrVSJ+WGo4cYTxJ/ATzlmKd9Sd6g0nbCIGpGO1h
	 85KMB8BiXnrPn8OE1U5x1Xdoxq1jBBhBvItGho/OfaIZiO6baX+r5G4EAFRV8X1fF5
	 e272kM45kR3K/iqwI1KRl5yrh2H3F/GyNFRPSL8B1s3+1m4Yrk8ifwB03UwQtaoJKf
	 QW/ifYTRUHpQ6WjWbn76e6aFAGnrP+VWDICdxFATp3L8PUF8N7ky+Is89p0Dc+G5Lw
	 K2PrY7zd0+aj+YZyIOuG8Zdmeu77jOlj6gDAyfNTSfT4SqGXk8HNK4TQH/3XgN3LL7
	 k1Y/ktGedNTYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055BFC97EE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481889358.16613.1804177367634199447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6b581f0d2072518a652f9050f407e18e71c60175d317b62613d6d2e5bb5f9d
Date: Sun, 29 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774818893
