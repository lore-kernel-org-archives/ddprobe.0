Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EEF1A275
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792368034; cv=none; b=mkscwnGZIHJzsCMtLO7ziUTrM4NkW6zcVXZQEwhWkj3RRFDggTXHNPROkdAZnDin0RCcTDaqV1IkygCZdDclumLkfiuJ6KZnLYrMamfe5GrSpxKILv666Pt/Owiayvd4OrtNOo3+hgXhuIOKfHs0DSnsHXCCm79WFusO0brH4XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792368034; c=relaxed/simple;
	bh=5AbZc/2FxhpYaRIDVcaBVmvi2IBoPxnXlMjHI3vmOEo=;
	h=To:Subject:From:Message-Id:Date; b=osNoUz1Mv/NQR1Sf5VpZlaW6CjBVQVeWl7dYVdI/up2nxzaHxCiYb0ltB5eD+x2CvX+I02Ya1ypLz9XvpDFCPCkoaKE/Rt1SMJMOfuTawJ7kaXqRi7G6k4qA1zzAs3ZSxk1nMnj31c2G0IEH24SIKi1UlZZrGnTKAe7poztQNl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVBFKf9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVBFKf9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F047DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792368034;
	bh=5AbZc/2FxhpYaRIDVcaBVmvi2IBoPxnXlMjHI3vmOEo=;
	h=To:Subject:From:Date:From;
	b=mVBFKf9OmnXqJuLPc0U7p0yKVzIqS+3gWELxmUEogR1LtnwXBtRm98H1y2qOG7yDQ
	 UhJ+gJOZIAozQShCVeaOa/2KixYeHMtjFox02h1PfrMgiS7R3CiWWyNsJ7aqN8CksQ
	 fivspo9C9a6Tq4Dw+iEqc3KEBqyEPNns3guwfsbEaiO+W1do36qeq02WkghDfzfX41
	 TJgwvuGesbJhaDLlhgeUNDdzD5syQZRdjgfyFxbB4L7xJnb1ztLVbU8kiB2IepVvQl
	 UsTCt5tmp2Ma2U0+MFw+pw1yRMg8mfRh/2SMLDGuezC03FCBu5WB6tCBIzlSdvOaur
	 Y+j3jCEUoZ+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDA9CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236803375.22575.15739967355872396207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd11d2be0b39d4e7006a223e94d7b4b4d2a1ec0e775bd9ffa2764ed2ddf7265f
Date: Mon, 19 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792368033
