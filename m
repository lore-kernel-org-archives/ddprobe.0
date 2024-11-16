Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D8219004A
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731790554; cv=none; b=BfOQQ6qY0GW52kJrarfBoA/aiM4Re1ZF7wfioEMW9NouMS8jsgkYFk2arIof7z+9zaqRUBhLnENEf8n9wlGD/tIGdvRkqMA9sw1z6UiE3QZwCZwDLkpQCkLO+T4WM+lgX8OznqsB2kLR9X++3Da1XXfrI164OPXiYe7jVCWKDHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731790554; c=relaxed/simple;
	bh=GxmRgX8Co1YlfiNCIf0iGian/Ib6ik/jq6y/rW0Sdbo=;
	h=To:Subject:From:Message-Id:Date; b=EmquUY168mZZzLP9ualH4oOb/r60ejO7rXaTDY+Czn+06snzJiEfKGSrTrTooESdRUwfeYKztJGNEW3VDBz68c4ibEwPINMaoebTaXc0L/dpqHJ+m36O7LNK+BFHHshVV58eiWdSdFnjIQ8rXUtcNjylwToumjWwspTpsCJm2sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiNiEQhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiNiEQhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13CCC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731790553;
	bh=GxmRgX8Co1YlfiNCIf0iGian/Ib6ik/jq6y/rW0Sdbo=;
	h=To:Subject:From:Date:From;
	b=NiNiEQhNeXoGU8HTy2x76ZNel+3q6S9uX2W3pbP7/e7D6vl0NyNFk08FciScwU8uK
	 oWioLsu4g3vsyMOkDtDGtIIbCLJIEkeA47VYRrqfOAwFCSi196YtHyeSz/zbTJxg1t
	 kib/s55Edd2B+lVayL9qjU2tmfG6cp3Mptmr3dKDc8rroaaJ1gCVCh9ezCBJex6IaO
	 es9b99/iZ+CYzuQ1/hs5u9FOtPuE12bMGSvSMp3OEumH4/LFXOm6s7ex8EXhC9qjSt
	 5VDDSRFK0XNBzFK5VhR1cC6sO1JbUP4jb0FuiIFP8uCvXHPI2Cdc8Vwcy1vdXbynCZ
	 tNtww1LIdT4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E75CD68BF7
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173179055361.9626.15571391432585651616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4b78e5cda676a764af31a5926d022ee1d01044e20e30f16f411953828cbaf2
Date: Sat, 16 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731790553
