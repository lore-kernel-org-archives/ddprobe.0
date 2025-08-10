Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3589B2A8C1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754860795; cv=none; b=i0+4mfwIUqEM+FIhJn93D3mPxwdBCQ2C+MCiTV/8dOhWsllaCU2bt7ZWdBYZqAbqUIaYPM+rMv3i588LRaiqrRYnLbFVUnXBahu44op3ynu+FAPOQpYiWq476t2tCXZ3JmJcLZXaTmsWxFMIDPwo0tXxc35Su9PdYW8e3B1guyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754860795; c=relaxed/simple;
	bh=56MiBat6A/TCTjT4pfr2tQPgRdbNdcRBeU5/vaRZOwE=;
	h=To:Subject:From:Message-Id:Date; b=VGg24aQy8M3mdMcP5MgqheLGgmrBMElSaVSGNHMmTkMpud2Q9gDcZbZWbzISG2Z3qZKTrHovNLC82/AyF0JT7KVY8hP7JYrWG7zch3Wtxd10l9/nL/E78LaVAphTnNmHyb9Fna+QE30O8sY/x2y0e3fmCGpOTelstnzkpTno1JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDeojQ1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDeojQ1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754860793;
	bh=56MiBat6A/TCTjT4pfr2tQPgRdbNdcRBeU5/vaRZOwE=;
	h=To:Subject:From:Date:From;
	b=tDeojQ1X28hWonMQZI4bgAhPSa49J0kWFceoIwX15NkHykLHx/vxpyJlhoW65xboD
	 1FHtiZ6Dy9DXtpCbZkxsWA/POB+Ag0CGHyzx7tn/WFX/ljUiEFqwv/BJtywGjOZjym
	 63zdJEkyRLdmrYh4BbqBhnDBOiKPs51EbEq+HB3GGMbkcbFb+eJaHbL8au8kVyUABx
	 95/aMA63D96ZNjinBLwu6wfDD/NZTg3rGi0Yos//TwaRVH/kev6KjqGWP955K+qxRL
	 E+y3KxqJEEcnhGiBornlsiVwbA1avukdtuA2GnMkDv7Wjf/ItE/qs6qZ0F/kAcGNZS
	 I+yPF4Ze0bntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90179C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486079358.10992.13649326883984721603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc993d5c50e52b5572f0dcdce52b7c6b05b09acf25e0d1f1c50bb0c611dec3df
Date: Sun, 10 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754860793
