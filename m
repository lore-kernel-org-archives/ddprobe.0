Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27280139B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752302395; cv=none; b=PICzBMAKKXO+04GxiCvV2kkCbqFG+g4oMnjryadnsuR+WmRWnrHM2mEzl08zXBZxfUwPwJbziTpeK8RVHv14DfN4yjPZSsJ/OUZoIJAG8P+2ITR1ECdoGe3C2p+MmFXtE09HEZ+LmatSBYRSaTzDVXdg14M9PEyZDadhqgaTSUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752302395; c=relaxed/simple;
	bh=ohovlvAJ/esHMSKqvbRQ3akM4RK6LnbZW2LexEk2HJA=;
	h=To:Subject:From:Message-Id:Date; b=g+xp4LgIKv+HnNrl4fgUQLRujeymmA67aza3olhUJHjrUkpxN/hrSQttHAPCPA4dDCIUY2DQdF8RqDPcpI0t9buLz1FuCm33aBrLMK5iavRCpgvEU1sKHwfks71/4xpDPLQdV7gpABbYsjCd0aIm7/sQCw0BIPh1Fa0r8QqPXMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puAD1lic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puAD1lic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752302393;
	bh=ohovlvAJ/esHMSKqvbRQ3akM4RK6LnbZW2LexEk2HJA=;
	h=To:Subject:From:Date:From;
	b=puAD1licR0sWcOOQnW43Rf64zstxb1by29Xljl8Ki/bS4W1nu2Cr2A9YjSeRiyrcb
	 LNNU7dEIKf9200ydRECbvcWqfEAnTs4nNSUZvf9QG3bedDpP9QACCQM2YYdvD4xAnC
	 G9vyyzhlb8mpHgq1XXtaRCFrw5MhFZ8FfzzE5h1bMohg9tC0KHPq7Mzh15Xp8YViiL
	 f9eFawe4tdStNZxBatI6tuzFrfX1Ysq+SgscDhSCSur/sESnDG/cJ0qXSHDtFjrNTk
	 HM3/y1OSbo+MweZKwFZdpj90qwaavFjy6aqgZ4GV1SIbdVnQ0F0FAE6bty5j08SdmX
	 5Mr5NauFmU1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E9C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230239357.19743.10777776118695373876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb682731dae6a33541b37cb8439a3d6116f3e8865df5c3dced111c17040eeee2
Date: Sat, 12 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752302393
