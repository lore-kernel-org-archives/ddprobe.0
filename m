Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178F730BBBF
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778484034; cv=none; b=ALOagicvb7wSXYU/zxf3zsIXnWprxYQm8FRuUXebFQdObypIRn9omg3iaXUyGoigL/3YYrdZPnQstrViMs7h+ga87klI9CKYMwbqroW9IpjcY39aKe1Hn/zCAgyo6MZvSQ5mSfkgH57aJQB4Qi2dsKdRBjaQI4Ws4lIySs0+dWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778484034; c=relaxed/simple;
	bh=QKyPzy+8DaB1zW8wVkpmz9zEnZ9IE3Goh3o4/zEAFpI=;
	h=To:Subject:From:Message-Id:Date; b=DAvUvbVJBKVIGxhyqSEdKL91MRF6XF0fV1Bk3hXUJS7dLapfs6CJzLqeuRnRFvLKEOBI1MGnQsLcpAGVT8pDivwUCveEXOMQbWMpcE8KPGkSmHXbwSlpRQlfQMlZy2BjTLQ5RcEfKQcUEMgfBoelpAYv5Hs8mvPzmyv8E+E8yNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX1/GKwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX1/GKwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8386C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778484033;
	bh=QKyPzy+8DaB1zW8wVkpmz9zEnZ9IE3Goh3o4/zEAFpI=;
	h=To:Subject:From:Date:From;
	b=sX1/GKwqgb80Z8Zr9TlBXKOtshRaFVV7UHYoSS/csNW1uAN+OF2YiMegkdmNqy9OH
	 R1LpFQbyxtPiaCauXiwSIFNNcOw8GwxPwVPp9ZBVjFFPx+zPOnSR4JT+zHybtzS8zq
	 MtArwLF1lT47R5ie7cBcNPMwYczPnfDRTIj0Pyx7wE+VZwb8GDLYAAvGw0nnEQrg3y
	 IrxwIiuSqFzcRuu8f1x7VPpk69ScWG3IsZs8Ms1mBSE1pp/trhtyQJVSlRB6yl9gLt
	 TMZjnh3D5/5tHx7lSqlfAHY5hPEWJI8fj1Z7nuJOPuGwvNez9oN1pf2Al7vEFemovH
	 hdro/mOOX8oFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE73CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848403369.21922.9261378340437022097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5459aa4597ff04aa676e4618c4ae7de2e111d20452f2170eb140a661be90d2
Date: Mon, 11 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778484033
