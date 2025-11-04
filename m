Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7E2D0C79
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762234794; cv=none; b=QRW/V3DtjSup5wK8joy0cArwEbZO+Yo/rnaMy9HuYbQYdu92ogidbsdyXl1P9CfmTvcECdJsthzdaCQAmfNyZVWow6/kHnTaqg7KcVV0E0IlfanW681hJXSL3FGUBH9AJaIi8MtvamlHqY1C4+urOurvATkYRvgJjb94WEYBV+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762234794; c=relaxed/simple;
	bh=RVx6lIsP47edcYbV2re7kVPokTZGXcBIqgjOMBfv7yA=;
	h=To:Subject:From:Message-Id:Date; b=SubWcMFp5TYNadUSvRkQ9LK4j/O+Vmhpj39qGba9tdVpfzyYLwR8b+RZbQy0Np/URMcda1KCCeMbXweGThHTaaOnKiCAEoA8KR3UzMuWKuzMQAJI07o1vjRGubqnVAyTYLf1UfJZQ6O3KBVuz6Q42/Dejn9OvRkb9+wQziJV4rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttDVJ694; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttDVJ694"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AFFC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762234793;
	bh=RVx6lIsP47edcYbV2re7kVPokTZGXcBIqgjOMBfv7yA=;
	h=To:Subject:From:Date:From;
	b=ttDVJ694Rlp+wEgBAv0XGL5r5XLt5sYAORiaEvf72ClE034qkss394IKdSAm3hDE1
	 tVoUwdD04OQsa/PXAVilvNGv2HMTsVk9fbo3GhT+QWcp9EGlkMIlTdn+eJSM4+oCoy
	 z1dRXCEC9vaw0MF9AK4IP9zJ7sr/288vXcziWqMnzuXCOrtV7ZNWDby3IPDYX+EE3X
	 7PPYAuh9MYC0Zu/Vgee6kTOwMKkKDIa1gCiXT7MKhfhkZYXiuwhVynG9wz0gNb78nL
	 F6ETnTy9RYaiHyWs4zT4VJvU1Kp8mowqpK0RZgboupig62BOfNdiLGLZOdQ4G4iCEg
	 E1fK53fzVLMcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983F9CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223479358.30773.18276746771678117447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acfc26f05d90956c4e61def45c1e5a1f203bd4889a9c1b05263affea410d3a9
Date: Tue, 04 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762234793
