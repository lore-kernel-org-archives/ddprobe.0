Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1390613B280
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761514794; cv=none; b=hANA2a7EKK7Z5k5SZ+sLDZzMCp4DbG65vL2dJ30ojh6EDM6nmBVLjq/bitjDe8fqa9MAlqZDMLpcAQMV9y4UxQx6Dn/1/cG0CiwIX+oVlpuWBpedWS8fMGhr1yzfP7RCJ7IlBGpUxf3MUpHntPyiw3nadm7+y1Bnvnd0SaSb348=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761514794; c=relaxed/simple;
	bh=xV5uDKX+bacLT2aL+R7OteoX/BxFX95uRqt8YxGNR/Y=;
	h=To:Subject:From:Message-Id:Date; b=Y8qbQyeyvlDi6uxAaXXg9KQPYUBw6MjSzj08iRXYI8o85abTMkGsgqD50SCOkiAVJTKTYEpeWXpZrTEeelJZZ4D0DHCC4q6XeMHQjzHjl1isfimVuLke7whAwVSfv+IT9O+EyfSicmdodXXHSrNuF2lNOOHZCF66cPzRoILbZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7CdWL2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7CdWL2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1312C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761514793;
	bh=xV5uDKX+bacLT2aL+R7OteoX/BxFX95uRqt8YxGNR/Y=;
	h=To:Subject:From:Date:From;
	b=C7CdWL2VgC2Bs1tuWxsRea27Nn4MF82VWJWuUkpFTZw5Ncu0BvXz3WpdvU3lspQP6
	 VOl0TcJsjB0DtrzbElZrJ8wjveXfMLCgGbMW3QoqiLlZxjZI2Y512rOIDL88AxWtd1
	 ErTR8rmdIu6MED8/GjHq41CKy9vakotL/NPo+ycOev4bSLxdsiUIy7vQPWH4bue2d/
	 rTTu/NkJRPGL6kmsgsxWY/5oNFuZDD99nxBO4mc2G9xHtz6zfp3FR9D4bWHag/eKtk
	 Clmnp9TeIG4JgcaFvvhc+Ok0JqL09u5XQXN0DmnxIWHDDf5UuLAIX2vOhMqOK3ub0V
	 diXDiuL64/Hhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151479357.1139.11694130576543954061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c87e435e82a01c5155e18525453c8c1e9525bbdaa72e355da0602320920db9e
Date: Sun, 26 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761514793
