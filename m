Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6359A376
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738813554; cv=none; b=urTAfakeeNejzztTw0h/AA3Ag8wKL7rSeYvxzWsaCTdkYN/4Nrq+NgQxU7Up1pmJS9aQ3bPHNuuKUO/2dlmbvKvi5e9c+CFxSVUUkYTMyyIW3+aIuDmM/1riV6i4KBoFmeffXqoE9YmOL0WZYWV/aZ9CuXRWQM2GtBvpaX/6ACA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738813554; c=relaxed/simple;
	bh=n1PopY0ym5ZTy6gLaPbWUTbKUGta60Hp76qFJwSCFVc=;
	h=To:Subject:From:Message-Id:Date; b=u+clWAKgkWK35qFzGkW61iI1eEudBSGN2v88LfksvET5pa/pl4Otb+Rv4tXOJt4oTwnv71JRfjZax3iBjwna/FtmRBjf5vCduBLOI2A4rVyMKDdK4TQqqSJkqqu50XHqjcrZUftdhDtXzWipUtq/2MG2qeXPprKz8ptqUyZ6yxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0wB/HrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0wB/HrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1708C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738813553;
	bh=n1PopY0ym5ZTy6gLaPbWUTbKUGta60Hp76qFJwSCFVc=;
	h=To:Subject:From:Date:From;
	b=a0wB/HrOuw6Pduj3N7A+DHOFsIySoIex/H3Lz2RYbGGqnPf+38luBIPqTAiT6fQaa
	 mHOI9VJGZ2X36WeiSd0ALoPcrr090d/bEyFo/1x8OkutGGyhzlayHbxY5yEwsQ2D/s
	 Ij3dUmGgh67QCChLuLUvO8q57aZYxNxd3qOjAalzPz/+LF3g2XeNfYmY0/tCsyICQW
	 A9pmzuYjS7XZOCvgTZwlXGsgUsavzzV24obkHJaA2ZOKaKVpjPZayNqxpC1h8ecgx5
	 Szhkl4ZMfjg/oKPRpS9FcL5ZnivKFf4b0802Ck/Mb5Y+bbIyDcX/nXL2yDl7F8uhCJ
	 cc3sSZgTsyRpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6428C02198
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881355364.2983.795278272600323608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62703281c69139cdc856723a165e6ceacb7d683f22ea80263c6b9aaeb0fd71c1
Date: Thu, 06 Feb 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738813553
