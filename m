Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8F5242D9E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757692194; cv=none; b=fVmbY6+ar4E1weaRFhvt6XGJI2gk2sgxbHRLiZpFSkAxA2XxpSosjQNUAyyOUUF/D67shqIjhHRr64X8b3I+BKDDZHn+7/pcOPJvO2LJm+4woPljpZlfgY1yR+Knw0vNtuuZ+qq16+Np/+mXqaI+ypu/IDmN7XJpkt11KOCujRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757692194; c=relaxed/simple;
	bh=gP1nX8YH6FLzQSOE7R+vVtvKSPUoBrnwdpR5b/guR8o=;
	h=To:Subject:From:Message-Id:Date; b=GavjXfZIzvClDZ7/pdPNkQOwpVbuuShTiIfLSni95CISvULFZb9PVcZYFIIMH0jDrgNVE584UQthVgHOEjng2AzwjChiRq+YryK3KkVq3rPwb3cDFkk6CZH+F7D3wsmePEvDMNvZbpGCelG6VePKmzYTm+65tm0R9npcA92/T4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfxNImgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfxNImgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB4EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757692193;
	bh=gP1nX8YH6FLzQSOE7R+vVtvKSPUoBrnwdpR5b/guR8o=;
	h=To:Subject:From:Date:From;
	b=mfxNImgYuGbFSY8PzgK019uQz5SGNMOV/DKx7nlb9mDCErJK2xeIeWQacQ/Bjb5Io
	 XFzXpFIQCPVgqx0asmFK9Z7BkcrFxI+tTHX5x+/sN2RaOCXzDby2Opeg9ICwJW9Luu
	 lwt7MjgPdF0JGG2uIVrKaQc3NjUB/gXZ7sB1NPW0P48wuVRtx0GlGAUxw0Urwcm1jq
	 zfle2AMOvZS1h0vZJrRRLG8XtI+PzqhVqjJcolED24MPrPiphrN0yWbnFZwpbRnPhc
	 wMkhL9XEK1zLAH67ichAaApXILyO3VJfRtvYNNrMAum9hFigW+jUlHRy8lhZhKBxCq
	 D20fOji6xuWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73ACA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769219358.29979.496943871311652914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a65c6f9cf379b3ed6d36247f1a776776f82101aee73f10e19cdb8c10d9397d
Date: Fri, 12 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757692193
