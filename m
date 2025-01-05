Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570584A1D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736048754; cv=none; b=cFLlQMBF14fFYLnd5EaT/uCp0SyMFrq5eOxCGnA1joaf59ojGyhqJo3iVPz/3o9aWoeyuvNEs1Rg9UwSfp3Na4HfyeswULAnHFy6KIj+HwVdSFeAQH+OKoYodmCw2CsrwZ0ICix8rL+hLkttIpTrhF9Tp7bitH7uuz0N5Ykae50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736048754; c=relaxed/simple;
	bh=4Oifi9LO7pAT5+Rc6qlBXbHZiIDQ9aPPwTtmWsuAZHQ=;
	h=To:Subject:From:Message-Id:Date; b=cTgf75SkhOruMdeIrmv8tyb9Yx6LH3Efsfdi7HoeH7lmJ5+LhsjgpLzAp7u8bxRk8V2ThxF1bIG6UztcNYgWNU4DbV/LGv38TcqJUwerujROvBKErJBmosjCGCx4tIAiJSMbBAR5u24+p9UZcC7FXcFd2m5wnFPt8bYWngpvo54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWZ6AiRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWZ6AiRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B221BC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736048753;
	bh=4Oifi9LO7pAT5+Rc6qlBXbHZiIDQ9aPPwTtmWsuAZHQ=;
	h=To:Subject:From:Date:From;
	b=pWZ6AiRLmLgIYjoWmvlfhHf2T3Lr4KIFq3hV86cSIcDUcTpvMZy59vt75rwE2tUm/
	 VZ4o3Ji8Cn4V4sPyjJm+FFthG+qlPHlaX+FfqmpP0zXOWJYdjorPCUihNziiSRw6dh
	 I9mDLypxXRSrP9Lv4NIBiE6Y3Zumbb7NnBdpOMj3WTN6CtAngaPZlHReFk/Qn78kxm
	 yeQS62IPaZAI656A6+xiTSzEgQU52yVUkRTf6siYQ7cocDmhYkTYvTxbKKDpaec6zv
	 0cl4ePtDbYpSPvxWtOYpYmJQ063+Lxi4RUUbDSg5o5BwKYPK4pbkZ6vb2GFPt20XVf
	 A+cSSO2ZM9U3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B83E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604875360.19652.15682412886051348692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547679902709768e1d1939b2a3c0b9447cd76e6911bf71c41ef46f5e2502aa91
Date: Sun, 05 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736048753
