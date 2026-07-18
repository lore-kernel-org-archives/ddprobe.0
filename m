Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3F13254BD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784380114; cv=none; b=tQ2MlB/1V+Uo/gX/tmqG6S19yvVO1x+PpuOSC1XQqrFiYu2DoTZaX+FWePFQgYFV786COK1Rauo8MiVyHhLPkmb6OcJo25vXj4Z16B3UlipfDEwwc5QFbNHmIjQCnFPlXeOccRpaL41rUKknn0W6tcPZThfPIZV7aTSjpEE88MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784380114; c=relaxed/simple;
	bh=BA2zhFuHX2mhvpfcfIDsE5yqq8B2fZ7bggRIDuWQHWg=;
	h=To:Subject:From:Message-Id:Date; b=GAYuWNAgGg24Tq5oxEFSW1MMH/18F52hpYAfDBr+s66DJHbrgFNeEIH7ZB3lUSy3Nw8XxZnkr0zbIK+rHRsHT0xhBV0TeitTIjqyX1BBzjwJnc8WMXgTsHfp6RUttOpPCuRHYg7mPBwP128/W2r/Xk1AmjIXKJqt8WApCzi5DOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vee9kVjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vee9kVjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71CAC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784380113;
	bh=BA2zhFuHX2mhvpfcfIDsE5yqq8B2fZ7bggRIDuWQHWg=;
	h=To:Subject:From:Date:From;
	b=Vee9kVjV1zmjWwW3+SWR4ltke7dm6CyAUh/ewBe4Tec4OQSC5Ypko42giqD1pL6q/
	 iJecPFARXWO3zYdTYdUMYZEbOBoDQVFlJowHblfnSB3rDOFGepiSPFj/RYKCXKL59H
	 ZbvdAwM5VTYOqT/8ZgNKrRsv+gOQfEnh/DYijH0o3bXeoaT7Ge1T1eaIAJu57xt0nJ
	 o04pRga9I9kdvFDve28ajgjdE72IDb8cxAK7XJx4ly+p+anyQrCaSFisJyOKHH/yr3
	 YoXTzCTOl6ev6CU3VILoVCvAgY1wRvjn9Ul45AgVVjyoSt5kgplwc+IlwysUgaq87R
	 vZxNFpAqqiCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3AFC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438011368.17632.3183863090491234415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c8ba42eaccd7f0f65ecd13447bfd8d53bc4b99df162347d5e112ce4431d20e
Date: Sat, 18 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784380113
