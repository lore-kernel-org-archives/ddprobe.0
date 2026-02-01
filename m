Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231E91B808
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769949234; cv=none; b=dhtTOS5H4I7Yv8wLY37dBog6i7HPK1TT9AdoSjWDCPgPTWIGkdDyxijqv/U0SX6jtpvvRW8sIgdwFz9m1jiu4DiKdI+TxWMm7aBbvXffp0UNQYNn9vhMzO4tkit5mTkbUFNJuRdbbHgLks2Svov78bPx/DgSQo9e+vbwj5St6ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769949234; c=relaxed/simple;
	bh=qKN1oikQQEt3KEpe2cQPX1s7U792iXlcidTeUT2otQI=;
	h=To:Subject:From:Message-Id:Date; b=DKF0LlnXMP8fywy/RoEaNcu2Q2/aZOkzFvCx1Z/ayiCF7Rx4kXdlqCDa9ufA0nfrPMeu8flnD3b/aHra6NeO1E4MTvCZAvHAc0f9669kiMfnBon0zHthBR0hyplpBpWVWg/2CtaXUHT9B9WzlJGWyUVYGQ/e+8g8Vynxl5k75bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhgd14sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhgd14sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769949233;
	bh=qKN1oikQQEt3KEpe2cQPX1s7U792iXlcidTeUT2otQI=;
	h=To:Subject:From:Date:From;
	b=nhgd14sDYMoMz9sPwUZ6fw7r5RwcBgGaLcgRP9TkRO8FNfCEnkbMFk6fDn36PeIBP
	 Kwve7XdqG77zWSBRjEUK4evR5ovupHMWTDsqKxCW5GO+iGPstQv8xx4mWzEUsEeSpQ
	 WngcitjgMWnf6k4KSu52uEhH/mchIK+v2F9uXH9PnoBtXHEslSYDsXLAwnBKTn3Q3e
	 jXxwbwsphlXrDQQFzBvTxT5l7E72VxzRr8CLM+667F1MgZR5emD38m2L0GPcV3oGmh
	 l1VehCXPGylGrk33DzjPnhbnCu0ORd2t2QB4RfpxpnPC4AvIE8VsdoSlkH9NgsSnxz
	 J9PmrBXd3AAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2DE7C719
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994923358.16992.10110977734474065644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a4d1449c86faf9f1bf5fbea1d60703426aa6d176c0f7f84b994fa89d95fe50
Date: Sun, 01 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769949233
