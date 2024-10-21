Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381AF19883C
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729520154; cv=none; b=JINt9xerXev93czdP0YcJe33EdzU5KCG9wCWsJPZRgK3IPDNvGIqQUpPlUcW3QmgAQZV0WqmkTNBjLa5Jt9y0W1Evdm9KlbK4nVNNf8RXdLVTAWQ1uCuSxVPzoZAgAST+gcgZJSGdSv20MseZr7Vnt/la0ISEDkcVt9aSoV97X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729520154; c=relaxed/simple;
	bh=cqKAzI3YYSSkRXE6HD/fZ20xtLeO1PzMSS/9v3XT0Vs=;
	h=To:Subject:From:Message-Id:Date; b=Vpoli1cAmP64td/eLUeK8PLsVFWbCVv4X7+HV0lRH9EKMTnQ2uZGXGJ9+ypzat61Lh0J3pwjfnd/xM0o5Fij+KWmdbCoYLhtR5REbvpJeAhMeWVQcH4C4wHlfxHwKPTtxJq2fqwzsZDdXwu3kxYgTuxU7kf8BSASZdpuT1QFl+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNWAfsoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNWAfsoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2498C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729520153;
	bh=cqKAzI3YYSSkRXE6HD/fZ20xtLeO1PzMSS/9v3XT0Vs=;
	h=To:Subject:From:Date:From;
	b=XNWAfsoHObza7WI/s1w3HF5r3PRrsVTB7TihObRd0eogy5zgTVi+37/VJDuZDamOn
	 8X/nkty73zAZLmqZeuSHqmlTFbUscmaydPFYK1PGZ4PxGXYi6FfL8PloyMpM3SwtE5
	 LcJ/jxcQ4eJCgLtyCgcSHqRfA5KnDysHrWhdokOzH+tVDIgz1QjIFxqAyCT5Fi2iM0
	 AcQvX1GlKd9ag2BObiGvrcIpDiI64PVBp49CTMDnxfAs+u168G+RS0MaNIfioIrqM8
	 bLDkzOumg0rM2+pSjN0pkGvnBYVlf/zcE3Zlm5E0MZTgE08/h4DRHln6LnPAnQTh+p
	 0Xmh1T4cAIzvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9729ED15D96
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172952015360.762.4319026982594007720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044d0823016ebe1071b10b7142e825079f5aa4a3462bf44eee855b4adc888902
Date: Mon, 21 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729520153
