Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28829233D9E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776507454; cv=none; b=a3RbwQkCnbdvXLlbjIJ/qzDRE4c+uVERszoO4s5rbVpZ0Vi3OL9xhdpSQCd2a7x1/QrPKzJ5vVrOpM5t8RQtxaWUR7AtboeioeNRJx7xIRJNBMQTxPuiCTdrwdJqD0SVfBMjjnbTUtmsLpefAtfbihTXpSls7oIvOCOv8ye4lRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776507454; c=relaxed/simple;
	bh=zmxsUDCaGCXPNbIku77/vGokrWAPgEVD4sUjNLhY+o4=;
	h=To:Subject:From:Message-Id:Date; b=GIOsbJreCiwGJkK8pbXhvqRRM8z+E1niG5eqQOOClhOwIdjExkwHAJ0xwygqv89iRnZ/LezWw1fq8DRJWJMsaQGoPpjL/R4LwIsMs5ZimIXdOB2/LBWGgx6t9Wz0s2Fl5QsZ4IYRo5DsfiQbHfhoHbTqQMsfu8p9Z7MuPsoRXE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edegr77g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edegr77g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD07C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776507453;
	bh=zmxsUDCaGCXPNbIku77/vGokrWAPgEVD4sUjNLhY+o4=;
	h=To:Subject:From:Date:From;
	b=edegr77guuAwSPykSncChL5ezsu2/wX5xJ65g9i5TnrUZRDF4miu/0p9i6/56DZtc
	 UFhr37Lbs+2mjf0pY58LVz7jgVVsISP2tCdYwXjHrWM2JgL+vN3enyzYr5NeXuo8hi
	 Pdy7p3ut9VFBXsvUSmkKH0mdfs8E0S54zwcKrdQpTxeDlPGvDU4fa8qeO60s/qBx6/
	 UWZ6I8kXoigoh5Gxnv/D28uX76oH/jvi2VHQUP/7zMjbXkMT5W7pl92ZOVM1vdvHGt
	 N/QQNe9d29Hi7NxjIFXWvF2R9W5umj4nbSACpCJNU8vtqI8qmBOtWJWzUwEy9dKuvK
	 P4S2OVLcb0wMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF6AF99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650745368.29746.17027214550498267485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e8f5e7af66ca8e471351ed0af3d75450c5fcdf9c2abc40a7791320dcf45530
Date: Sat, 18 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776507453
