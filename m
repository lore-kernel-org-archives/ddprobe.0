Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF59376A18
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782881914; cv=none; b=HasQUHAK4Byi63OTcQUj4z01ah/B9HVsk2YczQZ8+h8RJIV0yR3aEsV7GERfeH6GOpWZpNmU4fFrbtdOwejHeoKQoSH1GxvPNFynzy4+zkvKsur3fJPjp7rLUd7l0PO1TVbJYAssCeTUFcX6b974gLLrKjCge2XcRRPBiUchp3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782881914; c=relaxed/simple;
	bh=ZuERxCB6USoaOXi8rgqtVxVHbb8lPTgTq29bQjJeqao=;
	h=To:Subject:From:Message-Id:Date; b=tyEoAbWaFtsPHmWzRZ/iPqIF42GMq2cO69dzGahLYYSImmjZdAInii+10aT7pHdwP4gZ8AVpaRcf4xSzyh2Ys13FIj7fpzZH9qzAFqsp/KdiLXnFbvneWd8Ay/QhT0YcFPWHkmB+Nu99Zsxe91DKuFWWYM1UdKbkLkvmoeCtaPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWoSQulr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWoSQulr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2EEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782881913;
	bh=ZuERxCB6USoaOXi8rgqtVxVHbb8lPTgTq29bQjJeqao=;
	h=To:Subject:From:Date:From;
	b=mWoSQulrAMG2xsIXaDjakFj93eEMkqM0G21TNpTdKOKBbeHfdE0QqBhY6G8u4jbGF
	 NSqs+LATc9zi2eFmFtHBdIO6jccAtHk4iiLUI0gVfMkw5EG8xx1uujXs7CABwn0YeC
	 gJscih8MSYDEhdhKVcnVro1mYLLVsZ509CsgjyjrCJH9LSJ2PvXC4jn1SJE7AlWyR/
	 gjOPHf6pvFeprnpyswZm55cqEJWY8D3XuuXZhDh6EbUJGjsddRopALBpVvO/QENqvy
	 BetQrrn5DBSJ+TtEfnMQ4dIUDtXAArPazy13TGtaGDSh2tLrsDgYZNXZV826OnDDLn
	 H6Tc/YjpAsKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F66C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288191371.28909.7831901601352049967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9c5bf014a0506c74722c28d195f817b22f23b42490df81a54d048382f81484
Date: Wed, 01 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782881913
