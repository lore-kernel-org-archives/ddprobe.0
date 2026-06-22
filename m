Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4199C25A645
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782155794; cv=none; b=IFWsa5gCIKe7OPPjyWAUUCUJe21B5Jd1f61uBzGXuibv11R4/7DSNEUKPVqvAciip3czOysBwnErrZY3XnpBrCkMVTB/FBI8ssLu+a4xM0OXNr/LMgeBXiaR4GsC0gZeJ/E2eCf19OlWPgnqvPUpccTnjj4ZoE3SlG9xafrnV+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782155794; c=relaxed/simple;
	bh=Hkzs6qiG8RTPMSYo0H0+RwuiIPUQKoV+AHHDS4WgHtY=;
	h=To:Subject:From:Message-Id:Date; b=OgQWXi3f2CLC4x8LI2UlVW0JoPWPisbPbLHLkzchDza2QmjERU4xPeq8UpjvVfej2vAISldhh2ld7VCbSblvhOkmw1ZIjGtQ9CUpWXe7W3K35qFe9dEfGcklt2A0UwiD/561mFi3gVotYNNt+FURevkCF/MGh64bd1OC33kBOFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atsmfurr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atsmfurr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C200DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782155793;
	bh=Hkzs6qiG8RTPMSYo0H0+RwuiIPUQKoV+AHHDS4WgHtY=;
	h=To:Subject:From:Date:From;
	b=atsmfurruzKO6HloUgoHK64ctcOFivDEBO6dsTMe7RYXOeR/DAyIs/rWOkGte9jgx
	 v2lvGjgwI6DJi6SMBa3Evprq8Z3/jszRfT1JzQOxpevJ7xpSr/BYZOukpx3jfNBPk+
	 qeqb1mxs6xCoLBHZnZ8CPVq1PM5saVDYFvUDPYDauXIHps/ITG+qjVTokZ6Z0U1wKP
	 UzcVu3vx7Ns5MrBl4cXmRL53xzF0y25jvEOyKV0+nTIUCPgO3Imwf023uZNsptAuTX
	 sAxSNPSvJd9QI1qdft7gRsb/Zv2NpT/bl+Hp/SB8cr7tD7JH/2U+X8SyHO+hyCnMVJ
	 PNf8l/8VtLc+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD2FCDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215579370.10061.7572780682750342385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85c8c513f48c415908d3e405d928311c845a9e1927a9334e65f86008ab2c269
Date: Mon, 22 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782155793
