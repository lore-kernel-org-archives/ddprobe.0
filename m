Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2128EA945
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759624194; cv=none; b=md2agNuD/QMjg6AXkqZG1w2GqzhPaGXt8qrX2P6DpWZYFCqYOPoa1xEQ4HW/5FMZPfPqjrDeSdlpN9N5l9n8CJlQ5QpdhLwrZw5XkEoN6hYLnlLS3churBpX8gWX4MTSNDSpe6NtdfzNMF8Jsqf/SthxL6hk7qxsG6BknYlb7mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759624194; c=relaxed/simple;
	bh=DQBYvB6gw3nrH+uR3MpfIe5UQ3RkxuISG50mExsHdkM=;
	h=To:Subject:From:Message-Id:Date; b=oT8JS0d4/RBGxYwdV72xOHNUBoMtnmDrkTEg/d3/Vaa7cNfA6jaOrtL0pLuxnTOBajv3kep6P2QTNqaCyTVklOcPTtFy/MB+TedAVTTzZIr0n7LkuTrBR/57kc1mJsTIrdI41367g4qsKC1clmHqAC6x/QGSoKTFjFzs91sbr3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cy4e2TIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cy4e2TIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B01C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759624193;
	bh=DQBYvB6gw3nrH+uR3MpfIe5UQ3RkxuISG50mExsHdkM=;
	h=To:Subject:From:Date:From;
	b=Cy4e2TIh6GicCgJmbX00ssHRSo+DeobX80DqmL/IXHTPgShKORG9xSzrK46qzFYUM
	 2D6YcsFCrPN2Vm4s3zmrLj37HCYKOtKGbhFM1elvL/tsSIZ+LRwWwGsSUNlgewxOhh
	 vxPiN+Hh+oxmiir8e2Bqz41sLf8MFC8eJa4gpGo+2r2Sn4PHVfRLYaxGviDyfdVJRx
	 H4J2m6OSavQ+iO6vw8KujjK/nsfQUOXvdbSy3P9xz+z1cedwvJVGlWumnBJ7ZmSRiN
	 7GWEdc63W1+4zSCvDCA1de6vLG2YXRSvJZyTlEtw4sFc3HVitLIweYDTVjbxj5BoAJ
	 78XC+zOp6lxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DADCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962419357.21731.13729709027124575187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56642fa26ac49a5db4e63c783b9f4808f610a442ef910ebe98f59e584a955f9
Date: Sun, 05 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759624193
