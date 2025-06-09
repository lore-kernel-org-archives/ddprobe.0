Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575237DA6D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749437394; cv=none; b=QCBRhrxC0bYMf8x0NKvrDszYPae1dUTUuL/UM4Fl9dAl/LwXu7cDhEMukY3nCEmMFAlaMD7P2F522NgDdH8CJ+vpCa6FGp0uvqr5V3rY1Uc9M+DL50XEfr2YfxiV7P5XAYw0T5xNTxp2gBez8O5cJG4nZpH78LajaoS/5ZC90Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749437394; c=relaxed/simple;
	bh=MkwHntG3osy5FC/D5riBD9nhR0cxhRWVdf7/XIVCZFI=;
	h=To:Subject:From:Message-Id:Date; b=jm//mocc80c6EcFq4IuVaNkPP5eGA4sjMKwLXZhWunMsfCuhQvBjb4kegMRjnPOJOA3hUKSYh/70H/TH/6bpKF8WbfCHaiwrnZA3V5wBDt+aZmAw3DheZW2h+UL61oVEcC9cGqYeeKDBKh+Hnr1OpbjZmu2D2soXQ4Jrh2Z21PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW2+jdWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aW2+jdWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E9EC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749437393;
	bh=MkwHntG3osy5FC/D5riBD9nhR0cxhRWVdf7/XIVCZFI=;
	h=To:Subject:From:Date:From;
	b=aW2+jdWSEnKc3dwL1rYqkNk2YTtGep+CCjPhufBxmTagmIAIdfWr5zoDyyTBmgD3S
	 mZXNpi2T/vWYYWVS82MFHZnL04fshlt7l6Pf65MHLuw0UsXWekw3ZrRw99eJTIsMV8
	 qf3y/yt+ZEIUmMPKi60WbbN61IUM74LVoo3IAtv8psVKY4UyDyiTrQ3+m3hE/o+61M
	 ujDnXBUVyXzmHF2Opjhr4yPoPr6MzBIKqpnfJnVIf75RR8bS+2ybq8K59NLHFYUSa9
	 Qe/w6GaarQpWHKcHhW/Yrao6GG8h7YxnIbmrBgRxMAP4T5aD2ql765uFYDE4jlnDCH
	 MXDdoR/qa2SCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F099C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943739357.29178.9505235638198346538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe708cc11a294b491b42cb63ed4a61aba4c2ebcb156f7d2fb02d8be1e125774
Date: Mon, 09 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749437393
