Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3693F2E7623
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783841914; cv=none; b=ukmVVtzJRJknUpcUd5QAAs9bHtqpvD/hs5h0+29sQ784D6IErEyML1X9xSeC3pXLfMzz5cvuTFsF16ayega88+rbLtwNWMxZk7kVBjlvEJc+t0EoWrXN0wcJucvsdPW+2+K0tchFsc4onZqQRlBJfYVAvsNRbMWohr5zOvR5ky8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783841914; c=relaxed/simple;
	bh=sYpAvS3HW3OvUwz7NxJNSt9774OGPFt8bZ7vFKc8Z0A=;
	h=To:Subject:From:Message-Id:Date; b=ALZAiOVdrROmSMLiB0Ayy3xSu2VlVxi4s2wQRpQQfEm2saDm0qU/WueDw+Rw5G9EL7HlGOsQq9wvKC2z8RHiv0GyXzQEdPanmvJXfqilBsHn0x7irvZ978MWPFceyLaflFf5VtiDznw39rRuFs2cOSupI1urTM/HOlFLXDtkVLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4dWO515; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4dWO515"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE82C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783841913;
	bh=sYpAvS3HW3OvUwz7NxJNSt9774OGPFt8bZ7vFKc8Z0A=;
	h=To:Subject:From:Date:From;
	b=G4dWO515Vz3c/d18+YDkd/lCeKFqmpG8nZSfaU3Ap8GS52Z51h8Mnb/CAlcTfWeN7
	 v8YPAJUiuwNMIBjflju5H0lackwT2XJevYLNZDhGd7YWWZ16tbE+3t5lDg29qAIRrD
	 NWGkxxsjxpAfXcGcaaBgKcLwZfikPCMPl9JuR//QH2TIz2B7SAHsoldiKvKAzdDd3E
	 60T02yEwyChbzVUQkmd5oMRH7+czEUyY6aeecYUqB2Cxuk+SaZG4e9+S1pANq/rhNA
	 NsDXvgMYpeVAYH+kqRlLjMUVpeSm53oTlWdFsTE6m80/3l/d6oRH+rSCQarfuAF5AU
	 LNYKSr46Z9YnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD744C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384191368.4165.11461942550822883461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07efaf1c4d151c93e19a6c627c0daf9cdef4b9565a113dbc465169157e68a564
Date: Sun, 12 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783841913
