Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127CB26CE32
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771379694; cv=none; b=hoM2T+B0y46z1cRCWeDvbUllhhUNVYGjr7YdfZxXObmWPGawiQFXx4DX/fsZiwml7TEzyyVA7bphAFeLuPVaNJmluEltOgIwff9Sz5Mgy5o6+yKSWqI+R1FKALtIMXvsn31ueQnawVkRZQBD/BGzrrs4ufPNcRzO2lcaMqEsFA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771379694; c=relaxed/simple;
	bh=Qoa06LZ8thhnTeq8JsFH6QRFX19j5G72h9QZKQyImoA=;
	h=To:Subject:From:Message-Id:Date; b=kLWVQKb3zZybnE5B8GJxRQ4UKIw9E/LnclO9mIPZkzDBRQ2DUHFZJswQvYMuw5kGgze6SStjk6UsTBPXuJSrla2k8KJbWKnCv88YSX6HWHax1CE/np0XcmNtbdwTpI92ooNwg8YnlIPk2PcrN1fLR6taaPCPVuY8F3C7aKH9YNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+CUxaxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+CUxaxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771379693;
	bh=Qoa06LZ8thhnTeq8JsFH6QRFX19j5G72h9QZKQyImoA=;
	h=To:Subject:From:Date:From;
	b=T+CUxaxvnl0cwMzSGwx/0y3+K+E+6K/CWk/U6sLdZi/zd/JbGetQ3N66g3KqdN+Vb
	 NEKwhOsvcNVHerGaIOdDTHFl/6eMRA+gaL5APR85rDQ2QxRWcgeo6WRambAWUENcSr
	 iCKFPZxjgpAMw42dMPHka+4w/+AOaahubIe7YrLfuA8F46jl/m6iCW/cerGgePouuD
	 Cb578ek8pwrAWtwAhLRY3COs6i+ZWumPZZeNDzyGdW+ZW0LwMwzcgsBBq6tB5QMt62
	 z1XWmR1qg/gXp2sAywbFgNvIMyWA1K4UgwRF0wrGbKeEIYe9e7OLSbzIIRywQ54nw6
	 dqv5i676hUP+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F5E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137969359.3211.4846386354749282331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55f4cc23dc1fbb27662c7cff4cae842b5eb431c6a8af8df3f6606b08219f5df
Date: Wed, 18 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771379693
