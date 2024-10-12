Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200071E495
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728748554; cv=none; b=JfHNmwPaPx5NfE/kdI6fzd2xw/4DBzA24Pz0CBCNrop5jWeSzbGFnx7LJJDGt1w2mH9TfQBxrwDWzWpKL9CdhyGLGGS+yMBSRAR4sxnc2OXvZZwvhlT1R3iVlGwr7LrDuCGdVHT7t0zWugtOaXsCy+lzVlliVEWBJtzXDjX3OXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728748554; c=relaxed/simple;
	bh=MCKTmH/eOkxG6uIU1qXgFQ8y9xTLo6xJFLjF4Nrbyv0=;
	h=To:Subject:From:Message-Id:Date; b=jCohrLIDQPFX/WM74GHdAoRoq1512+NS4T2cIlXxyNYRZXv3ujQeRy3GfGv5AwFMW7VD/sV4c6Tm+t/mayV1KPkgB8mXe0MGcnsFi3SXk3/jFDgSGokFdUM88mm8ch5PGKxtag7tUilrTsnsj/TYd3b3gP7/ZOY+PXt4W0e6bow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUZCV4N0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUZCV4N0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD21C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728748553;
	bh=MCKTmH/eOkxG6uIU1qXgFQ8y9xTLo6xJFLjF4Nrbyv0=;
	h=To:Subject:From:Date:From;
	b=PUZCV4N0FJdR7qN2WqTD5r1mnpTyRhv2rQZiNn7FgA5GrSvwhmmRjBezm+2MTTkEN
	 NeavgQlxa3yu9OZ5Myjez/MK9GPAxNWD0JqNARmsi5Egffwqlpfcle+424173J4QDy
	 Dn5vRIr4gbnsNjEGgRBhQMkxiwZwjMUmIknr2N1EL/UKk7jW8u8LXeHSGfa8WqpAh7
	 WCavsBUvDVlk4gj6mCO86NhEmWCZW83rQMrCdGLBkzBxKT02QbhU/dvzDt8rDrWgBO
	 0oqjeSCDn1u6/4E9Twa+KfUAJ7AJseaABQHB6SYPUuPTRHMXgRB68EvkWS1FqR5hSC
	 +CFe4vO9d1pBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6013CF256C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874855367.4324.2724781113112825529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466a1ee390bbac100819bbd14dacbf33b6c2c1cda2695092cbc1b8b5d5f31842
Date: Sat, 12 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728748553
