Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF2930566F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783291714; cv=none; b=ONwB1hhocNokYwxobkc+/wsW5K4mycF2HsRPCRJ+MBVyOL+uxyac8umclJImbK6KsHENaxVznpr2aiYK7tNSvOR7z/YNhMANU8jkN+HoHBTOLDXy3ZkSTLasEaIXo8H4gSjKyu+vRz9LkMeCfMVHFh7CuvHQjuU0xVbFnCVBny8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783291714; c=relaxed/simple;
	bh=iTerHBbOcbiFSoQ724QMFkTzsXKBA+kPENNHWh1CR8g=;
	h=To:Subject:From:Message-Id:Date; b=rMhiUA7XqySJCrV6caDWByj1he68iW5D0rSklt6eZA8p5yOiSJol0fBE0+CCYG9+TPOloZi2QdlAS5idWXoiILg6ArWzitRG9BuTbiVzvhFv5Kvuqzs64FublBirqYkGx74fhWz2+hvxFt8MPYGkxWlWO9phhj01mTlP3PPnHc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMHVF1Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMHVF1Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6EDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783291713;
	bh=iTerHBbOcbiFSoQ724QMFkTzsXKBA+kPENNHWh1CR8g=;
	h=To:Subject:From:Date:From;
	b=aMHVF1NxYlcHsKnPTeezlw0TThykpaFlN3WH91fWS20AURBQ7CZaNZXGU11LvO+Gy
	 lChAW6XDEQv4d0a1NGJg1McxqzUlEoW+1vEzdr9EIAThNARVRlxGwO/ZAArV1t4B6J
	 x6WFm09qYfGfA2yv/Hodp2hEbtLk072ZuPE0ECy8XUqAu9+uMRwTdDXyIxyJHGkNk9
	 XW0/wYLMQNfgLQG1qC4KYX5bvv4UFQ8LU5PvLul/FuxgVOeARYSX4G2iUfD+sN3s7s
	 icdWSGkQYhluwXn7y64ZXiC+hibXXqdnNiy/50s0R6NakxqdOi9YBd9iXYT9fQSu04
	 RGkJoZKwxWKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB2DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329171370.24238.16966484511598826317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e31a8eedbb3ac51a159da6b18edd4123b575cedcec17e6bd2431bc93d982ce6
Date: Sun, 05 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783291713
