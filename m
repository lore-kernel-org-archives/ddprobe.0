Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59697487A5
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716655463; cv=none; b=AHRcK+LwAvs2pdIN5ZphF7xIj1q9kf8utSV1/1qfHSzvOOJ58/VcieEER7w2Rb27TxpL3KqSjm6HJLacGtWFPkh/0dZw17vq9WfPtc2iZI7uAgwLtmgqFolB0D0Ry/1JtGW75I4mKQDRFNBjmZLW4XcpGlOB8mLeIZuGMgwV9jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716655463; c=relaxed/simple;
	bh=A/IZA/tDnzCb7CNIpTNXCKdoEWDB23KfGnRV3/UzBOs=;
	h=To:Subject:From:Message-Id:Date; b=lZetCmhdsmAv4lrSmH8fN5BTxrMzpHYPFA4K9codeY39pwUBldqzpB9I2fkW24cs9B4d7RdjCCpgiOagwGBD5xIXdcMOMO7pC+XAWvdZU7guXO/0AKiCz5g9WzC+TgGGtVZotSNL3Iwvzi4Y7X8ltPB3l3nhkVQ1DjGmWJmbz28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saFO4FD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saFO4FD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4829C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716655462;
	bh=A/IZA/tDnzCb7CNIpTNXCKdoEWDB23KfGnRV3/UzBOs=;
	h=To:Subject:From:Date:From;
	b=saFO4FD/+zLQtbGzOAPz43D6ZDyMAgcUYj/mGo4sWR9uS96b75WwwSWrVu0Jr1inx
	 p0LPxDjs1uEgsxZtW1adAnjKCHzqPCVgBJbkFEewmrtO8NEKFP5/Ol6cFlwRcFx+7f
	 /NRdGHvass/W/frjwkQ2qEVHNy16He26N3kSJN/cVn25CMb2nYljziPbtdxOQdQTm2
	 04nGce8xGI51D7biw0pQb2/OzWIZLt3kCvuCwjTwWWaJwgSflACz9nM4bWxDSyUmU2
	 Rdeoae3wKt4KizKy+tYHSOd6rJSgCL6WdWtTUuZ0ayp6gwk0qaY4kBvXqeXdJg3zYb
	 LZbPs04j4pRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2CBC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665546281.23887.8557524049739319147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2cd5e8cc024816eb4ef4417ba94b3b5462a62c0898370a03ee74a0689cc38a
Date: Sat, 25 May 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716655462
