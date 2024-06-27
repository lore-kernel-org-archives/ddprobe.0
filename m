Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CB219B590
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719527663; cv=none; b=l79HKAp+/Z5K5EZYlr3gdqYV6Nfv+9ll6MXarZIIFldHa7LWKM0J3yIroAcjgVFd0FIuac0tXHTq+bDHCJeltyaZ6eg7nnHftFK7KzYZrXkfuvg3UXeD577r975M3g45CPk33pkBjav+xM+wyv8aRSlOnXIgsy34RBrkkVK8unA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719527663; c=relaxed/simple;
	bh=AA1/ARMvdERjwHt8IdhJnltmYnmkvnxVVfBQ0W2xUiA=;
	h=To:Subject:From:Message-Id:Date; b=Y4jMtbP624iyqVjhOv1fFgfDwPaSdBL3mmbDLSEue/LKrwHG3UEF3fWVBLw+vAJFbVG7bwOzdG8ImtLtJviBAncZLXl4ia/DyQlSVyj6dz4e8a+bx+mTkUqtr34CdbBAPpo9GynGAICInCvB4eybApMBtII4NQU5v1PjdAuvCGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7GFiVA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7GFiVA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1945C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719527662;
	bh=AA1/ARMvdERjwHt8IdhJnltmYnmkvnxVVfBQ0W2xUiA=;
	h=To:Subject:From:Date:From;
	b=J7GFiVA719rGpNCw38WnCM2UCzSUzs27XsZSd8eb10FzFu220Vb/5uKFt5J90MdYL
	 4CGbd3nQpO/Cn1Iw6J9/QcIEVE6DMfFxEse2Uxfc+/hTnMBpD8NjeXNgLnocz7sz+G
	 bq7r22b3qJoq2kAZ6RgesA6N9Xy+aPhP+ntFLtyQQ5C3Ugx0PM3fekfjGt/4YGkRMj
	 mS1FKqNsCMF8kGD4RNlVKl5toorfBlqJVZsXMUqVmG9GwUPPaJGZOGTw+12Ad74N4o
	 o+uiPFGVnnBchFzDpGHFmrCr88pAIwo0DnShy0BJtjA6J9uRNHpLBfhKgJSz87/RFQ
	 J5tPByx+LKFwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1805C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952766278.21181.13009161716270327374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeacd93e2e4166ae86e81a1372407e09924f31ee5521095b7fc8a7391b577cc5
Date: Thu, 27 Jun 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719527662
