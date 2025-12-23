Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21544328600
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766484234; cv=none; b=TjPDvJTzkCByyjza8jXQAHzZnH1ZenMGSpYSMzMX1/s1Br2pqld69JeA3HpNozgXh8QnxaZSZlmhHrl/MWiFUsFWI/RYmZXThuX3mqADgnunxz9xraMdFc1TvAUy9BQHq6HeXXsIoy6i7zd5YAuJJAE4VJZq8LXNUv4rAIfOhFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766484234; c=relaxed/simple;
	bh=BBdyFG9gPJNQ+VpkyK+tDxa6nfkiJx3rHK/Efx/3c/Q=;
	h=To:Subject:From:Message-Id:Date; b=U2my+0ZF1osn99z5ps2OHUV9myuOFJNXGlen9gxSFckQwHPTc4lMsIJDx2AHWj/aQD6ZRUruKtKdUBpLGPrk8Jf8sfjFuUeaxQynkLVt+3p+bl4gdFjvBvEu5lm/i95IU9NeHvaLsY0lSito0CbOdmwBDiNk/RCitChxHgq8XIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWkt9nJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWkt9nJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1953C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766484233;
	bh=BBdyFG9gPJNQ+VpkyK+tDxa6nfkiJx3rHK/Efx/3c/Q=;
	h=To:Subject:From:Date:From;
	b=cWkt9nJlEUWC62PAfBMh2SJ+SkDrAtUiSK59lnE+FusWzCbEtP/hHE0NSQQgLDrtd
	 z35uM91BgIP2zXxgIjZOMNYWiFIDhdj+Z022BucgJiDyI1T9ci3GiXmCykmtTYGDy4
	 LKtJM8TGyWgeDHRuWMTtbtDHGefALPrSGd9IHcfXmskrNLA7HqZG5W6jtNOrBsdJWj
	 8YnjSq9Af2/sXZMI9b1jP/+m+oOsQhZVgN372rklTFg7kIsD3t2fwmXOySBE8g+zXY
	 oKTBpFw9o0Xd+xjFKMk+5dlcAe55VpAj+9HNo2h++dHg9D762EHIwN4UuHQq07Uu+N
	 DahexkqRve6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6BE6F07C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648423358.31043.11865055782719904823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfacf9e599dcddb5b6f0d0db783bae95bd8b63030f16cb8a3ffc0cdabd5f5cc6
Date: Tue, 23 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766484233
