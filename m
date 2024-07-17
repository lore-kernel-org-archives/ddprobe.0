Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560BA812
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721192723; cv=none; b=g9+njf+Ryd92wimpwmcjWsyoa/TjR81XqRNZPiRxtXYMMdQIw6uGbgzkw53fw31q8HeMGauNT7g4NJkt1WQDU914wEcVri5TH4ZSMjV/vyixhwTzCJT8EdY4Yn/Iu4y76g/XfjZRLetZEk1TJj4TrFsCqGa3SHmltM8ZEYm+YNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721192723; c=relaxed/simple;
	bh=CJvsxqFN5nJvT7Qi3dK9f22tZnCUNkVlo4REjwlpKHU=;
	h=To:Subject:From:Message-Id:Date; b=Sk5Qtau2jqUBeaHV68QIN+AcWgbfxaw4s4MXVgxzvrNWFc3jgPEblfKAlKfChoHzIXH31MQNmaRfK5GoAmYYIVU/JKDDUWBRq1OLHwhAoU9HrB419vwaSTC5dM3xPuULYFzI7AQDjJbAvXiHEhXXpSxBoDke2UcVmWAIYm0iHf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa6h0y3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa6h0y3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CD5C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721192722;
	bh=CJvsxqFN5nJvT7Qi3dK9f22tZnCUNkVlo4REjwlpKHU=;
	h=To:Subject:From:Date:From;
	b=qa6h0y3lVH2RkhWrVKBCQRmGbDNvEGT5rLODV3FPtL4rF1PheWDleakhmgD0Oo3fx
	 zeLZ5pWZbt5Xz0zQ9pKUknRZBq74Hw7pMgsCtqPf/c4li56Y9Qe402bsMej+zWL5e1
	 mbPqQc2CUd3Sbc+BwDlMcb6VdpUnHXEvy+M4A3ifMoWRvekrLqckLW9upcJPuUNwwq
	 FC5TuLS0WkwveUinr9iXJ1AYCSYlx6qrPdGnvEbkv9wUzn7z0zC1jv0X6qfg+FCRlq
	 Qs1yynclr0wc8Bey0RBAaKt9bW3Heban86qRKgjqTfK2hHjeXPy1jcyMgoZhn9KuLi
	 wPJfqsNEhsqGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC288C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119272282.20647.13896458879349133768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0c74c1517d32c5117ee16afeec882b64afac98700de3c3c469762c53309a24
Date: Wed, 17 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721192722
