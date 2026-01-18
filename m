Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0743C23EAB7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768765434; cv=none; b=bEyNylPbbEwL6kedEwSxeDOmFtIQlOm955mR5Xki8elJQXohmBl+M4W2CuMowQr2pxhHD0LuMZ1zFeBn83NNXagyMamY6t+7krK86V89Cqg36cZwisF1GArWJNh0FqWc/XNap4B4xq6tY53Z+FCHH+z4Yrxi2be91oXwsn2EXKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768765434; c=relaxed/simple;
	bh=6qAx6I+in7E14GQ4rJOH0gkVGKmCzzR5AElAiwajLa8=;
	h=To:Subject:From:Message-Id:Date; b=aLmcJA899ga7QU+wA/MZ3nNcMpxfV1zLLnQikFHG6vuIM6QOGliRliLHCnkRoWf7n3glS43Sn+QXZbGGPGo0pmWyhFSWg2IAJ/DHxLotRpuicOaXFx3nhFw+wNyxqjbBt1/0DGdVSwU7hn2gBHt23DNUCReG+vGAPkc9fj3cnzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go4CmOC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go4CmOC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1939C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768765433;
	bh=6qAx6I+in7E14GQ4rJOH0gkVGKmCzzR5AElAiwajLa8=;
	h=To:Subject:From:Date:From;
	b=Go4CmOC/GFq0E581H/RVas7yekxHsYh0bz6ztsNtHzQn2wOx/VT7nwKWeFzgh/KG4
	 2cjXhi+cRfyDQDtMP8CkW7PY2KLOgKHt/trZUTUrn5eXemIKpmgsFYV4a+C62KbXG8
	 5Zz0TrPG4+MXiFGcujb3FnUU60SI1QUzNX6drosnIuG5LyNCzTcXjEEaASIy3QFiMZ
	 mgTwKhel+wMmdlP3DfgvAsRwgrRz6EN22vw5tlsyE+Aqk3XcXfxDB7HqsnJ9ZBcA6R
	 OFyhr27Wrt085ggkUomvgZn48qod8EsQ9tn7DGHM5pRx+4SJz0GilSojn8kRQqyyiw
	 UuniHSi22qnuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF14C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876543358.25880.17059137329572948589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a1de55d6dbfb10a8cf271ba809c84b06712eb56c2f2f3a88641b701d020b38
Date: Sun, 18 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768765433
