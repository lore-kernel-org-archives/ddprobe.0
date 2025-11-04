Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270811A5B9D
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762216194; cv=none; b=Lu4fb5yYK5NLtrxW5zygAisOHZctbJNo85KBMp1RcV0ESwxfRDaTjOLNI032oxDLLkQXon484hOJu/PyL/jR53mcDW0sQQypzr7sVjRPw6OZdU0Z3VINf34Xvyp4J5xnw/i4zM9idHjH+Jv4eruSlPTs6Fb1H/9JKcnna6rSKgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762216194; c=relaxed/simple;
	bh=BmS8SaBdsnNYRj2wX6my6/AsLQCrLqoc26Nw9g8ARv4=;
	h=To:Subject:From:Message-Id:Date; b=tJV9kcAoSuMJ7D9+16htTNEFO3ITgBVW4pHsm2v9bpVPMPTtxnhUrL0HUVWQtpom/nonhRPYmieLXGs9mlpY/iqcdQifrCB/SznQzJsTuvcfjgHfj1ZLFZxhsD/3rf2bZrL76XU2VqmLmUHbNcsr5i4SStXY8mpV2x5GSpXppeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfLE4Flq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfLE4Flq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762216193;
	bh=BmS8SaBdsnNYRj2wX6my6/AsLQCrLqoc26Nw9g8ARv4=;
	h=To:Subject:From:Date:From;
	b=ZfLE4FlqVipXb0ZT22fIIXjg+4fs1XWvOon50eRvBUyzXXW2SfmdauQ2cULA2xUuX
	 oaOFBGg4y52p2VNceu3anDvBJIMwlLet96SHGzCYeA91PgoHy1IW3rOKcuvBIb8iZw
	 giQFKDx/r8gfapONq44FTQ2s8ytQfC/E4MHQdRtbPe1ZL3iE1g89XycYc2lKIr/Vw5
	 S4k8us8E4bYgBzuw6kxip4y2H9cC0Ib0cxOb/WHEveYU+am8rXaH2PLRxgZueK3NPW
	 1zWVPA2yGBep4vkXvVKh9Afu00uzGQ9FxHHPEgbwJ5Z7GiIHYo+DLXPb+LtFvcLL91
	 uBV3U9E+cUnzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECACCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221619358.2222.3235452642494837582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f085c12407f8a23876a0c53f1a25790ac923c84b24e3ad2e5c483dd7690ff71
Date: Tue, 04 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762216193
