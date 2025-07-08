Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D06A1E51FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751957994; cv=none; b=L7IbD9xu4fXJxTmbP5TLUBWoFJiYeJDWQ0ZraAmwmtEsMZsTX8xTRJ0/ThYvJ2qk/Wh1gSCeZQPY2Bp/MYbC3oQAaDjR7JscNPxhoVr5dqEJmply+Um0YHkerAIXM7GBvVJFqrgx5lcYoT4uHyiGl0TWLBxcZ+orfqfvU7tfAZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751957994; c=relaxed/simple;
	bh=/dZmA0OIj/vdcnUiL64Bc7faL4C/BwL+V1zI0M8JwSA=;
	h=To:Subject:From:Message-Id:Date; b=W/AN1YGMYeqFwRrxSsONwlpe7T4v/OJHikPUgp4hinYLme9g6y/UenYC1HQ2BvN0AX1foYmuURuxH9QFdHIAikEY640v9GxnE7isNvoL6JhfjQLSNRLIn72Q4jF0KL28yEg/Pb0lsq4EId19s4SDF+law6xd1ng1lpf5vYfmOaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERjDIIHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERjDIIHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C9C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751957993;
	bh=/dZmA0OIj/vdcnUiL64Bc7faL4C/BwL+V1zI0M8JwSA=;
	h=To:Subject:From:Date:From;
	b=ERjDIIHJVHMnr0sJuEmjEh2QN+EdnU+sNv0+Kk2ZudZtnaN8BFGVdPatw2LOivS1H
	 +g4AjS94sIkfTcey78HICT++NZiL5w79YNZSCn5DM+7NlzydBL+Q180UtVyZpu7CBa
	 /fagkUR5ktknRWlSKdkeECgz5LwRMdsILY6ana5sDXIOFFvsNQhEGQDmgEiB0hPvOk
	 6x5Idrg7EONCG7Fi6MuQG/nfIRC25j/NqbGl4djIHR3iHd3CUVoLpbBFqsHm+5uF8g
	 5CqLmIOcTpLGJmKMlbE7cCpSAPSergoXg1S3HdFX1rbAYEJ+0/RiOUZE/QIbW5T8ez
	 BFGqcmEsdJh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F5C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195799358.21316.15054703268473692666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a1cb260f845c5a88423d29ebede6b95724a8d14929e9a6e95993c6648d309a
Date: Tue, 08 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751957993
