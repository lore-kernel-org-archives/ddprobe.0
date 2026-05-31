Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C7535B63C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780271674; cv=none; b=ZWUfxKnt16VdmkyZkwivCA/rlJgke/512tmOTXGIQodsYjy5y5c6no4nE9rjSCQpQxObXxLjEI7xz229EtP7wKTcTHUCgQg4EYpyrM/SVvjsX08Zgla/J22XORYAWWnBOSfxVhvGtn80vUVNcKse75orSoaV085vH+OvqacZBCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780271674; c=relaxed/simple;
	bh=N7LVHaBuLGIwMOcZoKQUZL1rAOem23KlJYnjnawsJX4=;
	h=To:Subject:From:Message-Id:Date; b=HEGG3qhxdqispy7UJ4tLYdpamk3q6wi6C3yPGCPEgKZT61q3pVNzapsjQfdyKamfOBRplNoYCg3y3jL450BszCjWxBc7h4wHGbCQopSY5J/f25Q5qpCeSrwIViPC6dhkKilYCXp8GjU2NP1jECO0ixWx184wES/MkQlgtQprEPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHldOO5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHldOO5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05E4FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780271674;
	bh=N7LVHaBuLGIwMOcZoKQUZL1rAOem23KlJYnjnawsJX4=;
	h=To:Subject:From:Date:From;
	b=ZHldOO5RaZc41N7C2H1SESuvpgSegu66CXB2P8uEKNfCW6IIP0M131vAF8tJwE6ut
	 SWf0igfMXDQJ8v3AwbWeqYZfWR7gyIeGcrtQWSR1vmy2Jssnb7NjV3HYyqcy299Zyd
	 tzuEM3GM8D0kQccA5zEUcJ5BDg/sxtL/GpXpLGo8KNxnUy4DbQqMkQkqPPGpRP9d+i
	 A4w8vmXiSNHfnS8hGE4GZbK/MF1vL94pYZzvv6MkH3CJcuMQFHehEnoNjbDVq2SPrJ
	 SumwcRml/rhyKUexjvyTizPKUjJfk1+xaqqVuzt2/OGSkklCF38VfX8pUFt4eRQbea
	 gWVg1UhbQk92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0187CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027167381.12475.2774633045051767964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac9fed5dc3a5ce2cf5644ad7680fbee6686a78980f0874c48e12fcccd20df72
Date: Sun, 31 May 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780271673
