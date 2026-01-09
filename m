Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45A72EAD10
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767960833; cv=none; b=seswVi8tfro/bUlnp9Kn9EARyCyp7FEcR/kSmRlCjOXLO6dNiDEpp4MgCNWtkeQu4WWFAk22LNMz8IhnZzp45c1TnM9MEn5y//UxmuNLUKozw1X7sOBSi2hxMLDNA74A5eKLQojiilZCHJnrw579aLhUworKzc1OtDEaLiqyXB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767960833; c=relaxed/simple;
	bh=kmBr/YSo46eq+Qrf6QU6wVr8c6aEH9ftPF9Tvpo9e8U=;
	h=To:Subject:From:Message-Id:Date; b=axi1ZCNi9cOkEVsbtUD14b9oIXogVHCg4GEg8h8JWNE/hCTt2vhMKnaPwUxa0uu8pOoXiz7djD33dWqiaeO8AtDXULWwhele5PV2wk04a7NB56sZoQPX4MVlxhu7IoNsaMLlDdQjaHL/BMktnMLALfwixWBzFElC2/UO3pERF/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz4X83Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz4X83Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0805C19421
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767960833;
	bh=kmBr/YSo46eq+Qrf6QU6wVr8c6aEH9ftPF9Tvpo9e8U=;
	h=To:Subject:From:Date:From;
	b=jz4X83EaznXs+TvmPvZ/iK/Xreaua+dKJTHmKFIoKS2/nGcD1r9SLrW3kb2ji3Awa
	 oWXooWAP4Ttrk7aUBERGeHWJKENlss44og+iYVTablrfwRHkV/ZTYUHCarsmdXn6PP
	 tY0EtlT4a/4s37Gk5GSDGMvGczF7rPTR/UE/JnSs1RGUZXWeOnhIXru1atDu2f3rMN
	 zXG7s+aemv1+YyhyHoWYYWmOmYblRWXjZBmv1Am4QwjLnO33CxWm4nweXvVsyutV3V
	 XM8etwnuY0i2xlE3e+byGQUDP3GZXpJFcXKrQWDVJhwmAKSQSFeTIQpFcYDuMUIB+A
	 7pIDPYGzDFhDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93642D185DC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796083358.26667.5227730631886406720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ff638bdc856add3f49b0c101786953bcccd62cae9ad68a6f01246e5a4e41dd
Date: Fri, 09 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767960833
