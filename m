Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9206F3F3287
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787339436; cv=none; b=VkEZFGCEfjr9qYrAuFGiCYVN91SAL9lb6U8AQGqtRK2g5LO3galIlwOw+JTrHsRs7jEhyXGCa8rK6Ew6jlEfxJ7/7XFEnAb5I4unQtsicmHOOSgxXGXNX2CWKyzfKsRrrmsU9f8z3c8KtT3hMktdyKlRy3TagZbwnHBXoU/ANWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787339436; c=relaxed/simple;
	bh=qIG1DP0yEndfYedAZA+LGyHhJSkdfMQnWvLCO+8LJa0=;
	h=To:Subject:From:Message-Id:Date; b=b0M17Vhvc2Gt9YcFpldzSua5AzmN6g97av/svLEvePnSVRAp0hG204ei6mTPZXqW8r0XMqXBZZphKdu/bUdAzsdQczksm/oRgCD7ph6gl+ux/6ckp0IsZgivN+D4N61coUuXOImrys7LCPLmDIclunl4EY5DvH9C7DCM1aD5Wxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpfT28TE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpfT28TE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE8EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787339434;
	bh=qIG1DP0yEndfYedAZA+LGyHhJSkdfMQnWvLCO+8LJa0=;
	h=To:Subject:From:Date:From;
	b=KpfT28TEZlPajgnUYnIZGyPDx7ZpGy8ZBpDjii/BkXXScPbFNLSHV0nkWp76eIvwD
	 LgW7v26YdRn3fxwAseAB11xJxhetJyzIV12Gwvs84IZnyRBXsyTz4CKZhQj3Yz3uoO
	 ltsLaHts3xoTrTt8IKcPyXeChjqEAIx+wMwcV4j6NiJwb8n0Wy7jvuwJfZ15VFGs3f
	 tIAOwyJNy63vcJLpF4UUXqe6+qglYPx4LcXMictrVPxGqHyyIXGNiEzjvenUE90yob
	 KQNTyMFaxiGBwTxClGZQfJg89hW6t/kSL664olZbQU2Yx4HFd7AK09rxF4za1yB3E2
	 dXHPPBqj5xipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE38FC5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733943376.27988.3598063824400514283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c6325e1492635972cc4e04cf00d2046ed0d1d72a528999f775f56bbc28c613
Date: Fri, 21 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787339433
