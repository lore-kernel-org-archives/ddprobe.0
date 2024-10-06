Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C1F50F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728238554; cv=none; b=LDz1vqc0M6HsEZ1Rv6wJsB2gS4mrfShjTEloh54NT2SFIUrl48G6z045WCyGEcRYTDr+hHpo0/Uxxc1PTVRl07I7Sax1cdqv3C5jpqu3MBTYfeCe13fR+w/DeOZJ0GW2Ty0DoxbRWf57gzVBxeyjrSrLDyyRca6EGHAwJUp1ePo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728238554; c=relaxed/simple;
	bh=dlizymKgGENgbL7rDiY5urc+hJuCtb+bdk4NU/Gf328=;
	h=To:Subject:From:Message-Id:Date; b=jIy/Vb4/ZHVqdJ6Hy7yce6C3VkiiSCIbQSehgZOVzYneYci65wUTsOJAbjYLRegZnbMjl4ljKSndEn7aepvlPF1/ubv2Ve/vXzf6eN4hzDqDCIV9oVSlzvGcxRszsxcXReBFYSGXUwMZEfupwaWd2U5JdJXHNGAYOnGOm4pUjyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr+rcuSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr+rcuSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80B4C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728238553;
	bh=dlizymKgGENgbL7rDiY5urc+hJuCtb+bdk4NU/Gf328=;
	h=To:Subject:From:Date:From;
	b=Nr+rcuSdfwc4klA3Xc2F07G8aG/eEYv02P11L6XkihnqnJuFmejwp2X+1EI9fg6Nx
	 ulVUMtajx3KRAtoI1TNTCkwhJ8IUuJY/lH0eqikJrmBxgbu52XZ8kQRfjxg9jgO3eL
	 z7HJEk1Whq9TJIxoejxQJvgWz96ROpm1snxT7AI0zAHOyc7MgEqQUzPyd2qhR8tE1C
	 P3E6Esvuw/50jL0r9SnYrDDk+wKPj8MSBM2HqzGuHnMPVTllriJNLxnd2DJCtRvjUh
	 xCGljGudCCN+TgRWV6zvdMS75VFjIegtNUbbuK9FQQgEtVo6lZFg7S7IC+n9vYNrXW
	 0ohn7SN2w4Nrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A385BCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823855364.26012.16633465783069151283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f2b38b821e94a7b1992e3cb81bea243117ea3efb9416bca54b6870e9bbdab0
Date: Sun, 06 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728238553
