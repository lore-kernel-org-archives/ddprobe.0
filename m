Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BAF1847
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720932623; cv=none; b=hCBaDrjOg837W+ZFzyRRN7BsvBDe/ghE6cJQ8g89Js4jGPXQwyJHTpeqRnk5R2DI0G+TkVjsjHKzF1YJHvZ9dx0n40sO2aRGD85f43NUuTdT1fxm3nARdy0LT+ONgxmBM1W6UqrB9b+mzFfUtjXwM7dgs6sezEFReybr5wGP6OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720932623; c=relaxed/simple;
	bh=AYgr4VLOTYvoD3UpvYM3BKwo8Un001DT8VrbolndxiU=;
	h=To:Subject:From:Message-Id:Date; b=tOwEChci1B7/4lf7EmDPfAOeiJvjYDI4m7HT/2bT7/5upbRtVuZZTiVnlVFjp5kcbP2Wa53+RnjKP7VRVxfYJx12QJPLumf53PfmrO4XXi8t9xXB+MNQh6S1cljAO16qRfIxSJsBcgGewzk294tQniL24QMXyCNUE0v/MCV4hU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsGHLHCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsGHLHCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD837C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720932622;
	bh=AYgr4VLOTYvoD3UpvYM3BKwo8Un001DT8VrbolndxiU=;
	h=To:Subject:From:Date:From;
	b=RsGHLHCs2quuONmKOBKFKJvlL71350tM2KI4Stk984NZDg9lx95zTAk8vdQ0R1BkN
	 flv0PdRw5w1Aiq8/JY1eqzaUIMp7wluEoCk9YwqU00iIoa06ohcpiBvpdiNlEPvwmY
	 X///bEUgSeofI57rE4TEQ9l5R49+aTLGLzjqtQBB57xRKYv7hQiUYzQZ1AmvXBRrpJ
	 TqE9gGXetdsXriIhV+QIAnLV2D5O2jES+xODNtllCA6Z3GwNLQrSvjdeX4YNIkrIVR
	 1cDk/3JZ1Be5qEBa5m3p7i4LnQK/faQajtvUmMH1ZxJdiloS8Piwg39chzRBMgw4/U
	 OhZB9Y1XTPKHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84F2C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093262278.11280.17227974055967782099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773f874ca043795256e35f8dc12fac0a2a22c252897b25c35cca8b1b32d86dd2
Date: Sun, 14 Jul 2024 04:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720932622
