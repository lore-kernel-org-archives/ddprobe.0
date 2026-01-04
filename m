Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB41417A303
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767563633; cv=none; b=mAwlmTKG0rMaqjAlcghlt5rC/qiXPOUCeBmvPrBnSU/28dsIyVNZ1Asues72omglmDqZG44TTULB9F0DX1Z3nizQVqkiPi9oDnTBxd8cKQK+N4v4vt/Kkl/HNlcbOHqxTySEl/4YlEPucDLS8SgILd5/MVq4cDHUus6/1P+KEFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767563633; c=relaxed/simple;
	bh=im5CWiUBXT+sAXdtCtKK/yi/CAY2rd69lMnJ8WSSWEc=;
	h=To:Subject:From:Message-Id:Date; b=NqRyhBsPmu801YKn7LEpmESTvQuRf1E4FMJcyXgpfRYN3QiipLeGQPtUgYMBBafvZ/hPGsgqCggHSVsdQFP2DjB72XkN4s4MeauWNrYR79ZLOE6xlK4fCLH4Hwyw+EGL2K9PvQphdk4zqaBzScEmhejL4ovHA3a7IrOvMFfeuTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIizafSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIizafSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B2FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767563633;
	bh=im5CWiUBXT+sAXdtCtKK/yi/CAY2rd69lMnJ8WSSWEc=;
	h=To:Subject:From:Date:From;
	b=UIizafSBp/jn0rM6xO4LENV2PY/6wT4apo0aSs8iQ5suYFwvjlB5D9ngIlWHBIdt8
	 LtF18N3bPHi+vX2Jal/XJDMYpwQb1ychgpyNe6DrDnYj4p5gSol37fyexqGK335IBa
	 YM6yE3upGG/GPStSlzMUCPF9w08pBV8EG5hht+sk7vLGd5oB0RNR0cDRTt0Fijc78M
	 H7VLYcKegJREICCBvX/3tYuviXqATSNTK+ksRKxwdj8Kuh/IMz3Zt3WF6p3lzGzCHI
	 ItR2Et8KmFIe9IQwZCfdzmCsQ0OHaMTTNKItCGYEwuoBbUaUQeAIahij5928Alr6T0
	 4AscwWizp80sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC7C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756363358.31671.6460021259857895520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825dad4365c26b49141286190724cd2f034e73469ebf34d0eb2f42ab4d015b0f
Date: Sun, 04 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767563633
