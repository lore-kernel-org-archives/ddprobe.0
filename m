Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0CE280A56
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780923274; cv=none; b=a2vfAVP9TXDucgtAAnzs58wEkiCGoQwfMHL1vjQhYYh12TA/dwSNHIIMMjL6qIG2tc4lL27lcWZZtUi2T8QUZRf/ab3K4uoDrCzyfLHkyELU0PbhGSNIb5bUUZMSr0M0N7+r5s2zKvqUkAUiD8peh2a0M/PPoJjC+tCg72Ee4U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780923274; c=relaxed/simple;
	bh=YTxIMfbh4BjH6ZF7hrPUrtdSJFoVa04o0FoENNRDLFk=;
	h=To:Subject:From:Message-Id:Date; b=hLDj/Le6P/b6ipxFLj9fa9bw/IhVulLKwwfuk4ztS0rKtUBIqB/adGFoFDJrcJ2ob4/UXZniD73yWOcHblBPIGwPGSFogKK9PYK4A2z+p20E8ih29Pz+CZXwfXwqMKthg6MYDcg2Ss2HYYZVlYz0dqVpNuV5c2OOMHsKPmluQ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6nV2Kbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6nV2Kbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4793C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780923273;
	bh=YTxIMfbh4BjH6ZF7hrPUrtdSJFoVa04o0FoENNRDLFk=;
	h=To:Subject:From:Date:From;
	b=A6nV2KbxpfGdB2ILhDF3X1IypF7A/rHdaJodcMb6fAj27X0EWyctOoHeyIVO2pLpS
	 4Bk/BWsOJEqIAKMxNHWYawEyN7xLIZjti7E4T1hvJHuWjPBVvZwSye0jX1vfzneHOJ
	 9Ln2dEqTLUYkrMkRrQYOqnINYaZxWAW42G+YHO4yJqlkc77paxaQy6rQll0NySj9zw
	 0zFGtVnTFV1RCldZbtnKyz+jAhwQtJYJWhFVEeky0QWfKQXtTdpXtScT0+vDxBYs2I
	 QRT3KC+E7ORiGs4DRYSgCi6qJd/KRbg2Jz82VitkZV7GFd6KehCZ+7wFZxTwDaBRmP
	 cSM+ZrOlgw46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DADCD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092327368.28958.8269578003948980051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4006942f7721d4ae519479e9db9653bbd6d4d06cb1c85eed431bff197ff84ae0
Date: Mon, 08 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780923273
