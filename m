Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAD37E9
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745223; cv=none; b=CcDjH1VstLU+/rINaSTlZKNDwqVHo3I9u6sDF2XQNg6Ofv9nTfk54elXpkOWEKKtnaaSfbp9tGXv54Mb3jPCOZrSrxu1WasHYWMu1UUa8ni7adDSd/+BSIWtO2wwiSx5g6T/YVZOlR8qeSI8DY2+yavhpuXMqbS4SNkqBmSNdSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745223; c=relaxed/simple;
	bh=my0Fw+QJfolqWb8eNdrNHgnjrNIFAZ1exv+4RACN22Q=;
	h=To:Subject:From:Message-Id:Date; b=Ry32b+HMxzQOcPhkxAccSrsdxjkVIHuQNA+CsJ+Z3Ib/ZMQ2SsCOF9Yi7jMNIL41ZyXP2UwC+3NAK7rDrPdwn+LJyqUU3XemzhyfjCz8e0sf7bi9UjXSRuKBUUmyLB0ibZhkGEpN5jhJOjhL2n97lijNRL7z63n3wfrPa7BMXLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W74/RkIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W74/RkIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F10B7C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713745223;
	bh=my0Fw+QJfolqWb8eNdrNHgnjrNIFAZ1exv+4RACN22Q=;
	h=To:Subject:From:Date:From;
	b=W74/RkIvCzxcS5AGtZLpz6MXguVLGAH2IXe4e9ZNaH+mU+/hCiRKmhIrdSKaw1VtF
	 QCmm2P9OhUp7BXekhuGexFR+SYOz1xLOiuYG48dDrnSo3y4h0/2Q8KRynbRclkNAXW
	 5fQ0W3WbsneaSNoAkXhexLVrGr+4422mWP+tVUZjA4S1EA2z8XO/sb5IprKy/mxhKG
	 1ozY1liHVVrhliYzVo2nnR5Sbk7Vc0gSusMUodyLWT3dD/O9X6xGtNet4y9/C2kQoW
	 2ni5V+N57V2mwjoJilVFVIaqw63o9kcYSiaPNirQSUsdV6B/pC3dlPhNO/tkvtIGuP
	 tNpOQqVMKWuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD38EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374522281.20341.9829520014521553993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d544f556ef051a2dbc544aba2b7ec5033b6e2e9507b5882b0c4dd52e876796
Date: Mon, 22 Apr 2024 00:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713745222
