Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE8239E6F
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916994; cv=none; b=IyIie9bNQxbVf12jbC2vL6dvmdnBpzbMh350b67F2MJIo4qYROJhaadaUZFj6xggGfa+/Npf3GsVGGszBjbun2TTdou9PWt1tuVaqeubC0zUp/8CwkD8Q5cl81vqlNCLjQCtr/Y/plqGAEqRqMcvlDXNjiO+jCHaiheBnsVdtiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916994; c=relaxed/simple;
	bh=P6yBPgv/J0/3irL1HqZ2InjvVDnfo9aazRmMBOn3/fM=;
	h=To:Subject:From:Message-Id:Date; b=iBYjI3UD+D7R4UqBr6MRt/jtf+3GjbrOmlHVFoyANhwlz8QsrfzOkiRB/Xo3dfiPmIyGPXiZ7M/8i9wNz8nEYqnfaVI+2J4RwNG5biXzRb3W3N2sF8AYmcfjk18GsMnTojm9Z/CTlqw7hI6SsPljOUEGmm/StRI3SSqHEqD6L9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuKh2LRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuKh2LRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A063DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747916993;
	bh=P6yBPgv/J0/3irL1HqZ2InjvVDnfo9aazRmMBOn3/fM=;
	h=To:Subject:From:Date:From;
	b=BuKh2LRSctvN/tzTeronGDD+ZJfsbX95TfnIUFe5aTBExWGu51NN6jPLBKwA6sRQc
	 Swa5N2GTjyxbkv3F/rnMFjQoiA+Zv7MDGFutWGAjZ/m5drpCyr+mQNLFzFwcdImd6C
	 XK9eoLRUN8j4Es2lJBfuayf1MOgI2mVwqIFPFRUdys78DGu2UPKiYcmwz1H1mGzAw3
	 oGsbwwp9an6e/vHZTK0PrxIPn6QdOP3aWvxfDNE2sTTQcbER9NiDfpZS8rmkGnRCrk
	 CwttYnMenvRnqeK1SRrato8hkq07B2c0mPr4++cxNrYBlDfYYSI5gD/nNUN3NmsTkY
	 inQ5WBzCxh7Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F845C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791699358.6301.7221243604383122731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cc421e254f07295b3ab73859464bcda903b664eb3d100068f2ff8f3af9b930
Date: Thu, 22 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747916993
