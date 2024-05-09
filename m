Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD12770E0
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715294543; cv=none; b=qHIj+FA9UQoCN8lEz0Lh1SBd3mT9eAaFDTzrj+DwfLJKwe9dq3aERVmXQ3rmlvH//vxZF3h6OYoAfakbq08XhQpO3L4sarpN/n4UXTHElGrAdR2jVc253Rs9wmSR6Oz5FQNDBkxCFGRCpu9i9Z+/G8CHnsN1+cK7uDmWWgJNe1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715294543; c=relaxed/simple;
	bh=QTX2wLkrzuMemZJ0U4ppc8WbJUN3k47rQMn1io/gfgc=;
	h=To:Subject:From:Message-Id:Date; b=r1MBqV7D975bwV+VzJolrPXXye2KUe+0/FgWQ7MrDvtJW6rHQgd+ATAzV62mBywkVCkrp40Qj5H6fqed1mgsuXfsMHMF5KCbEnkiGc4j2x8mhDSqCsgb83yiFHNhDy9Y7tDmPkzolqGNzLabqwSCOJKOiW5NECdQ9oVHfS74O0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExuQDq9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExuQDq9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C64C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715294542;
	bh=QTX2wLkrzuMemZJ0U4ppc8WbJUN3k47rQMn1io/gfgc=;
	h=To:Subject:From:Date:From;
	b=ExuQDq9MoZTJguKiY7bgU3Da/joaaYWNCptZAOmNSjy9zB/Jl4nFFndEMC0zVuJJw
	 5xlmex3t1d9kSF/J3TULfzHcp5EQwUHc7RPY4ELSDQdBqRKpY/cnanKcEwR2ipFFKS
	 1FhXk5yQ0RFss2aQTU9OfaeJ1dJdDjatCEjnJxMPeO5+Wm3v9uwdQechNs0Zs2er9Y
	 CXArw69LhhlaatnZgmKNqiJiBiS9EipfYeHKxzk5bgpvIfO+6F9GofgX63QAsMqhGo
	 A9JtGtWhmjGH2Gq9hhJ278J4xyE+cjRw/6gYPRY2BuqlVOJCmacLDK0D1PVYWlYLSS
	 wS3FtnxUvos6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C139BC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529454276.14396.10821043591725684481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7abf71c7db0483121969da5522c6252db8978674eed565e4ad8338e2b0faad8
Date: Thu, 09 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715294542
