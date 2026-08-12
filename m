Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDB74503E1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786546834; cv=none; b=pSsOonOTEHrTh4Hd7uLGOkr2IK31/zZR0uDaNzP1ZtTeKLsoIHsIDZ6PTG1peGZyoCxoRXgchvDXcqzx0U0N+r/IjlHkKQ63MZ42JX2Fx+QMmtE74dh9k07rTVqbudsh4owYKQ/kS2cH+Y/E2/URMDpEhVO2RioHgEsjg4HYCqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786546834; c=relaxed/simple;
	bh=mMncbjfqEvej2Opt8wLt1R3easngt2M5HFkxK3w2n3M=;
	h=To:Subject:From:Message-Id:Date; b=Myy0o9n99D47Y/8dyWKIeGVYcy2F9X0o1HUk74C6vo+N8nFNst8lUh41nRjw1VbSTXEccC19z1/GSnMKWh9xpI2KLIQgPT54apLBLYAwnFnPWvN/yRLedTwsjszJL77yCEmGO9rwalyg+2iQ/ILCBDK/+RsikHVOx1GbghPgVIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/X2BwWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/X2BwWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D425CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786546833;
	bh=mMncbjfqEvej2Opt8wLt1R3easngt2M5HFkxK3w2n3M=;
	h=To:Subject:From:Date:From;
	b=W/X2BwWMWQzEgt96jXa+jDLOaZ+2pLmEw+iFo3kNTIqmL1nKuB5HZVPigtxVXSUQz
	 +s26CYpsgolC/Vb/yGGR4rICm2hbVsZF63KzPJrtcHVXoDFBRUqSYI8SktfIsbT6+g
	 G2jdRV9rce0Ed2UrFqj//Ey60v9DB+XwYY5SRkFiHk14JzlIfdkY5rz2IApj1woJTH
	 gzvUt2QjzYo3m3siQLkshU6UbiFK9rhPfyHophlZbdAWmWXh7LpNAJrWPLpWXQMClE
	 r76vKO4dXLzKv54ot4fcFDCUb8pBPSG8dya1Pf+0/IWuRDatGGiz89xp283TwpqGNh
	 N42VvINV4Mgsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD51C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654683370.22679.17500736197104276721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6d0df09f8b35967edc710bb35d64c8854213167e01b4212169afdfb81cb408
Date: Wed, 12 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786546833
