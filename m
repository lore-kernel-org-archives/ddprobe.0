Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5AB4A3F04
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788531634; cv=none; b=UQI21NNh4OdCsKLG7hZ33D3Oq7YU01ihXE7GxfBwhVo12vYJbjdS3bxpLQ740qGZzKaoO/LG+dlR4m9RcKayrH/NDai4wnk8Co2muZGWFbEYtxedRoU22l4OkI2YLm/TppLdHmmJTqkNoyJ279epLDMEX+4wZr712Hfb4qdJIl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788531634; c=relaxed/simple;
	bh=/+YrZhQDPggDCuoo6muPaLR93WGIkpZ53X0w4dEYJ8Q=;
	h=To:Subject:From:Message-Id:Date; b=faCgomtoctJIn1JWHmXaFkzwj598EoSzOmaXz1a4C9MvpPMadVzEL1D6uXd2OxV99LXGLLVlPbLGDFdvuO8jA/nsD3XFLVLM20tcT8Vsc8sMMnTWJ4zDn53Ta4NM/gnOfqD1CghwxLf+EJMjRZhorhv77u1AwG6E2eqhtPfeKS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcwbCCgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcwbCCgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97E6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788531633;
	bh=/+YrZhQDPggDCuoo6muPaLR93WGIkpZ53X0w4dEYJ8Q=;
	h=To:Subject:From:Date:From;
	b=FcwbCCgFPn6DQTN0d8GZQ7LWQt9Bma5osgdWwRQQlCI9hbR4O/ulMpCH+DNN3Gwy1
	 7iVOQJ9vId8B/9NxcaKx2D2o+nMkji0JmTYeYmm4x2P2dT/MwuJK4leXFcsI9DEw4C
	 +kkZETmCwIxUZ+6I63DfgLClajGovVzjvBmtypofpH9KJrsVt6u0vlmj/EUTgLa81N
	 gk+XNex7RKQgoMoDGVNacY476UIRUK7Hz5RauCW7rMmKntUxJRLDOjKzjFGm6kd69R
	 DdcARM8Djk5AoKOHI/bLs3APeOR/iFssa6z/QEu7NWl9KRW/5r3POHKCDwSLnk0dxA
	 1UwSYksJVIy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FA2C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853163369.3857.4760805116016058681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c8e7851a23bbe07c1cd967e58b95f397defcec1964c89c175f161e4f7c1af2
Date: Fri, 04 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788531633
