Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F0822D7B1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756447194; cv=none; b=gGUfoqmEy8MbJhYqm2DjdfWSYoaHx0Dt6J6mPWihIphVq3u50NuzkHVEroCv6u3o78jJma1Y7dsaVKs0K9z0H2rpr8wCnpxt7f7neXhHAUR9lcJEJtkbYe+mm9MhBu5oZh/HebXduSR4W2HzicSfj5Edgfe+3fRSVDrS3tk9Nho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756447194; c=relaxed/simple;
	bh=UkLxYyUdYs8wJYzwWILCBucgfT+1bIZMJR7+frCeV5M=;
	h=To:Subject:From:Message-Id:Date; b=fE9g1idf4gwkLVJXlsIGnTcarmpcOQDBIX/F2p13vRWjFna9xJH91UOvwXgqwVKPyi+U9VBooSNTNMfyDteAFaSlBKl4bl7snecZfiX9uPIAXGKNwbhDY0LaQOGySSGSKlK1j2cRl38kK0nRxvs5eU3oT6lbJVTQDJykiNaaV6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpCxXb6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpCxXb6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1271C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756447193;
	bh=UkLxYyUdYs8wJYzwWILCBucgfT+1bIZMJR7+frCeV5M=;
	h=To:Subject:From:Date:From;
	b=ZpCxXb6VUxrwKI/q7MVZ3okIfTZlmnE4Fkd44gTye6HHXBe+Shnd/s3qNW9bJ4qhU
	 Q1WBg+70GxlVBBICCz6MryUsXX0mXcoXUwB7kf2Kr8NSekESTJpWog190xDI/N1aHR
	 lnd7M9wPQs1ks59MzVHI6L8YAGLLY3+ePQCtfdHMS9iYhoCAn8/WFeloBXzJjwQEpp
	 Keiq+wMQPHWnDOePdaAXW0AglcdhzECCvq37bHzn56WtV5yLStr4e10tmrhPswBYxg
	 SJe1ruGe2LmFRq+Y7eoWNgU7OmOztLGX38I03QSVSTH6fLLpQPHGmC/ATgJmJ7xDtz
	 ymPLsf9zOW8UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F071C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644719357.5225.950811796207094575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaa4458f612c16f41f7c06fcc69c4cd24096a9eaf68f783a72c080261600051
Date: Fri, 29 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756447193
