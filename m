Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254E469D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736190354; cv=none; b=JEaSb07BfLytcwXAh2XV2CA+Rb23UYrLDL9nt8dDGYM1o/ZNqtxmsDc3v8I+8Va5CupsMYEBPFjCQR+S0IzIpWMz/ROQloE2XcH1Lm673A/0+LTtOuLzczzOIv4l/Y0mCqIdFWSDj4jg5K9zyXvlSSbA96ZGfo06eEttQ6rFhQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736190354; c=relaxed/simple;
	bh=ngmVHoq6xI5SBc9DJimavOY+mzWXM20H1OnLktkJfGE=;
	h=To:Subject:From:Message-Id:Date; b=euh2NOdZGfHEdbM0p7hYVgZVlq5V7eMcSUlS47VckBYc/wXP5f2Zk4zVR4Ya8yX43O6U8KkaZcyye6xaLsADV2yPLHBmoHgnqzGDwzkPCHhZf1Z+rQmMFrS3u7TWMKhmZauq68FlJR9GA5qqVmTpdikIZCSqUod3/Ag8M+T+gCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nqdpc+yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nqdpc+yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C30C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736190353;
	bh=ngmVHoq6xI5SBc9DJimavOY+mzWXM20H1OnLktkJfGE=;
	h=To:Subject:From:Date:From;
	b=Nqdpc+yZ5b83xX+Eci4c77nISboD5j9AFhegz7moSLiq4NJOcoLl+lBggS1Ho1PWa
	 z7wamx6CWS7tVgHoKWWBTxDaBiQy1aNaoWGLo9bPb3QI7SVGJfpvYnLw1W/5LVHE1+
	 d+X0jl8bjCf4zt9ibmplo3Vh/jnl9DEGd3NQVGxbjxB/hD4RNH0/bLsfGr0OpBMytB
	 ye+e9Ve3eLNkvouu0TdyLY4QFvt4MULu5C9y/2EwQQC7cdhxhit0KSGo911+ft0Z27
	 8JnnV9P9VWVFmE+c5/vR51+Ndcgy2ALlvZpPV/RQKVGdkKr/btLpx7FgNEL6OyoTgb
	 rY4cgRoR+QFZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DCEE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619035361.21877.4480557833583094867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eba6ad5787ab16052daaeb16468d1f593aaa583aceccbecc29023c6749bfc45
Date: Mon, 06 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736190353
