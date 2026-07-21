Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB5942F6F8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784618314; cv=none; b=k+riq/9SESg1i2q4pOZYh/qxmXxcBV65GyMTe7X1faGt2qC7/ww+ruJVdxBIUvz7w3nF+Ds6vTX6KmfP32Lx9bYvhele3Iwck0+B+3y4ExWVol1yjZt4qCruX0tfAipPtXMqunC9RpIbJhT4Hne5oMG0j2jNzcs+qDUT2R/Cu+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784618314; c=relaxed/simple;
	bh=I2KfT+fDXOExPH2tEpLsJbDS+if4z6pI6NCe9aJ654c=;
	h=To:Subject:From:Message-Id:Date; b=ptPxuU174fvNJUpqyO+NlOPnDvmEp3RUwl6AqVWDki9SR63FzZBttALGTbJQ6VBgbi8s8hgluh/S9UhXSa5jE0vVKbe2ayrMIvIilWj7AZc0NNsnldmiuzyrxCLPWC0Hdp27iXjkfXJUvjnTeBS+xAxp4Q59HpVIsW45XlbTL/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg8UyiN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg8UyiN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01452C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784618314;
	bh=I2KfT+fDXOExPH2tEpLsJbDS+if4z6pI6NCe9aJ654c=;
	h=To:Subject:From:Date:From;
	b=pg8UyiN72vlkEQ2tkyKPMRdyfZjJZtD3H4yKxubIPOYs1B7ZLtZhac1bHh9fsFjci
	 SPoqKzIf2IohU/Vp+/F4oS7HMYYwwzb7rj+oJo/IAlZNScpGN2+uRCTimCK50184AN
	 OMFo10s3QS7Uep1Z5wK0Fyzz4EYfPZRiiwWDJrZL/Qw+ZgY7+7imLoMLB4uBeARsFc
	 vnNls1mfm5Esnx/WFKEdvffRW7e7/8yW789c8k15O/KXH5G7aFhxPw/4yKMmmd8WGe
	 IHuQKRo/8vx+tyJCrEKaqTJs29ScpArZiBEM1k2P917w4YaFUiNDUrpAHqS4gSTO/n
	 /GOMELMrkbKAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12FDC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461831376.2317.14283251179790147166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce316a2d308bdb72234f13b74b0def42292478f46e8829fd8427d3c6318fef6e
Date: Tue, 21 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784618313
