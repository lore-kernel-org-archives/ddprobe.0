Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B228983D
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753112394; cv=none; b=hz4sSZb7HA2OdcTHojX1Cp0uXakuarY2g42VUee5dNtsKYb3V5Woj9r9bjRp+Em7nBKi+AuyOxeIXh483PjGQErpEWAEUgYGCWJZ6n+a84N/MVyvz/LvqcpmSniY1lzupFxZhwNMdGUfeze0q7+wCyO1xQwTkRzP48crjBzxFb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753112394; c=relaxed/simple;
	bh=QBdlqgBlzDjKZQrkE39aChjfNFaTmx0voLmquW/OOu8=;
	h=To:Subject:From:Message-Id:Date; b=P3E6nEsD5ed39mAGDBK34Be1VLbqIVfezy9QruNn1jE/ecepdFTAOprVMCUcyqm9r89XrCxSE/D/FvMPhbXskwr2GuUBSRh0WxbxMKYSVyiJESMs0F+HMenp8vxxlBv869R7SjxS2c1bo3zo57Mei3beWXSwdNY4FcSUAgeLsls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gILutDFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gILutDFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753112393;
	bh=QBdlqgBlzDjKZQrkE39aChjfNFaTmx0voLmquW/OOu8=;
	h=To:Subject:From:Date:From;
	b=gILutDFAwcfAtj1JyIIWGCFMUKOzk7o8+s+Q6gW2BpVWhgDlol7GgLivwqKZhl2oh
	 fimK8M9dmWPIEOjaTQoW6CWpxJMosYQ+RptVSjxzvTrYRM29FAJx+QtF90jbAwPTGT
	 KULjZTxLikkbsY+g9gwyT1slvIPqlZM7fj5bVj59sdGl1BySb1ZBD6HZxEosIgtt0C
	 41vkAP2xzZaj+m3ohRGgyQV0msZqQbeMNYt8RiyBn6UOgmYtYtH7UQEO4XnKmATFBW
	 stvbRyElO5Eu4ZirCqhIYfRA3RLGAjRbuiRz4zx3JSxDPnsoQABrB6lXvgU+2oPpFG
	 v0+VOZZ7BjMQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94663C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311239359.4955.15949009087832762207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba6610f012cafe0acfd7f56d218b3f4f1efdaef005562b7dddb30e4fe5fce3c
Date: Mon, 21 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753112393
