Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F07C4437A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755403194; cv=none; b=QqyD3oNWp9QfJZQO4q/pbItcqJK24QEI+1Fx264Jky/qPUzMja18bDsdMUGmlMhUrGpfP686c01JxZoprVsi+MjhAfVtHiwvlcL9WiirGhh1msCJmNBErMkfR9uAAuV61VjsasUmE/kwJuqUQdO/1xDJT1Wwnwt/DEVzanehEZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755403194; c=relaxed/simple;
	bh=0Xofa4Td0vnn5nUIBmapH9cRWVURKJTokdlbDITD7T8=;
	h=To:Subject:From:Message-Id:Date; b=CwJoZeXy0cZ0At2adjVeh2rTeipvOm27Itm91ka73xH5sgPu1DfgejzQM/W382BHPgIxNWTlOzHPbOxH0oLoftCzfRRTE4peV1oryP2DdKRQ90oaIPZlzst75YVGhLVO8lVRwn85JEEEoUy5mxKaO2CQ0XIAkzzj8F7GhKWMXcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwjXW7uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwjXW7uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5902C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755403193;
	bh=0Xofa4Td0vnn5nUIBmapH9cRWVURKJTokdlbDITD7T8=;
	h=To:Subject:From:Date:From;
	b=CwjXW7uEPoWAr3HXEB+p9lpXtKW1g+EIZqnoKNf29J//zFboHFYU9IHZlVS0zWcZ5
	 kCgbx/i2fFLKztxhX8mxwiF4N5jQPrvNIzjsGzPgb5H0HofWsJqDXvk6vF9im6P0mI
	 Lb2CpWagBr+25B+etSjEwJRydyPPxEEm5Lk+Uhv9qDd4RjfyCgjhDy55gO4ANGmCFp
	 YkeuIH73qZmbnkpLeXzIrDiO0azwC/dlOMbL3qoor2aby1AKz37jiV03IwzVudEN9M
	 WJ/ItKjC6AeCNvPdMXEAd9Wx+pXYBpnHAKl1rhhA0wDs+XrrM4TZZQ0hltLF3SFJKi
	 qlpT9yspygVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B96CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540319357.5029.10725609628527136754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea5aa6cd656c36eec0dc3a9b1fa5e92edfc677ea43d776b3c6b2167c23712f6
Date: Sun, 17 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755403193
