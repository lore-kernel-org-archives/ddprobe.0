Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4521C176
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751885994; cv=none; b=eQ6ogEDeLROTqzOOQzCKvVouNrIvNmgFX4dt8mUHfCx3wGAE8cbMqwOlk9HI9DI/2HjL9DR1CmUAJ6ZO4d8kCL7bVWLxcyOsVni1O0KcYanIJDgGPSeowJlOEMLf7uNIGGWMu8kV1DtSMLAhrrNJKZfFwAL73A+oz+yOFU6ZwEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751885994; c=relaxed/simple;
	bh=EpdXk27OfPeNfG/UAk1HbieppGRQMj3V7QKLlfDAuMM=;
	h=To:Subject:From:Message-Id:Date; b=Ve54Wq5PqA2b9sZaFGFBKkUOQFEM6YYxKXsFJdqQR4IL/MsYZbZSfIlLGDGuiskg4FphvDf92i+wAVbH4WCMsVpgycont+Yp0Hk5Hv6WEzf7K9psK2rf4XN4DBIDWYcj1sNrahnnynEVQT6F0WaelM0qzIwEkIh4h67XDPTTNCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZFC1JTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZFC1JTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751885993;
	bh=EpdXk27OfPeNfG/UAk1HbieppGRQMj3V7QKLlfDAuMM=;
	h=To:Subject:From:Date:From;
	b=OZFC1JTvzG+1igfeNiuic+QigJqHamM4Waj9G/kuyHIJb/hBCd7iXzluPjtOGEe5O
	 WSb1mnKOdwrxRgNVhD/9hZoNCsg1OfhPUDuX3AiDWtOonZ4mKhoOBQs0QSkRE3yits
	 hpWHbQWpo8cEFBxB/mftK3Y7tdr4QgpfTkJF2+HbiQ9jjPqhYsM3p+x7zT+sr9TFGY
	 wks3asqhlv7HFbyD7pPD0gg4b05UExGUPeESPpimeN8Y1DZvyH3S2IGuy/yJuRHJcK
	 Njf6Grk9XHTYnZfxBl75xtfsEHrhlLgEPz2+kY8+YEkIwDZmLiy5oyYFkYthnE/suh
	 ouyGRuE5SO9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91402C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188599357.25179.15904662862733606240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c6b49202254babc93695d9b616fa2a4c6f41d412110d4a5eb8a6fe60a605bb
Date: Mon, 07 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751885993
