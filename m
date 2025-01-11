Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C9524B256
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582154; cv=none; b=nRVVF6n8Vp5GlDc6xP/N9kik6pnE2U8/PZMB9HsGJFzu/RYjSTmo8A/5ekqZC8aQKk6aJI+8HssZS1kTvbCgzIsGLGqGWPIJD1y9au0sn8AK1s2zgitH4ddcAbCTOuh+n/PHEvVbo9xy+jYcxra+RC6km0pzcrTNM0Bms6KTMx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582154; c=relaxed/simple;
	bh=DP9uhmKhjdLukRIFdPUzyYxmsAivq0w7mhnXIN94nvM=;
	h=To:Subject:From:Message-Id:Date; b=IYJ8TKMsu/vwPBjZ2F+BVhVUyfirq+VT8D6LXgtQUStwY/k9xDBQnywt6PX7++FxOvwbTSLmVCc1xmvwqvLJDi3+LuhtbIj0/7duHJrVPnrf+HlWBiy7fjkcqWNSPRRWhotFQTF8f2qD3JpfRjKKeLe5CUguYoGYzZ+32BYPyVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSFmcGci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSFmcGci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7909C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736582153;
	bh=DP9uhmKhjdLukRIFdPUzyYxmsAivq0w7mhnXIN94nvM=;
	h=To:Subject:From:Date:From;
	b=MSFmcGcimCgnWQE3Pmj8ZI/eJYAFJYPeNc5Z8POxIhhbmTKx8SYQML2JRnSt144TT
	 q4Lon23obwmWRVSiW6mhU9ZIMUCgh7Ww8O/Z04n5jgtzvX+tE3op2DdLtrCVUZPvIO
	 DtvOcL5byXutKzYKScnZQ4tMfaI221gZbo+Bk3GKjhOizxonHxOZWxDIzOiMPBTdy4
	 yjAnlx5dwQc1u5uj7ME9Xs8CJoDFx5X8Es1nDPzHjHF/HhDDRZ1dZ63MOjXfgHra42
	 Fj49z6Khu7dXMccLOzf3eMHMmcx6Y2Zok8hGFMKSgYs9249quC2re9KsH5vEoSRckY
	 aE6zH3eT67nZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9690BE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658215358.5191.3874629146539444866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1950ccd713377cb5406fe71f5ce64dd0444e3383ddc9b6737a2c03d9e15f14cd
Date: Sat, 11 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736582153
