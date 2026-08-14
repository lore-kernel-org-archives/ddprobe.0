Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1167D1E98E3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786723835; cv=none; b=oLsIS8YBCs1UriBqetWdfKwn2e+EXKcQq9brY06OdQGMURqqSV2StJVNaY2rR6LA7InRx39SuMXcK9OcreAGzwehq+rN8Gy8srSvWpcUouEAfNLCwszK2QRmuje6610FFx3YzO3RMessIDwmXCR7zBD3q3C5t/a5D21mlyligPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786723835; c=relaxed/simple;
	bh=/j89JY8B0mAdPp3OtxvLe046jikGbhbS72WInZbJL7w=;
	h=To:Subject:From:Message-Id:Date; b=WfSn6odIXuCOwahRCaKmqB/n0X5732yMoW+Ik5SBJdRj7V24MfMKE8GGlNXraVxfNPjzYnNuk1/Pm4VWsiS1+0ntGpIfYlI+itzANEzRtvybExi+B/FBIm3c4cLoxtG0ZHjzAhgGYCrdzU+qb8hP3eE+B+czoerTVedJWs04d5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGOiD+bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGOiD+bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F38C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786723833;
	bh=/j89JY8B0mAdPp3OtxvLe046jikGbhbS72WInZbJL7w=;
	h=To:Subject:From:Date:From;
	b=jGOiD+bhzPlg+yMH/6eEX+SmN4pM8XuW+Wd1tBkx9b3hS2y/RgOQ+3Ibfa9Azlwz9
	 +6bxYUdjFqz8Dm161HvHgVqvAa3mfN4Q9tCVbQZk280Ok9/Rhuxha1HUPuXcwk4NdD
	 DTKRnRW12kvKXQEFTgmufOkYDDi5EWE7od+De0Ht9pGXAkrEnnneMnuQjnrO/x8n0X
	 CuNfmH6FMsDmL1+XJuZxGSnPMhbos0O6OJKwAJHZNJHJNzB9E6zZMqKgH8VAxZHLW0
	 byiwEoV4clXn3HjBNUmstrtej1K+M8hVzfLmORwOdGIG1aLA2UAUSlQsBAc2LkGbbO
	 +IcHkLBs2eY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D0EC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672383368.31105.17872457608557307380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e88eb3a8102b4f3026c3a9c115208964ffed9928181c55d77438d3d1dc6902a
Date: Fri, 14 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786723833
