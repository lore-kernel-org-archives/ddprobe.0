Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE0C2BB1D
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758522595; cv=none; b=MCg069r9q4V1ofw2NjpbglTH1Nc0q6hIqDaVzr57C0Ol6USKGmV6cJnsHIG85Enf+B7YsjaMJFE3YL4SJ2agRhG1dYDuRqoTjzGP5iK9T/6TQYnlX8/YRq4MYIAtVf1njILAzHHjbuaOB/IhFchPG2WtMcRXxL2L4AA0h089Q4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758522595; c=relaxed/simple;
	bh=aN+CFlcH575pb7X0VkVE91YxFbppkJ+ZyVBJCH8k5lM=;
	h=To:Subject:From:Message-Id:Date; b=IqC7t/771LABJMgqj+PH2yRtNnu7F/YKl9no4zrRggz1+j2/xYMCZUNkQv+jWJKnpryoAc/mgE61pDQKzOMVZywho6ztNPmmTNw0UdpjNhWXP4aT+f5tcNyGripp5Ul32um0v72yYEWKlmP5adpxHs9QT+ht3lgwMZ5JNRX2pdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ4AIep4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ4AIep4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CCBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758522593;
	bh=aN+CFlcH575pb7X0VkVE91YxFbppkJ+ZyVBJCH8k5lM=;
	h=To:Subject:From:Date:From;
	b=KQ4AIep4gChB7YN9fxZv8rfK8U/VDuqjasmo0V7yY5XNIrDIhuY3ld3DPOdhjNS/N
	 eQp6103aKbn6rEsipQQBLhu4TWrQ0enLx/jILNjKkv6+uRPIcXxadv8WO8MSJ1PjpJ
	 4HMDwXF3pW1lFE7dmiiJInnlVBbX8rV3BFjaUKoE8gcbT5MQ+a29n0PJ3ipBuXnPJQ
	 LIEiR4fhxOj+8YsUs1tb1AMmMJPtBlnrElmQzkdkw9H8G1HoQ3c/YhBydHg6Ih3hxf
	 L+44PuFXTPrZQCwA5ZgopaCAMd1necKTEBUA2Bwh7I14O4/n3is2VhNtm+4vYqcP4R
	 +ae+ekZUoBcww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDFCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852259358.1124.10479699228895466586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fab825edd8de5f92ef9d405e897c26aea7df3243361398e1afe1a15c24da3a
Date: Mon, 22 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758522593
