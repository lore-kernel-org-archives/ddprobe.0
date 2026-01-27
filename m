Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31FB362129
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769532834; cv=none; b=KkQ5W5vdZ2G8cOsJaNXMMY6E6IvrvFIdHI4thaLLSP3SXinSvMEvOECaJAiY+DDx2XX6pKVs7o8y4zXd6+WOuUA15bSL8TfcduK3CORztJWf64/P2RcFVMqdLUdeg6ywygY7/SBcfST+IsOvDBAsGivctnmZu9aPNlBoivVdECA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769532834; c=relaxed/simple;
	bh=pT63upgHUOCSQiV+pDrYYOQKwwyMsG2W4plUQLJ49pg=;
	h=To:Subject:From:Message-Id:Date; b=B4wNjq9SJbRcTEQCgjlcoPcSJNhiqvCQLXjwIQ+Z299TOCORxr6DDjCQ/rE/RZEhLtPrp2xLcIL2M+CpfLLjTj2u8JlEu3mvHJGrScquhqPd5ESF8C5ILyNHKOde9xTdF1DmEdmgTe0ficViXZTJllz7flFnQ9nfiUpxsY0aA04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDN9bIr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDN9bIr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769532833;
	bh=pT63upgHUOCSQiV+pDrYYOQKwwyMsG2W4plUQLJ49pg=;
	h=To:Subject:From:Date:From;
	b=UDN9bIr4adHKSxadxVJjRTMue6mIxouNs3drV2dbCgLzf7gPu2iBJ5/dv5I5Wcge/
	 WzVNS3biFbkggsoaclE4079/tQ3XBw0WY8lTy/vjwYK0P1fDJ0gO1/AAhyEshlG2cR
	 S9xLKtJpd14T0lZZkkBQEZe8ekdtBYnV0/aR9fiBHo2hWEQ0Ua53Ez8N+eM8xqJnzZ
	 TtJeS1lYLdHUKU4ZhZoIsKbze1QsUN9bVuBn4JoGC5oZ3Ta3Sr18QrReNPnTUq86HE
	 NgNYDFiBemTo9hTq9i0+mWIPxxRoH0f8zUiEOjCMGTZcv833wfw8lYrvzpPFGCJsKL
	 uzgX0/hG4nX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A91D340BC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953283358.11577.7616445141312906587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3195f7ee4340e86b92fda91a82ed7a1b1ca4a89c6052667daed1bda02fa9a816
Date: Tue, 27 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769532833
