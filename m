Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332EE7261B
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762070994; cv=none; b=L3kja3JENz5pSk/SRR9nLlEdmhEmGsy2QHpn6sdXbuhYjY0pPB/NidWByVVU8MLrMe4kzvMmTaRmbAOhuQKus0bCznK7OD1VrxeNyYxSdALqQt18LMyWIMTif9jh1e+DAYPkU95Y3oV3kxNSQLAPCViONnX6Ydz9JDZGaAg+Iyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762070994; c=relaxed/simple;
	bh=W50twT+IIK70bgPAJMPp9cZ6Y8PBjmpt6dC/BM16ls4=;
	h=To:Subject:From:Message-Id:Date; b=dxMWCdmAtOEHAbfBxdpc057830YjPITD91P5YDFqkriQYLvzfskZdbN6GiGom4x0G1o6Id6fRcUu304hNAsmYMZlyJvbb6GI0xh1DHPRt23N7n2wVwIV2YDrdLUquWX1A+jyOTDYeslgUnCvCsdAeTCN+coGnzxWBpES6r2tY3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q46WP9LI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q46WP9LI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21F0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762070993;
	bh=W50twT+IIK70bgPAJMPp9cZ6Y8PBjmpt6dC/BM16ls4=;
	h=To:Subject:From:Date:From;
	b=q46WP9LI1fveJ7dPDuaMSpEwQyjgs/5PuuAZwMvbqBynTlgXY01OOMzCNF38dUBXT
	 ekogjt0n5+3hAgj/GifFfXObXLv8glhjNarOUHqa6pywlmv48p6Vp64pzw+QwLM3IJ
	 5RbosDgyGBzvKGMmRzFx1PHqWbLJueWfgxdCPEdL/hXyZF2L3aV84Q0lWB3fnXGPyh
	 i2/sWQr7XFzdCFOLy3wIFclpuw0of3KnVcAjXyi2BIrgH4HxNI7u9RTr/7pKEiN6nz
	 /UTG29QhZ9np9YmyJdL5gOnvxfxb3GmfVow1VKJPiS8aigs075AIjdZWhUAp01h0DE
	 V4mNYX2DeOa2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C559CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207099360.31021.703611685950954553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6451d8c61226757e4442660df3a47750dac81466207e82e58c35db908e2bf7a
Date: Sun, 02 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762070993
