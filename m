Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FC12D77EA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768625034; cv=none; b=DKVn5dbc9Puqt/BFqtdU/bYgO5g7++XBqQTkgcqcVloXGzkpvylcLqyByuAmvl0vhVYSgZI8pkUiKG8dsX0lWsRqGnzFbmk0vEygYUN1jcoX+bRJFkb/uzxG4cQFgN4KF8pklHCBf5qlDttrrjr9xN60XsbuAsB626Z5TJlfYCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768625034; c=relaxed/simple;
	bh=8PofVTuZlw+rPIhbbVeL4+t++hXJIBGAz2wbzkWTQL4=;
	h=To:Subject:From:Message-Id:Date; b=MekhsVd4lMhML8qydCVnFKMX16rdzglphy0rRY1E3J89TAQnZeJUphNTcyS4kRiWX0NqrltNz8xRq1NjCGM2zNMvP3DikHbCE8cgEF0auK/nUUC0N7AuS8L4Q1xP5F28gMKUEvTmbztRDDPVwwjV+nryrSfNCVSaELWiFmGxd28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW82ZRWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW82ZRWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3328C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768625033;
	bh=8PofVTuZlw+rPIhbbVeL4+t++hXJIBGAz2wbzkWTQL4=;
	h=To:Subject:From:Date:From;
	b=uW82ZRWvLqY+6jkL9ZX6U4pu0yp5b4e2tzmZq9sJPOBshxgroHHtcDVzznLi/2kCW
	 FIouLkHqVrWSNglIqWNr2Qa1jsxhVeSDXeoia3EsbPaAfVUgamMYl6PGznKL+SNwJz
	 2JafKf1YLh1jrm4jMbcluXF/4anCHS0QhF8kyTT1fYXlVkL+aCxTCviQkbIM3wZt5i
	 WXl6MOPD7rr3VZGfwtFNHFLn7SNY/diPQcQwUbB0ViT6e8DZFKm71vQ53Y/vF+o4ge
	 kPSa4XynN5RYhRS80CWb9fWhcuZj2hbhsIlfpnLj1bjgUXU+cLkVpz5pHMgkcF3f13
	 W+KRS2CurvQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90403C982C5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862503358.10391.10907650569682995587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fb8a45e6bc467642d575305e9a454ef11d110b757fe4419e502d8bdb29d1ab
Date: Sat, 17 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768625033
