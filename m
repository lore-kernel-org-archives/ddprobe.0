Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8271465BD
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728938754; cv=none; b=DwXFlIv/fAu27zGjElR8QFDH5MB0L2qDRhak7TPbObI04YExkinvGkfKzb9VGSD1N0p+V3lgUKY4eSYs4WDWAcZh+etgjGcHB+iB9gaD8Y9hxAYMZ5/W+iEPMGaUTarPDNeXGrfYw1ajBbD2w6gbxSDiLjctjLy1SJRflwHBehs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728938754; c=relaxed/simple;
	bh=4otxV4lHvLpUBKhs6NP11H6FImh7PIhsRjMRM7ZzsFQ=;
	h=To:Subject:From:Message-Id:Date; b=XGX94haErX2gLefwcgy5WIe1Uzzo0mHEjBL0N+Vqr2cphsPZqfLUaAgylZsICTDvGT/8DY/1fWRP2Te7VnR66MkUmpwRN8jET6Utr6g1TiURcXzSM+znIech4Af/p1BepEt9DE9OvBYwYedKmiJ7vRQ9+8GZemutusI08YqpOeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3QlDNxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3QlDNxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86C0C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728938753;
	bh=4otxV4lHvLpUBKhs6NP11H6FImh7PIhsRjMRM7ZzsFQ=;
	h=To:Subject:From:Date:From;
	b=m3QlDNxYX1pUvSWNWXL2FHFyntEwCi9N5WEiEC9KX5RTqHBOT2v3XJN76O5GHjyjG
	 oQrNyhtsXQPRb3zcLIKEMbKHOhI0mQkxTCaqVVTXuTIoMHn2bWD3Fp1Pf5EHc2goyo
	 BRWREb9f6KPWTMy/N9DCbu61NyCsIOm/U+ThinuQx0ILh+e35xa3Ijg7sYo4B/jtab
	 pYMqGa2j4dvYkb10QsYFBqUohwZgMZa0+39Y6qmPgrEGC0UQDRrpe2LCFexqhgug99
	 JI76ou9Fz3naH8BrC0dIaIXRX8nCpWFUECGfy2x1bazOaE/4oY0tCCOjANAHj0foLF
	 4dtQxEgpFWeNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A79D18149
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893875362.12889.16477235320044516488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1fd2a985258b2da4c0353ad90fecc21672665aa7c993501eca2117728861c0
Date: Mon, 14 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728938753
