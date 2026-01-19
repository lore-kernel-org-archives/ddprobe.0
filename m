Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1E87E105
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768782235; cv=none; b=JOSo/FeQ7vDE86z6mSH0Ftd4v+ywtY83zqZvrgDa/jf1eiW1YxyGKePNRfpH4PdJO/9aeiliXiHNUu1RlBNQzMMfWldNsZF0AXtY6/wyi0qwryvcTl7KW+sIv/9Ed8gvOEtU41Wk6YFZn9otAXnW3W1si5B1eS72dwwixgSQ+1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768782235; c=relaxed/simple;
	bh=O+aVy5PmiH7XWWps6Pbqc4wETmWG8sPYYLcTQ++QyPw=;
	h=To:Subject:From:Message-Id:Date; b=qM5pP6hVx0vzRY5HVTTJuUxgFfvHtQzSMUacA8B4lanNxJtUA0dRl1JCYvopewSHlaclvUUMUkvYziJ6iUnI1KQksxRTjFYaDjWG2PnCPkviESu7a/FPCVHYX/6xX3CoquKeBMtzEYjd7gLVhMRTwcNfDQ69C8bzerK3qTiRDpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxeY1onD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxeY1onD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68ADC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768782234;
	bh=O+aVy5PmiH7XWWps6Pbqc4wETmWG8sPYYLcTQ++QyPw=;
	h=To:Subject:From:Date:From;
	b=MxeY1onDD4An0Ld9YzdKBg7utdR8e5dHf47J/y4W3m9caNXRV+SiXXDBZfSzkahHe
	 /WBtwXmLfxd6XCyqnamNQMWvSLdlJUQLNRQgCgV8CSx1/RqfbSRuJeKsHtBnl9rExP
	 m8/zf807UQTf5peQCZEchecz4WPF8i61PequoJpid+GXOQSdQ+y0QOC5vIprmOmAco
	 3OgL4yRHJYAdMlWxiZqTG9rHNeg2xh5wLBbsJXghjlU1P+nbrxgiCV34pFuEu7FF63
	 mtwJl9Sc3CkP5wMQ3EfnCz0gIH/24O3Gq7bDaZYkv6xfCNfOf0Mrpf2I4leEDBEXDf
	 NPaeOkH1D7t8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9302CC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878223358.32725.4921772850005678640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a759a478090469060723f525d711ef72b07f7c7d8e2896b60319da085222b80
Date: Mon, 19 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768782233
