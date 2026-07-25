Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA72B9A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784964634; cv=none; b=JnDJPznV700MJ5SNDtcvVZ4MBZ7cEq1l8Jlt8Sj/eKVJ2Orl16G4uDdH2BUSaY8ApM7fcP2C7AdVO1me9NOPRSxCAxd6p4g63O69HUgJbiFTq9gBphtSnp3i0MNQRts+8axXHWHQ+mOCUfD0EjHEyCW6ZPNaHRQgBjKj8MLaVY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784964634; c=relaxed/simple;
	bh=i3j+6SFrQ/bIKQuE/yTW98y7Bh985jI5hWueq6Q9LAg=;
	h=To:Subject:From:Message-Id:Date; b=IVk9DToAwqH70Fqwik5MSxDjZGXLlrmTSe0S+JWwlgVXJAkA+5KzhdPrmmGckD71AHPtY2cD+ISChsBOpZOgozWEDk/YbF8dKE0NjxLy4MqZG/gjxxJsrJYulBtalFbpB1osvGwIx+ZkErUY2AlI4ky+x+aSW3M1y175d5sDcFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWiS9KfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWiS9KfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB686C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784964633;
	bh=i3j+6SFrQ/bIKQuE/yTW98y7Bh985jI5hWueq6Q9LAg=;
	h=To:Subject:From:Date:From;
	b=iWiS9KfUPrwPpr5PucfV+z+khvZGxUU5BGwc7mqQTsCIh6/+vjE/zkTv6HDlG18S4
	 bVpYxPpbk7J9nvVVmrP8Th3zSlU++oAcXu4Tt5qc/18K0DjxwW0lbb2ka92s/Q9iHO
	 VWdn3rLSkp+T0SE5yQo6g1d0D6a0d5xzdkyvFX1opJ53s/UiHjRTfN2dGHt4juL3Tv
	 wGHwch3tKnuohF2Wpv+yuLzUfYwgw1e19NsP4s2sU8OCmfHMVHHzI7mtyW+Qr1m5rn
	 PNxx0BL/+Z9hBTOEV7v6ezCvnbQ+HkB6zmTFz6zYzAx1uy2elsds7NSa93oCIt69w6
	 4vMoJVkIexAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B77C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496463368.10452.4391336808139841770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa407062e56c65b4fe69dd168fb93080d168ac04117936b7df982c8105e5094
Date: Sat, 25 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784964633
