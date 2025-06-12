Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3774C1F4E57
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749721194; cv=none; b=DG1KJ01XYpVr/MpCO5fyJUoFtj4iLHXnkCJwpkCwp+DKrdZ5tRCkm6lyA/RSvtPGJvBPNeffX5sfn2v7+k+z6rH1SRaAsZGKzmiFjgWIABgNK40H+o4d0lIorGUsQF9IaQcdoCibGvXoGr3wTt2PZ1kGxPejItZBS5E6IgK4ovI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749721194; c=relaxed/simple;
	bh=LOA9ZMBH3laASqNxZi8T+SAitHzJHr6OzU99JpkuKE8=;
	h=To:Subject:From:Message-Id:Date; b=cwLVVMxiHqh+882Wc7t/jRuewRirSClIeX0vdTzG+KgSHIuFph8KiayPo7rKbf/PkUmU1lK2/r3iixGxxZY6hVR2RS5/C7c3ZE2zipEXZyY88OColkBu9RgMzzHw3zG+ZEQsKvocS2L9jDLThp8IXeN5yLCC4/Ra7jSR/8cfBic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPpYOt6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPpYOt6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA3C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749721193;
	bh=LOA9ZMBH3laASqNxZi8T+SAitHzJHr6OzU99JpkuKE8=;
	h=To:Subject:From:Date:From;
	b=DPpYOt6LKRCitHgTLpIxHuBiZcIAyFgrNGN27hgjWC96Y7uLWvmPcyesfNKqST/Xf
	 w1iQaYRpRSbDcZJ4a8PfvQ9LoRMCaBxXawQf4l0qcCoSbcTl5FMIH4W9FX2b790rvs
	 1ZTKtfP9IZz3gRTnBYfsM1Ctvh06z5tF0248aGToDr/NWfIwhAzzGRhWajazWN8sDV
	 cICoSon22jGs+YHQeoKTACzjaOiyjJKITMhG/1OtPOkODsbBesmeua4yucpHc6Neuq
	 uhY0FMz2TXE6+TKQQH76EF9iNKe7oD03jBWH+ce7VD6v32i6dzYRSbtCN+ntvhEpdk
	 Eu5D620IwJwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF63C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972119358.3210.1631390531434257241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24f78a475a3a5f76f209777e15dd390397ec20cf67e36d33587c9cd2c150efc
Date: Thu, 12 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749721193
