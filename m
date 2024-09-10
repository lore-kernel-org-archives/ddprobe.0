Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B7C1A2C00
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 17:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725988554; cv=none; b=ET9hAs6DCVlFbSULw8IL2R4lxu7SrndTbF7j6HMeVvROA41lEMStPV/DqZs7pDxWvWDWH89Y0IVBzhvO/wQ/AbQ3nXXpS7HWefN6FO4MtXF9pSINQp06hjWlw1ygU5M3L7bk+lJpHKjNn7k2xtbm/GQYpJs2O1XD8vEO+RxEnPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725988554; c=relaxed/simple;
	bh=lrpVx9PpDzGMZ0VotjdzCDRoS8FvIb8evJwZy0Kqy8M=;
	h=To:Subject:From:Message-Id:Date; b=VS4M4jP3Xl+6PKY3YO6dm53FFsYnhadg5g3U2hE2GuFD2L6/uCog5AbJ/8EcIzirlg1GficjHfW/+yOfl8SCD2Qf+/ezebBy6+wuzo37lyQbAuaXj2TptvoeeBjb5LmKXi57WswiQdC1zA1pk/cuSqStl+kkh0zRpcoqw/2nuq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuybmsPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuybmsPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 078D1C4CED5
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725988554;
	bh=lrpVx9PpDzGMZ0VotjdzCDRoS8FvIb8evJwZy0Kqy8M=;
	h=To:Subject:From:Date:From;
	b=iuybmsPxl/ZxcqQhtgi2pS2An7BRwvB7KXSgfEmbDGLN23rJ2upK+RDDb+4s7J1FH
	 o5lx7/lsOyuwZpcW+GLfXMw6+cYMlzUBOxDDEtPBXFSeLf2ih5+ZEM38aNgfcpDrPF
	 mcw3b5/vTtL9JBEcCsO1lajubKyYhI6dbbEeVF+vVAf/w1lsGLAU0svrgn+0Jrsf9W
	 mZYTdQ633LbU+JalmrRQSSW/jffcuq3xGeJAtyOcw+WgNIx3J4eRVh9yA614Y7x+3P
	 BbC/oiMKvJFPuENqj0dxS4koQ7MR5A8W5I+bOyl3ObVzSJhFxoS6s77qtNlb/qKzGb
	 86R1oy1Zqq4PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F101EDE9AB
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172598855363.32397.333050753495726463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d93e7538ffdae35f79d012eee2a3a43312ce9c8059542ba40a58d6be12ef4b
Date: Tue, 10 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725988553
