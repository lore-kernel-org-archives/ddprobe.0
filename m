Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAA51E3DCF
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759423194; cv=none; b=uLk/1rfGymfqea31q1DP7vqLCh7w/t0eEenZKtMMQpKGvnUcji/LRPPG8RELFpZkjCHfKlA44Bdn3yFCg1xbvYbVo/Zcsqb3h7un9BxNEYbqiLaPkdZOAf7sQ6cyeBWUnXf93jpacNkmDpV/a62k+WcwS3+djGghzK4ivQbmi+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759423194; c=relaxed/simple;
	bh=bs3MVHCecEiuFC+hpuJ1xSNHFAK6kVzlGZFj3jj2QNw=;
	h=To:Subject:From:Message-Id:Date; b=XN7+6nws05pnfI/x3+Ri4C3wHFuWBhyeIo1m39Mvjmfvp0DnZSRjiTU64dnmg5djftbtob/7Y4tjmE3E2bSwDgtRO3RMHt0m7wCr8ZIW3eytXhip8Xtua0wvtDctmrXXdFFMCUwk2GeQO5GnxxjX5mfUTckoa0j9oEcidIs7y14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibQybDuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibQybDuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFAC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759423193;
	bh=bs3MVHCecEiuFC+hpuJ1xSNHFAK6kVzlGZFj3jj2QNw=;
	h=To:Subject:From:Date:From;
	b=ibQybDujcIFIzt/gp7aJoZBYSE3NeHEp18Xpl8IK0h0ANMSYHyWRZbYbBTZO1T6gH
	 5f0EMle4FGx+16wdw5HUJV8XmWfFK58aBdpjBTnyog4bcGM9oAESm1TSRVLjCSYd0G
	 QlVSA2+88lmqTpa0CRgLRPyb+f2oB5Zp+HPgDuqmGyxdKCzZycRCoDiaZdaGZhCqip
	 tk9D2JFkaJHNyZjhv2JnHQ+pEyoDmoZXeCBS0oKwDjPQgWlPt1Vx5V841bt9QdQ7IJ
	 tDhoLMZ9qEYllgdwHn26xYwNglBJTya4sbGmh6iBibcNS/k/RFRJZG2NRcl98C3oRF
	 1Iht5NyQh+Hkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB94CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942319358.21020.12412666596628388186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e55a907b9a1f3e455a5f14c5edbf56e32d0108808b78f7d0ae9c4020301b58
Date: Thu, 02 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759423193
