Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8C12E403
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752067794; cv=none; b=WJRBKvryZzdbGNLLH9JDHl7AZeKqSuyqgHBicVHw2Xsi5ricRp/D+Wp0rWDc/rC8M7zLO4J3k+h+iDYeqOwIX78byzdsdKgPe+M42L5EqCrWSr5SqpmTE/M0UIR2iwMi+73PwbNouyx+i010eXq2owfjn6HG1mPn2ioMRj4h1zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752067794; c=relaxed/simple;
	bh=tT71YYWDakA7VjrRqxV0S2biaptbo1dOjsvGjZAy5+o=;
	h=To:Subject:From:Message-Id:Date; b=uTdWp4KqH1LW1p8nPJmZeMGfoEVb6FtCzgpM+LUnTb0Q6SLHf1bt5QSniU9olV2fAz7P9folk9Nh4GArd+/fdvcb2+s16yl3r9Z0lOt3XkMkOiVbqJiHVM8YpJMjDMJSVXy23FQ4wF5ip8tPweHPySSSiBb95fe93A2xXw+68z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDvh5EgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDvh5EgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D6C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752067793;
	bh=tT71YYWDakA7VjrRqxV0S2biaptbo1dOjsvGjZAy5+o=;
	h=To:Subject:From:Date:From;
	b=dDvh5EgRWunhEnkxV6CM3521kXr+FSeykslrueq+mHxsH9QslkDvWVG2ylgKXnAR/
	 uaqrRj1EeI0b1Frwmvs61pJShaLVxrb5vwm09N0yTtLJVonK289oGGhiZeG9p2+ZsR
	 +ay1WlLYVtVv+k6vX+OXA2chsyOxvQ/8HE6YJY9UuXhSgur3dgba7DNxj5iV5FLMSW
	 SgjHbVN5DjiKRUGDPnsAiSWcYC8eWznGfn8/1wrmrU8mz+/qpJTIlXybraReOhQeAw
	 WVRkFr+KmwCBVoA4MVNoDUWPHQ9lblGMrqikp+oUDBnY3QTCTNwOsGXVTh2esFicY5
	 dp9J9A+jUENDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F161C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206779357.19709.4580612098442665173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a2ca539b01615cbcdbedb48f6fede9c179571ff95e9081e774258ff8a6fd2f
Date: Wed, 09 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752067793
