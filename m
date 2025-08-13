Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBF9249E5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755049194; cv=none; b=c5QPQ1ISVrqn10fYX01/FALDifCW/XH2iUji1H9+bMyrMdQUga5Qkv1LNa0+K+EDPMe5c7rk918LHGA7f8YkAI3W1AeTjMocLV9iEidk7wjhE+AnKB83S6A4eL1lqMvgV6mfxJ853gd7HwBhXxnqPONBHlpVpTiRj8Zrsql3uXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755049194; c=relaxed/simple;
	bh=T6PhZoDTbiQMzvB/Jp8FkmPiHPa+boHsWBJBDCkbU3I=;
	h=To:Subject:From:Message-Id:Date; b=dB9XjFgqwP0hb3929oQqtIakJSRlq7mmI2RA6LKavKZuRalLGMl0CPVEIIBtOuaS7v8cp9TZGX6gVzNSJNaBUcTaejTGSTfoJVFTsztLrLr+zt020iNjrfRYyLnVO8b2xa9Gki01QD0vxOgpomsBBxlhoLY0tigt4TXamZUUR64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcfprHJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcfprHJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6958C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755049193;
	bh=T6PhZoDTbiQMzvB/Jp8FkmPiHPa+boHsWBJBDCkbU3I=;
	h=To:Subject:From:Date:From;
	b=kcfprHJM6baoW1jXyYFFIS6nt7gdwROOU7gO83iTRZZOZb6JMwD5KqLRGw2zi5flq
	 n2UoujW/yo7EZipXzZlDggp2xmsaWN5EtAkI400KiS8fJTLz1ujweUVOfLE0HacWsq
	 a1FQqUKjA0Y2hCUGA0fwSK6d3Hx1aZqZIVSjVL2z4zkAu0bvIodW2SJZdSSLtxCzta
	 3gvi+OYpRvsHiuee1qaOja81NCLKq9HumjrG17/qLBMrqQV+1t1uJW1FxCY8mWlpRG
	 1IRUBB/RnCno9AX0BZvEzLM9rFh7GbzA2FoYCNZ8vCIZUhQEIFcIOX9WvbRjwZUZX8
	 9+wk/Y28AeYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470BCA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504919357.10887.3534949217974088619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbb5d15a40ef5a203074964e821b03935f4b42de2a34b590017ea0b5c9a1a76
Date: Wed, 13 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755049193
