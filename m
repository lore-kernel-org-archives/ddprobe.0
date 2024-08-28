Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2447F13B79F
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724849754; cv=none; b=eVMVFKN4QZjW8EPzIxPIk5ef66KG0AYFovcniGDMJmoaH0F/QwK23/0RIZrFbDVhqvpoIJM4jtM7+qjFhXlVKijNbMzgrUOy41L7emSDylKHa8vD1zslHZbxc84FJCautVmTa5cDi0U705ANlTdNo1fr+3uUj08AUgmyNT10WBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724849754; c=relaxed/simple;
	bh=4e81SdC9QLRnfb0dThnBFPr+QwmWUTuDka3s0SsQPgw=;
	h=To:Subject:From:Message-Id:Date; b=SiusRCyY+Gyuraz+1zBZCeSL8Clk/FhKCbI9RRBhHgWMwxmzMOVrN76+DcPm/nmMYE5PsIvV2okL4c/djTUxCMOTNiOkHLlLwFLDTCVTRpgIgLIIXZAwk6iKF8oiVOt942ezK4EbnjXSDtDVh9Nj8evUgp7ginHsZZVq4IMFw90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auwT35SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auwT35SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0F0C51EEB
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724849753;
	bh=4e81SdC9QLRnfb0dThnBFPr+QwmWUTuDka3s0SsQPgw=;
	h=To:Subject:From:Date:From;
	b=auwT35SMLZkQy5iogaMZGRRT4XSFS+A5KsUgOPL5Gm78Bssn2mXWavZ9avgrUID6U
	 v4KxMiAfAMViF9uxGz2kcGkZ8zknGMkDijjYtSRUGR2MmHZn9BoBbJ54lciZwPtS1X
	 240gcMe6l+NdltXcWfv9rXTrh2e7SAUAsHE0LOHaeXsOkSNNOJXmQD39tKBbsgKqL0
	 AxTNg0E30vgWxdoZZdulpyXBRN9v/YiE6CWI8styFhswMbUjViFnZ/nx2PP/sBqjp9
	 u/mqNsiLuFsKJBeHsr7sYiJga4Lp/BB9YbfLX9GX8ZHYY48Ca4coEN8HMCVpXHViDf
	 zSQjrvuuK0H9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E8C54FAA
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484975361.23894.2631648411274877240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7d6dc2cb23f75a708abc3d6d65dedf8bf44300c8a31e5690faebda48e9ec95
Date: Wed, 28 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724849753
