Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513683BED56
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791440434; cv=none; b=Wv9hPw3UE5V9cZU3rKHlCORc9kc7ydznXnMexMy0XNsegZs6AMWkM2yhMnt70LsekM71LTqi+RFpxoEtVR9NiUjQOCpyWtuN6FKUC/5d5/BvGsLbGJ93eLiBWManZ7CHdEz94RNYPyz4uBdXvPCaGMlmBtuGSFU2H8l/3jfc9IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791440434; c=relaxed/simple;
	bh=B1lJY/EY6f6Ue6+lh1/7fIUjYmkAMULMZm/TwmsiZH4=;
	h=To:Subject:From:Message-Id:Date; b=bPdxAaSG4kWruHvsznzjRZZENPYSFsz5HMpIf//o1ovGMZD22ouisr4E4+hKLJwIe8FBQw0pxl0Tq+sdeFh5UYlmNrd/A5gWem/0wXKoQ1w0iFooVtsyl3YL++Vuy72hGxUV1v42x3WrF8ZGvzUVK+cz1LFAscGSoLvkD5YDk8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6iMCdxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6iMCdxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9BCC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791440433;
	bh=B1lJY/EY6f6Ue6+lh1/7fIUjYmkAMULMZm/TwmsiZH4=;
	h=To:Subject:From:Date:From;
	b=K6iMCdxTLNgSJtaCO88RetsHbqbi1OyK7HdJtHf9NPOVTow5lWJlgu3jI9jDorWGH
	 427RJNHuO6adQ1M8ZkE9gtDnH4GBZYD6U4X7QEGrrR7flXs1FmKZGOy5DQwdrpTBRN
	 T7PVem2yAWlPmZsjm16pER+CkSeXuHXjejLahUxsePDwqIz1SLvt19Z4lnCDPQb8m6
	 u5uRspocFxRcYD6WbV3PuZN6LUiS+rNKMhzO4dmBJnzaBpIPiN5k1Y5tfpbgXRceo7
	 pO+3Q5R8gFd6sYIQazEMYCpoDVy28HEEID/Zg5raso2r7myVlyVYibqbtrKHybP7ZA
	 vVKjKWokulq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B847BCA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144043374.9074.15604037860654686968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b2f1da3f1c2e58d86e2c39e9787f7d7db5396ec84b4129780c88c95c7aaf6e
Date: Thu, 08 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791440433
