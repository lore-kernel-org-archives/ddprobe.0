Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35400344D8D
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741514; cv=none; b=oQMQMqQu57qpeKKmHuo9yfnCI5iDYdDSpD0zviWPf4aE3PeOs0HgrcRTi3xP6vun3hWNFln6Uz9fx/SXB35Da1SNAmKHbrRs9PQcTF/ssDzz99hhFYGsYQexYWmNpTW6UrsbJgJsHxLixYRKee/TMFjBrJkLzdT+2pfR9o/B/RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741514; c=relaxed/simple;
	bh=gMoyAPX+gxure4QB5l+UAPbQwqGqlVCjIdHdUhSEfNo=;
	h=To:Subject:From:Message-Id:Date; b=O7919izEaZESFOY/yvUtd9xMuynGRx1Cc2yaWf6l5Ib16dXaItUh/b0XbIkMWPwMPsoZ5Qzdxt4YsQh5KJhFBKF6PGbmAio54GyBJZbPP2g+rENzW9s8qOLI/MAhhfVcEkaLyDgiL05Ia3raWaExUGfD2LPmtxGnNejo1YnJ0n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFKwsXaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFKwsXaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD98C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782741513;
	bh=gMoyAPX+gxure4QB5l+UAPbQwqGqlVCjIdHdUhSEfNo=;
	h=To:Subject:From:Date:From;
	b=JFKwsXaRJSUtPub7sB5mO6KgEzfglQ2/wJWGNEV4y02dENNVCP838GZa+79ipK8kz
	 J1XlIQo1xs3qySllCl03yc9+QzfO8WxN5TrA9FqxEsOy970/IP3fYPL7r22Fo4DOqp
	 Hcv8IUYmQSYpPq+1Rux75rrxntikuwd6DiXVyUHtUpXs7cQF63bB5q6QVTinuEzfVQ
	 IMxP6LnTiFOP0+3VZ1hSyxzhqbn6O5Vuy/RBEDVxXX16mDIPXA3BeDYswh5cqgoMLD
	 yVxfn1g6D9LOCCXK1+YHCim2a2bwL2TEKNThCt6hczM18YIC7RXXHUbrU+l/zEr7TB
	 LfGmzZAZKT7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE06C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274151370.7635.4832996202400245044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae4f3e20395d5badd0f04d65d06373756910b4eef1e7660e65a0bda8289b691
Date: Mon, 29 Jun 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782741513
