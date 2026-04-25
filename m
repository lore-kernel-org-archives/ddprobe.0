Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB12239185E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777159653; cv=none; b=rLh2mscBvakEptMZVq/ohvFWzTS4zMNTgWmdjOmsOmiLl5pBLx04ZitDRuvY4ta5fz1iyFigviThX+5IdCdV7tX54CjGYxf3Xx2Z0BxHmqsOc649iUSrsBemjEoeI7FCTJk35vseJ+rHPlOMw93gGpD6gT+uvso7t7AsOJF6LlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777159653; c=relaxed/simple;
	bh=tiupub8iq06PPmcnyOlSZQKkN4kxAuu9tpnbAVDfaXw=;
	h=To:Subject:From:Message-Id:Date; b=Pwc3r/xvevdWxz5+v9wrMW619jIx0+JBPWin1s74kRcgd2c10jB/ZgBheCn6vdpzDBYg7qx1hFdQdDDM4dUvtTtw0cgBww14fs7IO7ADH1+a6AwX/QQ3S+d4/y1rm+E6mKcYnWFHpZ4Rs0eRYENZ3zhiGXOaHnR05dD7WhsMtxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDDxZade; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDDxZade"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD22CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777159653;
	bh=tiupub8iq06PPmcnyOlSZQKkN4kxAuu9tpnbAVDfaXw=;
	h=To:Subject:From:Date:From;
	b=dDDxZadeJn2HdmAsTrk9a18DquTa1q3ewjtOxYVaOtfsHc71s9mZBkJ9GSHjm+7lf
	 qLNd94mLTBCA+MYfwp13aWkacYULxtq14FcJ8lnI9DPyMPIK6zd9fBcCc0M3CQQ+1j
	 uTh3HgTD56LAAEh0RBNnRSGiQcvkg94DrgxiVabJUxX04n0DbF460LNune0veGUXvm
	 siIMwc9NOqNnpR/lprfQ+IxRmYyyz7d6PExzqiwF8yG+eNwjeYQOuO/BJl0DrOBq8q
	 VWTgL2Sdqx5jbteDLbfPOL9tP7oM/rFgSqlxIpIOT09BI3ujRI4fC1x1KV09810vUR
	 KKhLNvVYVE1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7ACFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715965368.5074.5307543825901419402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c5ab258181cd1a704800872f598bcf8cdf01e83f93ec4f9f6eb5abcb2c7c3d
Date: Sat, 25 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777159653
