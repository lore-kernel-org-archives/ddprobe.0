Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5BB40DFDA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777945654; cv=none; b=UmFIU+C5xWvu47vMsYZgb2O/NP02OK0zisyg2rD4zpj4Y44q0bx71gIaKEv7RncTe5XpXPMnxNHxt77fZWmzEEGsLyT+FRxiAxCU/bPQSAncIcDUpWrcvwEk+7zZen4Jfu8gfPRHtn2HoRsCyyIZxIes/bJN08kYq2g+De+6cIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777945654; c=relaxed/simple;
	bh=wCtAxQep7XiKsHZrSmX+JSpcy+GBsUmMBf6oQ6yEkyo=;
	h=To:Subject:From:Message-Id:Date; b=ivwazBa9u8qlDB6ZdB1Owe+New2Wt2zMcUH0XhETG3knyXlCrMPGFbmDPrj/mUqFTPvkPn5LOKN/zaozW6ZmtRVbsN6M+CkAn+3Ew3Mcts3uwF+oyzEZ/aZhh48S/yMf84YGJTp4mhzuTq1TIRvxIVPnvtlJ4Gkm+D93Y7BBuqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUd+YzXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUd+YzXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1898C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777945653;
	bh=wCtAxQep7XiKsHZrSmX+JSpcy+GBsUmMBf6oQ6yEkyo=;
	h=To:Subject:From:Date:From;
	b=BUd+YzXMEcLTn/6Kb2kv6gQnCrBOQUT4glACSNb6FUpeguznWXawaGj2oY34J+ecp
	 bCp4S2dGpuLAgna1mBt1YshVjpYCBLZlMcOCY3n6P2SiZemxnQkibr2gdLLKhj0zzn
	 139S1tOwrGBaUsYs6IOKu7xLGrPfaD5zYp4+U/0H+tkGpAY0kZxnb/IO8cHBu5HCpA
	 /EkVgjS+m8gyXbedGNpeRWzmIhCFwiYoM4/cdVKTp1D5gEjCIaBPvFnwnAq6v/sYf6
	 x1ILJnK9YMSbY7+EU1NcVTUj2HgZk8gJp1m5Mp8C3lRnQSbiMT7TTl6yp9JhtdB5+L
	 O4TIeCi7lZQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF402CD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794565368.7547.5423046352213656639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfcef0eafdebf2d79cadb07b28afa1698c6e0b611b48c406e94c7f0a8ff2d4b
Date: Tue, 05 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777945653
