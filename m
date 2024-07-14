Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A042BD18
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720981223; cv=none; b=X471VJ/cJad2ATdiNoU+kVHE5stAE7NkVYDx8ptt6Tdq02gm4A+/R/1cU4fCYq+zEumbJFW/JJnBGUac7j+9DaujRi/0HDhPR+GPwMSbbEfp0VMgWs01Z8MF6B9DMKWkrbeirt7K1s/Ydvz60ozuZHyTrU8hB0uWB3n9K+hdBvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720981223; c=relaxed/simple;
	bh=1Iqa8EJ7/xdYeXZeZOqfahaCymKjJA/wweVzz9g5+pI=;
	h=To:Subject:From:Message-Id:Date; b=JPruPwsCWdXmRBBvSJt86gyR0gXAXJPOOiJz6nU6cg5rf2aOySLYuDGjylZmIllw0vN1Dtj6B+sCpQdj3RpGQx6o242iLJ8KWmVFTtpRtcudmXAJsVyzqq1TzCGF/0h2mjAD5XjaTFGgQejR6JhSVGU/byKYlrTVORWqAIXnMS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzV5yBxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzV5yBxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7450C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720981222;
	bh=1Iqa8EJ7/xdYeXZeZOqfahaCymKjJA/wweVzz9g5+pI=;
	h=To:Subject:From:Date:From;
	b=gzV5yBxnpuszS4ybCTsC7YiLEDbsQa5DGr9lgpbCxIPOW68R6iCMdLvSokXT+sA4i
	 8O3JEAMg86forTQfxDMeZMg/91U6U+A27Aw5b+Pjy6xbD3ewV2V3WV3uw1ZNoSI7W/
	 k7NbfyRsgAlLONQiF6WltrY4KA8/CQBIVVD1J2DCgDht/P5Ztse1Qr8Du2OBQT18RI
	 WaZ4xqMohKwhXM7UIGf/t11/YPMHSG6dqzP4MZWTZb+KWhQ7R2f3A1ngZdG5RUHy1l
	 9KqfQqcw2/yynA81C9hkDVJQxsEaVEAw0zOyd7H5F6kqZ9skGdwRKRkMshM0HCEnXM
	 S4cwKLfiQgSMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC895C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 18:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098122279.17539.16476612089470537771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e7fd861aa5ee78ab92b5d3dca0f7ec48aabae6d87a9fb9e9c8706ca04b0409
Date: Sun, 14 Jul 2024 18:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720981222
