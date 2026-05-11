Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CF147DD43
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778524234; cv=none; b=pCt+Y22OXLzhEdtqQz/pXMMtcHWXOLaFqurR0PLZPSaT4Ok6H71cOLs4nt4/2b/FMA2Wag3o9J/Lz3/v/aYId3k77Rd5Rt1Y7X4jb2T7GJKrznFebei+6fo+xqeIRxqrubCEZlfcl6ikEZmgJmO9MpTk+9yprbffygzaP0yTePA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778524234; c=relaxed/simple;
	bh=edaNwUqTYdqrUlTpwU9U9wjozdZ4LE333LUp/76aTRg=;
	h=To:Subject:From:Message-Id:Date; b=kDxEBEUCVgzI7gEVrp9rfjtl6O1cAl7Y6mLfBAlVaBGsHRN5pi/kISSZSGiPjeF8oR2zCzdac4xOBzHe3KBoS9eS1lByg1/omPBuAwMxg6USKuTa4OqYLoUtbOwCMGwau0LPp5pLyf/eG0ucZVm5LZe7HCY7XzVL37RlwtPW43A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKtP3xye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKtP3xye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80F3C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778524233;
	bh=edaNwUqTYdqrUlTpwU9U9wjozdZ4LE333LUp/76aTRg=;
	h=To:Subject:From:Date:From;
	b=uKtP3xyeW3X0zqdznHonpf+5Zmh2HNX6otZKRO7I/lC+bc0Gu8KnLYpSc+qY/Lnw8
	 z3vBv2yVTh7xtlCSse4J3NK7yA8Oe4wsrgNs11wjso5MD6XGsQqh+hZTmxTukcTqPY
	 8N8zRxDPOrI3C33Lix7Gz+RQuDvXYif2pzqszwBrxcLuLiXfRQKbKVBuFLrPZg/qWE
	 0D7NcfCUWBxXuT9lQvJPlObJ5dGYRd45M/TDziC/G/U0qbF7EbaVD3LYDpXZ79g37v
	 s1VRfPAxA9iP8Gq/HQrkNQaWW6s0qN++Thcy7Pd9gVTW7nMk/MbmCNH1Jls5b7hrul
	 he7j8cHnV74jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B698DCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852423373.2050.15769515574405584270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9ae9bb2eb94a658cfb4118aa16bc0fa24733e54c618209eaf0c8a3496653ac
Date: Mon, 11 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778524233
