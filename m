Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C124C6D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736081154; cv=none; b=FDNyVZYbRDmzM8K40+wW0rIK8jU4Lyv8CbExKXsNlwFUf8rBWq2ZRos3vkjru9XJqO5wC2h2Jc/SLTF942pdYNiOIk/3CqnvzhQf2e037acLWBVq4WzWwW1f8UPr7y97ZKGMgvK5eJaCBQr1lvXR0D5FjXARgOuhYHI2JYOkyl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736081154; c=relaxed/simple;
	bh=J3OsGWaeuLY5qLmVBwKh1EfG6dHx+ztxH1Gsq2Yu4QA=;
	h=To:Subject:From:Message-Id:Date; b=bEWp1SqHGYAHaVpxZcWvl3Mnku+h1+yAaxlgq4Q2P3ict53Jk1LSzXYMXA1ZzdOhJSCwTwgbFTuWLr8b7FItOJq/KnqmBQ28P+C/j9fiiqWcJgMuQbGUs66sSDmJOX8Mp0a+EBF9+qAyPb5Zt7pwqaUnPPz59sO7tDEAAZsgljA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caCGknYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caCGknYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F7DC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736081153;
	bh=J3OsGWaeuLY5qLmVBwKh1EfG6dHx+ztxH1Gsq2Yu4QA=;
	h=To:Subject:From:Date:From;
	b=caCGknYown1PwtIp/XnhWUam/hq+mGqm+XDUnFovwgfnk+FDl6Z1O6YmrxW5GtXPK
	 wFZIZ94LPoqRS7dMbL3YSdPe8ri/SFGcb/n6hBPlEeOyvE7STTTukpNoc2ies7P19i
	 fBcgZK1JeAxp5QupXvGcBjHSuucj2LrA4dlpZr+XF7cGhhVE8V0/FOh1IiZNdbV6Mu
	 SjR1FbWzrXyhlaYP7rd3vhEsoiELagZDoKrM5iXMxScXNCrs45fM0cgNBz6Vivj3FU
	 tpy+SidQDJGpt4pQIPCPXK9GXEVY4DQm/U4GB3LADiqisZPKQnHBj96K72gqARCmQK
	 V5Ffg1hAItfVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFECE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608115364.26985.15160241585234724260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6979243c81377d7e40a0fcbb9bc4cf68c969d7a130a5cf1cf30ec838a8e6c122
Date: Sun, 05 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736081153
