Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6FE800
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737764154; cv=none; b=d3mh85pheIsvHq92JV5I9yBKBKbyMSb2P9m/kuL53sSuyZRn9vU4Z9ETUmbNvJViivmVcZxbo4+cVOcW/W7YZ2Y1daafnEDO9lUQpPi8sKWc8SWNHem9Yoi425rKyBcapFvcDNKdpUM3ZtolpIyjHog/QAWmBc+YUm3EYxixSLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737764154; c=relaxed/simple;
	bh=7Z9G0YJbdbqDDZf4ixu/ImWfebW2/CEH4JZNT9nY7wQ=;
	h=To:Subject:From:Message-Id:Date; b=VC/9WEzgW1X17PyyOS3Au7RqCTZHO9rLnelB0qBG/+W+bwuyiSwu0lSv+PscVl8ZRBVIT0ReOVAL5be5xnmDNpC4rCwLVD2g1yobMYyVf11MVdLcVSP1lAd0/jf5C4BbPRKn+F78AUrymyqdPiyqwttAsK2Mh00RFI0svOEcXmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzkfpEfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzkfpEfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C78C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737764153;
	bh=7Z9G0YJbdbqDDZf4ixu/ImWfebW2/CEH4JZNT9nY7wQ=;
	h=To:Subject:From:Date:From;
	b=kzkfpEfPxrmpgzbDw4eIsi2jy6cDBUrqTNb8OYBvI2RM+7kP4oOhhnOzclGoJ2W+/
	 Dq0HNdXrjrcVY427jXQrjcQnl0lH1a0O/rjwbgWUIM9ayh8NfqUpdpdyZ4ykbXlVFj
	 GA+z5vtw7/GV5o75Fe9dHO+xeVf/cCJJGh2T+T8j19SBZROu3rhaiopn6BGNItrQXc
	 AK4r4kKROloyRQIrf/8Ig4zGMbXVv9uySGrXTpWR7IucjdTzmzMAtltIMzdhaXHulx
	 DUmtzT/zSKuc6z9dHZXhNsPGg1RAwqIel1Q5BZlMC7k/tv/NHqUzYM13oQI4E400zK
	 uaDfo4mLCAL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95005C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776415359.11453.7421931332690655971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7bcad6c55ed0ff8949c9a94f78e298251386ed19263f735842337c2e56f985
Date: Sat, 25 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737764153
