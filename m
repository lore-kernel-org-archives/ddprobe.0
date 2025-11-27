Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA5B2D8DB5
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764266574; cv=none; b=m0zxccdUsAfqbX7yoJv/r4FL38/f9XvqwXcu23aJh6VuwPqemk7E3lcKKG5jHgMnrg4oEcC1eb3qV+j3epBa/TGK/2bo/nztg2DZuMqcVmD8LL1BjUTOK4QjE0kvyWOX4Hn+15WZmQoKLgY5g68QKePgF1RNR6NFDYZr1XWg82k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764266574; c=relaxed/simple;
	bh=zdJMt4s6dUTNRk5Qat8SICtZ0tsKZkqLY1LkQRTIPXA=;
	h=To:Subject:From:Message-Id:Date; b=ebl59Sv84HW5eHBQcCwhI5nibzJmK5P+52jeAPi9RC/jzfl1MLtadY9Yp1oeRP0rceE3xCYcHKml0gdMfJmLJVNULTCMx/5yrrgsAD1MKnDA9O/fCd4cVC1Duf/YYTb1/4roWYANyF6Fwtt2m1tqAbblBdUzlDtm3G4axVq7EWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsUS5E1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsUS5E1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764266573;
	bh=zdJMt4s6dUTNRk5Qat8SICtZ0tsKZkqLY1LkQRTIPXA=;
	h=To:Subject:From:Date:From;
	b=AsUS5E1wyZD4yWzWHWd9CcfRfd/kjUMqcN2dE9u0TwDbXytWc6w7lpjEaJyvlytTl
	 c8bKnU9XjA1OiUUUSjAaDxcb9WzxSfXl4Dk580BB4SOowlC5zy13VfG8UB5Nv7PInU
	 6vltT9AxNRfcTqzeRqphW565MaiJQqimnvC9pp3a02+pkV2wm8ffUruS6bYh9D2N+7
	 nr5npwQfJhN18+PosNrlueANvnLg9q72RhTg3Ceba9k/52KyyD/qjPmNfDleyIG+Ci
	 E9WbmjAsCE02Vb7EJ3A5CTkNLZlfXZzHqXeiPrE1i79EkA7Hd8HIO+/p51Q6bwDahs
	 Dn+llk6jkS92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343CD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426657359.6562.1111480880210499381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273827370313a07e4af74c1df5e987fff8a8837e0258c8b8bbc3ddd2e946de37
Date: Thu, 27 Nov 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764266573
