Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAFE312819
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777066654; cv=none; b=d1+czqgsS5UWKuOUDBl3hzfu/uiQObtYh54As5Se6nr0QinfvqPztqMGcoEuGdpESLp+4nrT8xzeVtVOqXr+LuVjK1STjdiQoFniduFJ9pupx84we608BXMxKo1UceyvUCT4y05PQjMMRh2ofoBCDwPhvP7hGxnrN6h9mfLUdEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777066654; c=relaxed/simple;
	bh=kTFToeNrGC5ASNfIZoc2SHAP5t2oarbtYWsbxHVOjuY=;
	h=To:Subject:From:Message-Id:Date; b=DFTApicnpLMgc4nrPsJ6YeL/PgYmGZ/F9Fr9ACP9Kde/RkJlKtWfiFm8efXorJPW58cP+rde/8brtN+wr8acwYcr1ppk6OJMhkN1Dj5wBJSsK8FaoTkTg0ey/c2VjgmBnXi3jDRIIVxeKhOLxOUzISxuy1Jrl9Kz4nX825UedT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkorusAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkorusAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3B8C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777066653;
	bh=kTFToeNrGC5ASNfIZoc2SHAP5t2oarbtYWsbxHVOjuY=;
	h=To:Subject:From:Date:From;
	b=UkorusAvZPKv758yCTTA2zPdaIastm5j2yke3Y4RUONhprTx09qpMsIsdtM9mClGV
	 /DxgJdjQO7GkTdv/ASH4cOKb6GIPiOE6vLzaqryXDFDNRju7UqE2cGTl+URALMh3Rp
	 /UOqQ9fxJBk2ATPMn+qAkYhvGbAaYofqpgjk7NmF6fVla7BvkSwUfoHkabPYv2/pX2
	 wz4Yv0Qtd3MsW/Nrwi+P6cupFZcUB+zdVqvjDPtQ/aM58wDR8oU7DBV2Ottd7/+iRk
	 7WjgAbN5s+Lu/6nLpOUoTingO9jLTyz4XKEtrxffBwB0xaYPKPCwDF0EH0u2daUWkB
	 c0zcJufwCD2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4C2FF885A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706665369.12481.14638020391762330514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc7e1658efc728d5bac24b2fde17251a89ae43ce6c6a7b46899e6e1c8a4d5df
Date: Fri, 24 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777066653
