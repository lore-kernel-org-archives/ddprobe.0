Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DEE2165EA
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786839634; cv=none; b=tw6e/daKKENegxl/7NQr2piWo7NFpsQ2Y5GYPCQlOtpFVdoC5I9PBjLZDAsi92dj8IMsuGeL3CVTEFpAbRIAwpHP13aDN479mGfVZvnRgQEMm8KegSy9hHhPRTI6lD4cyjhn9gdZdFPcVW99wOqfh/7usKs2zQRyZQnBekI2AAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786839634; c=relaxed/simple;
	bh=N0Mi6GLgBUhoelri8/D73sSYpLel09oF6PrR90UeZ3A=;
	h=To:Subject:From:Message-Id:Date; b=JsZeZSGjiw2fRqNO5hhja8igl/2riTrvgZ8E5tZ6wduixvA1cezFddwhgdY+9fNMMLXTHWsKvldUXA5ewKmXrv5/J5XfrcIeyl5xeQLRnBiFy5gz5ugY74nV0kx5W7AqwOn1mFyVUsRdvpfLoeSXDe/EHCcCRkwwY7rUEtdxoas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFvDJeP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFvDJeP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D603BC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786839633;
	bh=N0Mi6GLgBUhoelri8/D73sSYpLel09oF6PrR90UeZ3A=;
	h=To:Subject:From:Date:From;
	b=qFvDJeP5gqzXJt/ShMpvWq7YDfc8kQ8Us1Zjtw8Eo+8e+m+hVRMdvbbpJWgAoGkoP
	 aoeTRLZr10AIUyA93a6Vb66mUXakZFX+SKVkELtBUp5szwjbtf066VIeLJaUe24Hda
	 HrQj+XYk6z4w3xUsvNolNIi11LX1I79oOR7c3XRThRqZTspkSVAcKZsS+h1KG665uD
	 j3Xl9rYLrcu2fxc++XGI3Tl9e2ydNoajUUkpUV0qAUCfh0+Xbfnu7sRxpZ3Xx7dYMR
	 EAQamlWNC0ZCtlQ+nRtRuEBG5mnW/iatXmyM1p4jZyGU2fBVHjo5u6E/GEx0c4jVLp
	 FDSBQuLLhFSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11A5C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683963369.14476.5463014375953982344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07512e1b70a697f195d7998a58f10e4e35d44c7b017041281ff2633f32c1bb12
Date: Sun, 16 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786839633
