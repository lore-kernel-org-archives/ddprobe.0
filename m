Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5909242925
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787834434; cv=none; b=Gb3F5fyfJvV/A2pxiRaE6Z0PSlwAhVqllYwjctWEPfb+xA7JNyCgOIXDpst/9lvBKHpSmfxDCLNFbgdY7BNhBu+6HONCbhXcvC7gTHa+g6I25OD4bD1uVY7Pb1/z2e9vD+8ed8q6x2CB7++t9M69oGz4nCmEpVpzdbV85ErpT/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787834434; c=relaxed/simple;
	bh=+Xvu5wlxcRFOkcq9EcaDx7Owgf8rJ/6AnBq/jUp2920=;
	h=To:Subject:From:Message-Id:Date; b=YQ7mPhcBtWVvY0ATRndzREsPhGIZSruoMlvw0jKWVBALr5//xon0qv20LvNU5PJLKJw3c3wp8JGTaGv79SeIsPHbfCBSJNK9L/ctBjTY+/11tXpSjzaF8Z19tXO/pCNYbD7+tnSGm4sKRylwoR4iTIFifnHen0oUbpVLDerRjHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgYPokLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgYPokLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD70BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787834433;
	bh=+Xvu5wlxcRFOkcq9EcaDx7Owgf8rJ/6AnBq/jUp2920=;
	h=To:Subject:From:Date:From;
	b=TgYPokLzWPhOJA+5sMV+NVOzzUjdFIlavVyvErZbpGAHOPcn5/P2cbYINDLMc62uL
	 qhfqvWgz0h1ih+KTERNw2P5EBqcQIK03Ns4Ce48Qq4fXxtBFjhaJ1q2JYBI5NB89jk
	 RleIDkkfUcT7I9LncwumWh1qVNnEN2rlK3vbJ9rSef6qF2IQ1NsbcicXaeWAi0hajX
	 Xqmi5oQLJb9H09hXN7HI8fMnENSvTcwiJxEjyLGAV8cCNOPrnjl1uB3f0PMBLU41OY
	 3rL7B/yGRiw7OMJeXebB5C9XOp/plW9uLOvUNbAc3uc+OlCPSxkmrT/tr2qrfChW8e
	 As5gwoO6wcA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA666C61DC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783443368.10868.12480823238662771697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c4f3e8b37175d08bfbec36943b9e8bb50045bde03b0cad9d6459ebdabefe6a
Date: Thu, 27 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787834433
