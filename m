Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1800775809
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763244654; cv=none; b=JzHS02SIKgkuutXsoglDm7/6CrSqoY7iVSc1nfVdyVycYAxbqygAKzMIiXI1XDDwNj8GegSU7icXmFQBb/FmOaG6cRvTOk9nhRj2tKHz094TxPo2qWXO1WWIa3SqdbW90P3el+uG9XbCMNZZVAbYH6KxQOS6e98y/V0l3kuOgaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763244654; c=relaxed/simple;
	bh=chST3WbWTK2NNHldSDcVBRG31hq8IuQMb+By5vm4Ya8=;
	h=To:Subject:From:Message-Id:Date; b=FSIzJuw3n7OB4Wo6y6XCrdXz3GXLFp7OSAE/2mTGpQJ8B0Wsg/YbYbDncKaCSHqhvPh1I0WMgaVGA3L1izNzmYxtAb31fYNlmYFF+QV/vXcFFZh+G7MDFbSTi62WGcIFMKbk8FC8L07r8BO/dhq7izPIVlDawGPioK4z0AUrfJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlnFM5Xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlnFM5Xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A327CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763244653;
	bh=chST3WbWTK2NNHldSDcVBRG31hq8IuQMb+By5vm4Ya8=;
	h=To:Subject:From:Date:From;
	b=MlnFM5XwLpXYetYWLbuKQfUhMqtxi9IshdPJ709KtbHeOgZVTrQZ7vbj805gQ4ueL
	 UdWbpcVsR46/w3RDMWwTKblES8foTPRa+dkapRfSMFHjfSgv0LEviqrsGwHXTy0Qwk
	 SAZC//IMr98T0PvPvoRTqLg4Y8lHta4tKPTjuJ5sPUn2UExK3RiQDO6DdHW4hhtJPd
	 xVCIAp3h5G2ZMprwJRBwyixbw722Zs8uPq5x6ofhTbKihH8gm7S0cysZcla3Njglud
	 mwKHL9qQXYm7BTaLTzOs7WZmh/eXTp8y2A43Fdz6VlkJZNPFXu6Kq5NuPIF2Eqv90d
	 gMpNQ1ng+jsZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F6FCEBF87
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324465358.29698.12739511727864778038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cda1efb1970f498b7e88a65495078f5faba09843bfa60cd9186ae83d7f32203
Date: Sat, 15 Nov 2025 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763244653
