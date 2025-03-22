Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5B91DBB2E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742643595; cv=none; b=RyMP7yoJXePiusFOOBJy3yxgYLopPXfVS24JF6rlx4u/w1S58NOYoqm8N0OfNtNEG1aTZtP9q+Nse2umh2GdakFPNNDGZOpetwBSSy9UkIFUvztkuX4wfWRha5Bk3wU4ehGaXC6CQW3AbuyZV3Uf1+bG8lBpWud+uXm1j9uwpfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742643595; c=relaxed/simple;
	bh=c63c4bgGcL3CZzRP9M4w4W34MQHhkkHJzomFaEHBc7w=;
	h=To:Subject:From:Message-Id:Date; b=b5WWg1kPmzPSjo5Xk2GuQy9DdBhbgEeqcZnL8QzaYgm6haJFfGurRL8qhYUsdSZ1GnX2WukQW/7/ZQoUuUlwkaZllfSdCGLISZDBQS8huLL34AnqH01hbSZx9QrPCAeWM65ajAxYVHppDHGXkkK1PGgso/rmQa9KemCPJ7WGOL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGx3LDYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGx3LDYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96A7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742643593;
	bh=c63c4bgGcL3CZzRP9M4w4W34MQHhkkHJzomFaEHBc7w=;
	h=To:Subject:From:Date:From;
	b=aGx3LDYxdUWLN/Bd4y8lOTqLC/R/iMBd4/OoBNslcB/JFwHgjnlHQTIFD86hgpDRH
	 0YoaCTn7g2GnLw5iQpS55bxcvGOD6jnx9wczjXePQ+xHmEO9YklXGjTvxCIGOwuEs5
	 NC9RYAz+XdSjL/bMHBjEqFr38zC/F72u7kytGkKpSWL0VKX4Qeu7bK1VhYkyUFChkP
	 Hl3kxJsX4zvF17OSAy1Mzelz9Wr3T6L2QskudBwuldXXM6tJ8qE9JZuGrlIbA19jxd
	 7WLvlWs8AChdIs4LBRxAgG5yUBLbmlPDOXBz3e1iMjfrKhJveTvQMmjQ6l0LbetF3M
	 nZvbp75QrG43w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FBC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264359369.4628.7269326011157750446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd4e7ed33383ec4d554fcfcc360def5e0fd7151243bbd6ef7a4feebc76cdb7f
Date: Sat, 22 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742643593
