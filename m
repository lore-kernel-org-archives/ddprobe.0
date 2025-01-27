Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CEF17E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738005355; cv=none; b=FJklrmfxpfTpgKYktQivePadoQ+oPppYTRT6Zs4dTWorGjxvzYIP8fYa+3HWosfmt1TBo/QS/Tx9xkc5qHpsOcrv/2Yv7G0FFIs/QK3XdJmACl1ASAf2uqabd11sa3aYUlYNK8oAvLmrWbRiKBceAgwOGthwIbyjrPfKguSCXI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738005355; c=relaxed/simple;
	bh=4HOm6B0dnYMyzQk0fzeAUW27Coonxy4nD2xnqbLYFTs=;
	h=To:Subject:From:Message-Id:Date; b=WX8GW9JX5rfhVJzl3UoMfFQMu9eX89VbCKFqYULO9F8a7cWTIQHcGlNlH74KXjl50TlIrMIPScH5Lm97G1FarPPM/kzJG6kR4EtzIyRP3VDVPgNj0IXosCjm6DBNOLF3i0TqQtHRj7gNVVPJfOkO9IAi8duSNSwmRQs8YHeGFbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3RduMKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3RduMKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48FBC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738005353;
	bh=4HOm6B0dnYMyzQk0fzeAUW27Coonxy4nD2xnqbLYFTs=;
	h=To:Subject:From:Date:From;
	b=V3RduMKsXpTlpt2v80cwvBnf0EZXCydUa7E3qs021jhuPfDocrDg0B8zYr1xOKTiD
	 HbjhJVPXNU3SRO0LEA4xLBCKh34z6s9dPXhgEDkto3Ny13xlPnL4HWfBFGVWSlWNDN
	 IRsJBt+iU2PUgq9Dogqg+xlGLpvmgFWmehqd3FqZDUlrUrDAA7WyLNpDRLSQ6hOEjN
	 0Qp8hxOwWHCVCCKCSkqfBbaZCRX9eXHqe4wVJQWH7v8znBeHbJWi2DC8Mpn28lDmVz
	 iGMEef2vIpryWH031h716gJdQYV2x4LDkV8FyGF3mbnxAetpexXPpHWHyUy7pt7p3/
	 dMc5iM02zfLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D0C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800535360.12490.8412474887251537577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c42b8e532d34f25b3b939854405e2ecece7212fe58c752dbd75d85183ae6114
Date: Mon, 27 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738005353
