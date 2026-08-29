Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDF53AA1B0
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787967034; cv=none; b=JuPIdCb2P7a5xFTwcmw8hgZE9s6FUCKWN/3wMtHqJLMaqGvfckyA6v/1fXrkn9aLujlJST5/YAu1nPODDMSIVpbhhqSyTfbR+8gbgaIdTJbg8VC/pyTM0rAIPsEGGtt4kiRN03FXz1rKnvOQGSwBeD32+ZNT6x+Wx9o22gcU/Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787967034; c=relaxed/simple;
	bh=M16/OrbFTB4lnLvAA12dwXo+HPeHgeRvitRV1qb4Loc=;
	h=To:Subject:From:Message-Id:Date; b=rvFvsxRDzHMxtzZ0u99dpOxFd1/1jkiBA6QWICUIQMbUvUn9LjOC7mxF7admVCciCkjLFpdBtZIFUpntECJ872U4a9NbxCkWDIv25s+0deqtWYhqPD/gWaI1RYbN2S890mSwTO8QWmMy4GuSH7x9OFMSTyORUqektqAuTLdxpl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4mnPtf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4mnPtf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC9CC19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787967033;
	bh=M16/OrbFTB4lnLvAA12dwXo+HPeHgeRvitRV1qb4Loc=;
	h=To:Subject:From:Date:From;
	b=M4mnPtf9j4/yfNv3/nZVK05pVqvAuqTxcyrpRYlhTgRPu5wqhg5JdG6mRpPBd6i7Y
	 AQMJC9v3+wiDOnC7vG+7Xqf5pSV68U6h8tH3WC/ccnEI1KECHZFfqvu/NzWeNi0P9q
	 lRpu5w5DpD5zyKxeQEQmBA5XK09uB25//bVA2XOWoxtV5HIfnYJ2ncAnkYeG3OcFx3
	 LX+kfkpjnKJCQUM+BCn17rg6x/6MtDdEVqnlhLiV2kvNKkABfeuHfXa1nC9WESLSXi
	 EZnjxFjY/E8D/OK7hGRAzLwwC3iThtDPIAOE5cvByOLxN3nIn6afP3cDidfwn2RGIZ
	 cU0s/BPG6+9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE1C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796703369.24340.6797333704616859611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07aaa2534222bf9cfce498e2e1d49c9de0e24524046c0708c1a69ee106da7e5
Date: Sat, 29 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787967033
