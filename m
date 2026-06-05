Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4128C404BCE
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780686274; cv=none; b=S0unv+HtFMfzkb5nMUJnLMORY4eQUyP1jy5exQyFFFNbX91lQ9oNrItvOum1YvnfUIHdNEEzD3+BEI9IUpo4eZGOCwOMDwAz8HUY3k+YO3sA1EwGABYSq3ZRVT/7GZ44ET0pCYDWSIfy4PyX7gV91dyVnnqRK7fi2H5yELjTiUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780686274; c=relaxed/simple;
	bh=3uFZ77Dmt3d/Dm5Pi935pMrHNb/Ylz5PHCi/oKHCdIs=;
	h=To:Subject:From:Message-Id:Date; b=DiRY2hjzzuRpkeIVWh30T/fyUgBpubT2Qent8kqteXIN7nRiznEmgrwacsY1pJ3np9znmmqtBcDniALWwQB7Jya5H2kOLvbqcIS5QK4mmCjqrgLMXXQk/d4px6R+nszhekpg31fkHzIZFyFEYeKL6T4by2aIcEk9CeYYvxLzPE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOPQFo9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOPQFo9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A30C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780686273;
	bh=3uFZ77Dmt3d/Dm5Pi935pMrHNb/Ylz5PHCi/oKHCdIs=;
	h=To:Subject:From:Date:From;
	b=QOPQFo9m2DhvfxktydCy6I62rKUqNqeNEyZX7dacBm4Ov1hgzZBRyu/DrsFBbnJ0X
	 GaklxsK/G/duEofs3yh/mJdNsP0R2yJ4rlAreWrlWiEW/LFyKEDigNFXovYjb3ZpTY
	 UUcBB9PqPic/yzghfpdMvpRZphlS70we3GvTaZzCXpCjF5k+so1Mv4WsnMM/bjFbkO
	 jKP4/7AB6Xfe63QKakMk+afngpI8uqK2hn5hsC8ffZIolUvXx1Pr115FxoOuZ5DZJu
	 73foTJb9jVZGXZzU/BugODzsRQtSRE2IVrxPQE7qxmRfPdEF8Z5syYb1klgVH8pYKy
	 COjPMnN3ScsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE88ACD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068627370.22148.15135623657709068798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a54ad3ca546d491aa72d3623945c9eef6b6aa4972393c8cbaf26774daaffe6
Date: Fri, 05 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780686273
