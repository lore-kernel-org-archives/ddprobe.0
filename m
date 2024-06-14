Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA48142E80
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718348303; cv=none; b=Kaf4Djp/4BxO45HdOnDS9h8cefxPrQ0zAhOGzAPALkBh05y8RpMme9iCRvt8Plrfieg8WMt6Jfq5hLPGM30ttzVvdJTKYyoiMCfnPuzEr0ElBAPw1fgkUD2UmHBqra8zzN89gEj2AP3F2BZY/Nk2bneA3+qNHtGSBQvFw9Dw5T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718348303; c=relaxed/simple;
	bh=1LiDZmsHyNuIxxkoqQrJNBo8aI93C7TI/gCLYTdbGw8=;
	h=To:Subject:From:Message-Id:Date; b=Q9twx9PJK55Iam8V9Z3R2lxWfvmFSB7NZ9nnEp8RLS7HudUWkDT2JS6KiBzUKm1ee5cVhiRNrWiVrm2xHSgWjN5l6Am0rA3Y5NK6tM1OtzMlTjqz4HFxOuIP3bX8hpbGPGsSHcnvTUlyjKRAh+jz+CwdVWJMt+oCr8QLPBTpaJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5K7ErY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5K7ErY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9326C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718348302;
	bh=1LiDZmsHyNuIxxkoqQrJNBo8aI93C7TI/gCLYTdbGw8=;
	h=To:Subject:From:Date:From;
	b=J5K7ErY2viR9FaX0E8F+DpmuwiY07jAWMqgkLmwTCniYMyXXOqQLdReBLJF6sf/rJ
	 V5aaniQB/73PrDz8v2z8FztlOOpU6OLM2HXUO+/3wbFyVl3CY21n8isoubWKFtBNhq
	 GVKw76h1XyNwmMRr/Fb5tmZc8+l1DIKTb3kaI98BqI+0Ytz22KLFdr4QJSmnZrOiXI
	 VFv3NVQbC6ks8pxsZEJSz3f1fVNAxp8tjxi1zql9Jb7zjbXcu1BfvRxNCFARtPwuJ5
	 SzV5yYfJYHHN/c0fzFUp6aTvKR2vGNfkKiisKGa48gcP/eLy7HXM89n9biiCkIfE93
	 HWLoSuPdjdprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4447C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834830279.20984.2788164565841693724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914e8920082430a0ef4a2c0ba094a6b3b2ea5f3acead7449e67792dc94d2ddd6
Date: Fri, 14 Jun 2024 06:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718348302
