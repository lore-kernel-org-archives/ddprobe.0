Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E3A502B0
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712918963; cv=none; b=eRzvALPUq7SMjZeBpfksOUQoasWFdUdN61eWEoP7UKlkyCQTFFoWspIZ9J0GQvMyec7o6SWPBoTxAtkHWnm19p8mLI5lVxDBcQTFPgGg17q8eUb9qFKnEr+BIpJTN1O6bfztj/awqmixfF/y7k5Ug+otBDkm+2rnfuZu2Ld1k/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712918963; c=relaxed/simple;
	bh=ezc0bnwVbg3HwbxDSB2LV6qPEOWchPNVsAEekkhvBv8=;
	h=To:Subject:From:Message-Id:Date; b=ZZq7qoWN/spMj/A8SHPEW+zUf7/nackyefcvMqaGIrR5lssAKwrylhU/PAKUusipEjKibKwgFdc4XyycPih1zYEHbv4Fzx1hTiVeMPAHfIpZ32qNuhbdqAkq0YiWLYjk43MOH2YI0U3yFZcr/HhQ9kOO1zFzPEZrImW4H3AFmnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bwbm3Jac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bwbm3Jac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E833DC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712918962;
	bh=ezc0bnwVbg3HwbxDSB2LV6qPEOWchPNVsAEekkhvBv8=;
	h=To:Subject:From:Date:From;
	b=Bwbm3Jac1FNvdawtwkE3H1dbp41FnZIGxB5E0RPBNk00kbIj7MRQ37/1dX8dV66fV
	 LBD+sHWjawux0k/xWHiYUMGBLUdJsVPyQdjiCzQEwQy4HZqicATeueXCz90S9nZ+94
	 unSKdQ/wHJz4Q/IeIClhIHYWX/m8rRbBUJzZel+do03PJCuoN53Bi1uzFL0co2v0Am
	 uAyDP2M7xtccbN/IwuZfmuagso7MiD3IHcnl3YmFCj7OSEQIC+I1c63K6gMRL2L54V
	 NbHf2cEX/hIPlIgDMN4cQEHLO5hO1o9rWQiLR+Aw2z9M2Il9b4oBn/EpYidwL2zWJx
	 F8RpgVvoRvZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4B34C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291896285.15314.14553866450993265456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c02201a2c7e3785d8abb65335f5b27dedcc81749923027defb0abfa14e2ac6
Date: Fri, 12 Apr 2024 10:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712918962
