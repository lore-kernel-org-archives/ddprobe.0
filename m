Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB521822D3
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719158543; cv=none; b=NVuWWkDmnDmg5x9J4Q8Sa1DvnmrW7E9Q+TpnwYjExqDD6rlblboi8dtLalBjmF5x/qzXw16pTEwuI4wqGEdkV7Mkxhe+jOTblqbYBDjwvKP/cFznjaf++U9lkrABi/UaVX9OD/Jn23HrDHdBHHfRBp2U+bjwqP8cPKrKLDJzWZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719158543; c=relaxed/simple;
	bh=aUhrj/LvMXdNGvZO0nXPjGoYfS7/ommeNmln1UPSchU=;
	h=To:Subject:From:Message-Id:Date; b=um06VRlBInlAILdpWGlZcxObp79vNGc5ETJYgmDbqGta0Z5+GlkpkIdihBnEH1y5zFBKPPIhMH+9oVfcNAP8Gk2hbEzztWK2VM9i/7zQmzfDuDWo8H4gcsjtYHf2M4r9mLG1JUNLiKl4vHSZBXFAu1j929ESMD/1F45PwYunFbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjjTw3jU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjjTw3jU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0586FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719158543;
	bh=aUhrj/LvMXdNGvZO0nXPjGoYfS7/ommeNmln1UPSchU=;
	h=To:Subject:From:Date:From;
	b=PjjTw3jUxdMywPEIx2TuDa1tuQf/n4HxOvF5S4sHpPnMEtQxpsFBWOiYUTQZtudEd
	 BGCkJbXyumI9nbTHw/qsup89kmrDSyPg2TCzF2GwxCSg7dLvWbSIwG72ouzqz8zL00
	 ReDQ9qwxMBTaaBglHDhK8rC7pfjUYm/nn6bHZrcl1vQxWHVgs2m6Q+1PfDiwKpWSvm
	 s0vya/9uvT1JtzXEtmMBBKoMIFEIVmlm2z5cRy8Hs8SMPraREZB8/hAabe12+f7+Qs
	 vUAdRggE7/AnCJREg5Dv2Uv46NWqZDkMXZauI8GaexwfGRsQlu8jsqHTYFt5TlccDS
	 +mwn08ZxmtqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E39F6C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915854286.16172.6272345577556383338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7759e94063414fad0c23e9f234d13deab6f4688f4c2bf13c3791c1500d699dee
Date: Sun, 23 Jun 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719158542
