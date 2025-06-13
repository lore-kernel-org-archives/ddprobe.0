Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C02A1993B9
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749844195; cv=none; b=XwtGZDrIBf05q1kR9JInlFhdjPKt2VrLIgMInNYvux6yHe6BWRBotEfy+magY38PPcUt+o+OaH1NLsbO2SKT7TCVKsVjGBufDsPsulujNCIH7pLymlXgfQfcHHQRKzQ7KzPoG8L94g+/fjIHs8HBxoflQGKfhVmWihmIJz4aFLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749844195; c=relaxed/simple;
	bh=tN65uTxN/iDrojIqgK/UnFTXpAXC4FbHxm/e3mtrh8I=;
	h=To:Subject:From:Message-Id:Date; b=dueV3mNOBwswFM3rNok/mevMgNC87oMpsg0Ntm6MvP4L9VhH8ONX8xmFL7dbZgP3tsgFzN3F37T3QJRGYVR+Ak/C//fR8KxcYEk5hTMoh/yYjtvSwxe9Xt3QL/ziywuY55c02OmcFf5+MkEj32hcCuiFQR2/u9tcd8i7PIwXS8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBRaR/5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBRaR/5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30ADC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749844193;
	bh=tN65uTxN/iDrojIqgK/UnFTXpAXC4FbHxm/e3mtrh8I=;
	h=To:Subject:From:Date:From;
	b=EBRaR/5fUb2Cb1wCaAw0dzinseIw+55S9+3fFHTU1PYLUl6THKTB/etzDejJDET9A
	 pYM62xrs3aiKxeqBNTI01OB2NX7o+RLCmyg13WclaGd1G/zWwML3R7wOolJb11XXgl
	 N9XeSpMEfGXNSJKzVcCzkP7sVOn30wLeuWrEs+dy8Kicr3koo7zEvUyf5qV1N8vlX3
	 sOOILx7RRLRzjHMalDYl/tNs6qDLrVRzaN/VGPk89iI7a8Z+/JwZ5XaOsqMZx2ZDuc
	 zPzIpmDbNuHC8CA10EqmCwuyi9hGKJvoMQpgv+ZzaxBTnnQtIupEyih9jl1IvV7t2r
	 V0JC3Wq+0fLUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F762C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984419357.28279.1457777018330442275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068081331e5d78a6c15293fd67d56e374cdc2c3ad83a9693f4c26b348cd09c1e
Date: Fri, 13 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749844193
