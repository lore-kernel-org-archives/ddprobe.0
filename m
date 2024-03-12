Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DA627456
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710287297; cv=none; b=l0cNr5AqALQfG2AdDlBqxJ8+vj0D+9VPfktq0p74dgaerWfXQzcHgKye1HLXFGrpDiPVwabPHMwwJAgSpi1kvJoxA/bM9Btd5EKAD1xuuwLnEUJMNWJfAOp5vxRWblSv1Uy/6bxOpE4p1iWUsBigc2wirnI9Q4OzYhGHU2XMCaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710287297; c=relaxed/simple;
	bh=haG4jGJdNytD7geyOxnIWI9A+bO3K+mDhQe0ZfuceI8=;
	h=To:Subject:From:Message-Id:Date; b=K4GTdc9Cp6xq2L7cyun2FwYpEPA7U9qPo84A5bRWM8sBIIebApW9iICV2aCoqiJbzuIjoLrsJwqwxvYPmwdnjlv+KgM0XAV5e3Ui4jYzRcLW5+i29ZEFdgOURUM32+I5c2GXQNZxabBcsSoD8Osuo0odq8kVV/QWwLFnTblBlWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/NAQ+o0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/NAQ+o0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7687DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710287296;
	bh=haG4jGJdNytD7geyOxnIWI9A+bO3K+mDhQe0ZfuceI8=;
	h=To:Subject:From:Date:From;
	b=c/NAQ+o0jYcz3246Fiw2YYoL20PLZydIFeH57SLarQF/N+6avRLQS/q4NVCuDPG/T
	 QpcEsLINN5N01LldWo0K3OiTOxOgRWhcm2u4+qJGgaFUZ63wuGGTviX43VCqY0S6bZ
	 4oBmkEnWvxFRGzbsTRvlIFTG55FeZwGIre6Dni4BCO9E+l0g2P3YXGVW+qSy+DMRsB
	 ZZbINhYw/Bz+mttTgjrnPoUMz/J11N3w975WvhYGPAw9mG3cMGq7CnFmCarGfFqvF0
	 YHFmwCZmBDRQCAsdgRYuw/DgNrwZ9DQV+IONfVLs347BJx/mpP/rc52GcyweHyZTMm
	 a3ViSQLd4xT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B99FC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171028729636.1283.13820229062857471444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c3d781ee2c9aa22815b51336602c6f7f0cb7f95544f42340745e88c9326fcf
Date: Tue, 12 Mar 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710287296
