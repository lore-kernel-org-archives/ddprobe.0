Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0428383C93
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781259994; cv=none; b=nMmQEGya3kMLiimMsNZbD3qbnJY8P+8zNJCB41xqdUZ100ya/0PX9otX0l6aAp9CzOLRw8kNtLV6o7Vu6QtmHlsmpBmlajG6iHmwkDPHVNWSw8SE+aZwhNydjEEk6dFrqIbNzZLIxGDj+GRNhgBLx0ESGZyQWjGZTqIRc6PaUt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781259994; c=relaxed/simple;
	bh=FjlNBd+y65H+2utJEG7WQr1SgVnzzCULGM/kaTECYCQ=;
	h=To:Subject:From:Message-Id:Date; b=rp8YLGARMh3QBF/kC0Oxh+tniDBmDAuBwIWgrIhVehvFXcu+lwHM7WPXxRcd39JUQhMKVAj1mehZJ2tKoQEq8dVQHNr4pHwOHrGtTkUxYCfw0Gd7/3viTNzDCS/guSGVxWwO12lL6CMBTb4NyMiI5197qxiEq7BXRI2+1lX5+VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8Aqxocq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8Aqxocq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C771CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781259993;
	bh=FjlNBd+y65H+2utJEG7WQr1SgVnzzCULGM/kaTECYCQ=;
	h=To:Subject:From:Date:From;
	b=f8AqxocquKqMIgEjkQhlA2WxAUGewOTg0Jcb5p6X9bj0/7Cpjh09rQcUv/5QbxFix
	 0yvPNa33oeZLogqFtHbEMlPck6UXUwOCpx5njIh+ZpLchQmpm7Ha0pUP+BaryVeVTC
	 nZZDsHCBsO/bLmP1rImLOg7vcnm6CmjT3IUOdf7dha6+DIjwey6VbttI4VFT5bnQL6
	 zlyrGIQ3wXNziXFNEQmgB8LwNNGP+ZQlyNlY9wTOASj8K+XubXf1wVc5Tj2O2DWFJO
	 7zduUcOpFGfvQPz25LkLyi6lPBPf/zYAA2hytTw4ialy//S/Jqaw+H6pzKFcEu59kl
	 4ZhHkJ3WBuzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90B1CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125999368.30979.6958675103867775816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9590a6f53802992e21189016e8d066ec38d937bb46fc52bea7a73f9dc4a349
Date: Fri, 12 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781259993
