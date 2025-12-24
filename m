Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A37254849
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766557434; cv=none; b=aKLGz6NQ8LyEeBNoYDES3NNNi7IkDkFiiYYW5it5offS4bhVaqr+gfBHfSOi6t+L2ClzSIPPtPvm7JF3GaiAlF1Qt2q/IEEVvSjdEiIAZbLSGGr3l9h8Mb5Z1khR89bfPhoUUDodCL0s2xwn231LMRzFjFn22rTj78jLwRhU+IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766557434; c=relaxed/simple;
	bh=DQD5gnII2dlNZJ+Zpb3gn9tAaVePmEwC/qSm34PS/uk=;
	h=To:Subject:From:Message-Id:Date; b=WSJtQB6Vi6Bwl6jFf77VqSkyb/QB+dWsz9HiX+Vw37O2Cd6QAKv6sAmJejm/OI3Zf9AqsnDPcmKV0cSYWPijDt/Ah09/oKX/eRfn14n088WDyTWAFcGoqmhfD12/hUHMTdc9mLOO8ZS2UA8i8HArHoFaYC6wqw2ih1TM7CN7xbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1vQzs35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1vQzs35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766557433;
	bh=DQD5gnII2dlNZJ+Zpb3gn9tAaVePmEwC/qSm34PS/uk=;
	h=To:Subject:From:Date:From;
	b=P1vQzs35VZzu3WyKYrd/pptmOfY/8qYknKtDoaKalU4vemYfnv6Z3SJE5GJvXNElp
	 1ZoIDhiONWVO1q+EP/V9H1uuQKHqyMFKqk6SAbfByvFDiuRaf6We1SC368s3VXXC24
	 oBvHiUqwkCXNii62MWAhTQt5kuY0FBD7O3r3hLUpGMXbxsF79aJMU/QrJeTla/iKlt
	 V9kgMxdS/IpnGcQScDmYrRyPHEoVc+w+ACs9zniXpF4Tyt78kJtBFBFspkEWKgffwK
	 Lnhn9epO99FO6nc9cc1xxT+2wBUuLGShT9i6nBmOUXqlb+ROfSRrpvEhiNKDAcst+y
	 yo+0GVoiWQPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94428E7491C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655743357.25802.10966553861456025439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7945ac6821f9d55b7e0cf1369c9709fc433d5cae4c931a7c926802576b422554
Date: Wed, 24 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766557433
