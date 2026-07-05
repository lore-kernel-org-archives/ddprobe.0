Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3730D2309AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783232914; cv=none; b=SjUirNgErh5mT6sEZrO1soWtIXb/i0WJ8jBBLVXO4gjlTUlzMwPQjIHSPuGR+6TATEP6DtL6nf6imhf/nsvMwWh/k0DtkBKNMOdhZS5nA1FE5O66ZvuUrhABX2Vnxj2RqLXsgw2UmioSobOWJQMxhFc41A9jJdVQ3K5C+opjIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783232914; c=relaxed/simple;
	bh=PPijAasFAocZNEPrquEFSqR+zHGMW6P/Skz0jJlHUWM=;
	h=To:Subject:From:Message-Id:Date; b=j73/bBPf9lXvdmx72o7K2ONhomSSfP+4S9+LYXmH3AjGCc4STF2lVSRzppfi2ShP2Q6fwm7BzbMlYmgOF9skUL9ibPXBSWlljK+uV7uysyk4oGToSaIX/vEmAtt9c3FyXtzicDNvTEcJVnyHocgyRGNV1U0FGAdPJzy9Zqn6mV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDbwJEuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDbwJEuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8BDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783232913;
	bh=PPijAasFAocZNEPrquEFSqR+zHGMW6P/Skz0jJlHUWM=;
	h=To:Subject:From:Date:From;
	b=SDbwJEuGKQJQAdVWxuA/4/0v5yG7Fv7mAx3sJUttr5QKCiY/aQ1/BG8Yfn293NCfE
	 Dy3sF18tnSoWkwB2unVJSTDlhwzOh6DnKicfdkAnsp/O8zhVeEWp6+uVWer9JATCIx
	 t+m7xmlg/3YuC+/nPH4jDsGIDZTlmqaMyrF5emVLJ5H5N9+IZpGsFnCfEJM5hkHGUA
	 tu2oowrQB75q0QrXFS09rZf4dU/8fArsInz1CTKg4UnkpeN3TBdb+gFaB4rFhFv9wr
	 nu1dvf8J0MybavWdQadw0rPER8fGZBMJx9dEpjWALutuf9DP1cWlSrcf3TVRg5q46W
	 Hz7oBrMv+iHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF8AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323291368.2243.6639482120792722196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82f45d7d82c50189807b3ff9a57b3620395ec6222ba0e09ec669fd04aadf3eb
Date: Sun, 05 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783232913
