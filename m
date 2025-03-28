Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3834C1C174E
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743158394; cv=none; b=VM6e6CnK2iqqhYNPQNPIcHwWcRPOLKA7qDtf2XkqRE9lzgW58QY1AZ20UiOXMGbv/vOloNbzKdZQIlTRAXfI/0xiSWocCWRQXhXi/iu2JHPCEPbkL2B45eK/ArDmfJ6+mq1s6Ctvreta7K9dVpxjFndwFmM8PbZoC/stMFKPu8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743158394; c=relaxed/simple;
	bh=PsHDML5+iK8l0iTMmnG99HerEu+gLFchMD7+5R8sR+U=;
	h=To:Subject:From:Message-Id:Date; b=muFzQ1Dgjt3avRlGm8lH+kSn9oKpE2IkxbNplaO6pB2/DYyDr4l6diPMP5VNAK98Vpyj0Idscxn6UlY8SzDKbsNs4DDK8yNHzX27z3iuoB+6sRMkhLnPjnUUJM03e4ORUZ6OJMOlPWGNPbnCgqP7NU6TkoWhewbjmITMHLJ/uo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYkNI45j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYkNI45j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8D7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743158393;
	bh=PsHDML5+iK8l0iTMmnG99HerEu+gLFchMD7+5R8sR+U=;
	h=To:Subject:From:Date:From;
	b=WYkNI45jKmqRHi/DH5Jq/Lsm/2x/VLrzJDpbGSWqyoE3xPrk3Ea/B5o2MlG8g6e9I
	 XKoq/yIxRxxg3QMm3Z3nkLc6r/UHb/HE+53x4Co8L4AEVaqzX5HYbDFg+bXO6Fhnft
	 c+2qXW1FU1ykSxqGqkl9/92BwCa0dAFQaGtiMFlHhZrVI0iLRw6eti9Zqt2hr17RmP
	 GRTfIA2CYdLNSu+yTJj8DZeiPs0KK80IIzjCB/7jt63AikzguiBQ1q/Pk9Mxf4vvoF
	 hkLX2sUUoOsWD/Ha9ZFbgI1Lp6BCNQPnekO5+W8XXj0ITZXJFnk6qLyvhy0ocN5Q+J
	 Yph1hpmLjaX2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF3C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315839358.10556.17662511275974287588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d408d4e8676e49b6246ab5d02da72e5bacee7aaa1efe9a9a94cd3b52c13988db
Date: Fri, 28 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743158393
