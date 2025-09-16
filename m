Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181962582
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758055194; cv=none; b=UhhgZcfTaJHaDJcjjpPoxgXooHH21my3ORCaKs5A19BFqfpFdmiv1JZEMEPZYDbaSpkUXF8Z4jYSJKZdl2JOMCIIkCAoOZQBZ4WA3zN5gDnnVUrjunlHmozUGoZ2RQvTaDg7D4ES57dN9aZkWDB4YQrHHNcbcWaX32ivkKkXKVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758055194; c=relaxed/simple;
	bh=QmgDKgDGLe0QAV2IVcyFwc7tB+upz0FN+rmff5E5fz0=;
	h=To:Subject:From:Message-Id:Date; b=tXYYCk5O4VE/lwl79Amtd5mm7OAXYmrJzK4s0WsBPbCSuX0sRleZg072Z4/CM13D1tTyDbRSP+0bGmia/Grk3yvxloTuYqNcTjsYKr4MzjnpJxwnvuhc589qiVQ1Af6PPuNrGQTKfr+ZeOZAX+GWZ+f8b21DJJCS1oL90f3U1UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0pgPzq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0pgPzq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97C9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758055193;
	bh=QmgDKgDGLe0QAV2IVcyFwc7tB+upz0FN+rmff5E5fz0=;
	h=To:Subject:From:Date:From;
	b=N0pgPzq/oB/XbgvRgqrJwriNub3zooAAx9Y4SL83J3ivU0EcRs7neMoaejHm5xsSU
	 ZZcOKDwY/lCwSscQCNvAhgi2ZVR0Q3Dr7HcRQKF5Fu/2TQc106NtVHnY+4/D02GOZC
	 vOUMxYqEIuVU5S4NpPlsNvd+ENzYB5UIcbeXYIxammdQCfuuqWhzTLZer5tabj9PC4
	 eZY72vLxDdWuc27JfFlPsI1m6bfIgRO7PZcibbncq3l+NML4Kt51TNJ2gMPClarVE5
	 6QAptYdbl2WYMoW/vQjJ33trOKaNgHRM7hc7VU98XEqxZ8xWWDA2zewD0J5/mSlifn
	 guYAyCONCNhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A9CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805519358.13293.13421166350861242486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcaddd08d2cd712b70d4f1962c421ad567207e945775a693106dfc1e2e95171a
Date: Tue, 16 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758055193
