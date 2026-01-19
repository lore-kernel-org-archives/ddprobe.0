Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021B437E2E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768834434; cv=none; b=Q0sYprRpWi+Kwd+LCzKKDkFfZoOKBilw61C5S7j5l7s7gn6vJ6w9l5yNXmhD7+iRMNlnVK8hJ7CMezeV2qEYFYDnr2pMxHX+cb7Bk/6WRblTNCK8gWeIO9JJD1Pdx8rXUBFtyBaDceCjlg4i7hNfTxjHgosLd1mS49kN0Dy+kRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768834434; c=relaxed/simple;
	bh=W+wYbqi8kKnNoCJt6WRoFGVAhdRIMUGTJP1DPazqvQk=;
	h=To:Subject:From:Message-Id:Date; b=J37at9qfEdPbwJoqNm1Lt5xYDC/3XQorH/TpC3xoZyxFkR2VYOUJMd1Cen6z3cDJvayhTywleicqGPV1F7kfZWE67B1tBKKXbxIdjjGgnNt2HwaIZmixntm5sj2FaJHqkGBcgDYMJS8TPlYnhrEa8jsOmpODigeOAvqZ0s0VyDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d05i9FvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d05i9FvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768834433;
	bh=W+wYbqi8kKnNoCJt6WRoFGVAhdRIMUGTJP1DPazqvQk=;
	h=To:Subject:From:Date:From;
	b=d05i9FvBpJUuzaLBoCcI31UaEULcRZWTWUIgbgLGU8nC008Y26Hb+nf41fFf3dJjr
	 9or+8LE6W7CQ61qB/xfotk3gnM4ACA3lfypd+L78NuVPWcbyZd4vdr3kzFdUKRQcxt
	 8gEQEhxMe/dSBLiJbPWqCqR32SaaLoODbE8Y+uro58dKbn6PG55ffqnSot4epltjWB
	 kbXb4ANLuGNViSpghkck2y9Wb81kDmWbBFMqF0+ze1n+oSwi40yLwnnpAG0f0MoNWZ
	 8rAbNrDJXbtHzP6cfIsOKFhvwjclnLS13AY8AyDBczJg+rmH2rEb8LkVIrr1hSyM6W
	 s7Ug2BobkJwNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C69D29C36
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883443358.5557.12899151733866550210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baaef6286fa3ac95bb4c7b4f38e439c152c298d717219d180a8cf05ffce499c2
Date: Mon, 19 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768834433
