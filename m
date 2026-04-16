Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BD31F98D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776329254; cv=none; b=OEVsRrw78QsOvuxFj7etSD4/E+bjo5MfzAvEta/sMyimgIcEM6TGY5SaK8edOUHjnl4UEucpYYYTLWbooJDBP5mYAhn4YXOWCE5LjJWO2OcIzH+p+iuSrHftKcEv3U1/KUrAdn5P1eABmRUvCGRsCsBllsuW9TFqLRz4RaOHAew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776329254; c=relaxed/simple;
	bh=N4cMUfMCUsmD2hnNuzCct2tcDUHAImwoKBvK9CsoDJo=;
	h=To:Subject:From:Message-Id:Date; b=r5fuP3HYTrIhizbyzwGjFW1Wo7FLh0ym32Vterne5rgpZBUeegPa9QP3ZWtcVNJXU5RDaTcn3PrHpt/S394d+W01hn8tEBzk6dJFilqjsOf2UHYspdnsWy8UV4cRqLOMcowFsx+DxX58pEIxmRwzhN6KTCY+MxPiLpfhkPFElSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgT5Ln37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgT5Ln37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0550C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776329253;
	bh=N4cMUfMCUsmD2hnNuzCct2tcDUHAImwoKBvK9CsoDJo=;
	h=To:Subject:From:Date:From;
	b=cgT5Ln37guc0lGg/lT69lwkfv7uS7FZ7pojK3qbfVs8n77reKkOF3DFXzvhD133my
	 Pc2bP9QPJflo7O17BEAS+/JifQqL4EhFZgNvCfI24JrSpr2DEf2AZGUkt+/oVV4eNp
	 lmkMTR7/P6gbj4cZOC2EjNHk147x4OeSjgwag1ajuMCv9xngLEtMHMgpdxdvWkvgQr
	 /9z3VXXL7OoRjJNeczCfn0KVhffiZm5UiPEWnbGvmeCl2uqvpGIhUibHlRZJX8zpFn
	 wZ+zeC6Fy3DY1KwP+oPOBuxTGuHv9pGyphgqf41q9pU8B1+kQESfIxnqhccjYBNzvv
	 6mgYJW7O+j3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D28F8A148
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632925371.4632.17171538336492396858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7843f84f6a160d825bf01956bbb905bec4e6dec007e0abdb5d6d32ef8e2d8640
Date: Thu, 16 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776329253
