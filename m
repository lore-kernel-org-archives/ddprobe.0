Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB7A308F26
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787879434; cv=none; b=Rje14omCYR9WWGZUOyDfU3HskEWMcsbHPRVu52wH3Yw2Ot1P7tzDgALWllaPhL3X05q6CETsoiryn6wKQrTaP6i+0yV6yThbMkNPNN9WSkMVQ7VasH5i7kJ8XsDWMifEypOCllvLXF8f7JOk0Rt2QzlAGxdHIeZ2AJy3XPNW7F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787879434; c=relaxed/simple;
	bh=1K4YQ6rcKzMIqIkeln1EckHX+E9sH1RfurrwWuHwSxw=;
	h=To:Subject:From:Message-Id:Date; b=DJeSHzy/YIbWaAytMPeqr1jcDIBm+3K1Yo9EcZ3wTxna0Fo8RI8Wh/dCFEg//s39zqmowZFuL+E7bUE7MXc1RjrVS2SFQu9f7GUBZ9574vU+rQrrBljHzHI7Bbw23fcBaeGe03/lafcNpY/JG9o0proyhKmZB9lZmOjyIw+S9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WD06FjmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WD06FjmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB814C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787879433;
	bh=1K4YQ6rcKzMIqIkeln1EckHX+E9sH1RfurrwWuHwSxw=;
	h=To:Subject:From:Date:From;
	b=WD06FjmHwS6MsGlINzIc/3oNE9PC2nkJ0LzSrajBEhOEKqOHbRfOGBt2ntkWKMUKP
	 zbkcNP51wyVYaVYkBXD6FuR9K/PRECdKVB7hQsodKQiyPKzdDMuLnLAQwOyiQX7SAB
	 c/Kaw6e4gxDCWEJ8sjNcS4aHSyr3b/lRhuvpPVL7fJI2HPp48+we8lDBs97GbE85Bk
	 ubDSNuppxs3zoR8GEWJUSSHRbagvDhSLElHE1JFGbl4M1VPV9HA4OgrwkGLnBBQioB
	 Ux26KHvMSjEMxtKcMNGVmvaXsQGNE2K6iYkh7QIipLlkBgXWEcpuumawjxmqJ9fKJ9
	 RmHULXhkGomPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B162BC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787943369.29155.5110910994347577802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c5cb7d91f5fc3bbd4d06708256a29c62ce2a2fcfd4289f0db4403cce76b874
Date: Fri, 28 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787879433
