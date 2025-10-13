Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E80422AE65
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760399995; cv=none; b=KSuJ65j/JNYJs7KEn6VVLxxYTAwIiT4coVTF1oEZXuOx7dLNnHm/vuBM7R0hgCfD9XHGIJ2+ZQ/zBS/5pHkXb+EI0w7+SqzWx2w52tXyeIvL8x7PdDXTkjv1g6DZJT74TUwPbxQy/H0L9lrTU9+Htr6p/VzSZLNEQuVuXM/x/p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760399995; c=relaxed/simple;
	bh=ByQJAvVBUxAKHuZrLQJ9uC+obm15DPiCKm4MayOrlV4=;
	h=To:Subject:From:Message-Id:Date; b=I6hTvuCdfHY0iGBbpXt5QDzhWDrvQK3BhfDMMVha/6TT35th6/GvrZ1DGRjfODMu/b/SkGWXle8EN3ilf2GF6HuW2VIkHT95PCXcSFdYshpEmwQr/WKMk84wvciiHRloLUeOWmLsV672PGmJs6OPuluk86ljDrzIQA5GABvQClI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHoIPw2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHoIPw2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760399993;
	bh=ByQJAvVBUxAKHuZrLQJ9uC+obm15DPiCKm4MayOrlV4=;
	h=To:Subject:From:Date:From;
	b=mHoIPw2JuBVq3iLWvJ8h9Af8AROYgbJ03cjr8Km7fSbQlrM5iI1W4mVVjlj9SJccW
	 rwXs9mLk6bvUCdyUTSDwab5ciDrMaZEZP8RyO9bfYC2vcN9q+uWUnajky4VHub7j3F
	 VgGVT2UeDPmB4/V2eFbQmqUIZSOrLC8ckP7P2wtn7mUul09l36dIsupiEoq1JNAoyy
	 hQxciPL2d5ViHhngO5c3EW9UDtNLyd7i0hxkBDz3SCXvb/9uUNV09i5SVr1TFWicFe
	 QgOB6OgcZHC3GdTCVGu+QPdWRF2L9iZAGLV2Ogw8h3s8XwhaQZ/izAlSWKjFQhoUOk
	 LY96XInlgQyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93236CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039999358.20546.445329609341472808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5c864f0098343e6ed2ae77084abe454e5349ace97a3e5517b4bb2c873d5d18
Date: Mon, 13 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760399993
