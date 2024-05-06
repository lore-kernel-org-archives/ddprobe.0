Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F888156F46
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715025743; cv=none; b=gcK5hw/8vezcMlP447brcsaEAeVA9+5S3ltPcz5bh3JQx+WWLoprcqvCL0S0A4AMWgyIf8m4AG87vvjPnXplC4DYv/wy6/SKA0fsREfap9vIRNmI8fSlLadci9Q9yl+szd61cvngRFD86TcmARxrtviW22is5f3ckwuZV2LUdGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715025743; c=relaxed/simple;
	bh=e1sNHfLPn77AyaMX14osN0tsWDTL4hw8uxIYyOWtnug=;
	h=To:Subject:From:Message-Id:Date; b=mPUcX9dKWYdNhxrWuP6PYikgBC9fs2aavXskJiwkSolXOLQCPqzdEIxiLwWRhRD522zJ9dQA+RfvJPvqglFibNVP2QJO7tfbk8FB20fCliQGhBGvflit/GEh8YvAZXAQ7HvqM12aPIf40e5aYVvRRu+PLAmqj9diJmmmfrLb6sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdFyuJMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdFyuJMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7734C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715025742;
	bh=e1sNHfLPn77AyaMX14osN0tsWDTL4hw8uxIYyOWtnug=;
	h=To:Subject:From:Date:From;
	b=LdFyuJMd1CqL+yLMC7xvY4cRuMYL5fBDT2Fxe1/qS0H2JOla8BXJi1nWjNDAVB2B+
	 K4az9HfJoQESjZoUOF7WG1UMHLp7ki8VLoqGwLeVvTJH/IA/mpPN+fxRVTECW7WKl1
	 uojrBQL8eKXL7q42YiYr5Ngnv8+Rgr6+kOdObf4/pJwbfixG74hMQVYVdoJRDUczBm
	 h64Tybpv2meFf5Jj2OJvcT9WkrK1qYw4Y9k+qKcc3o40/Ed2LfG3/NrZk/USUrbBT2
	 eNbY9wQ+ju3etuFbi6qT+1AFIM8IwgXezciDWPeM0O7yNi70GAUqb8w8nIv0DDDeGe
	 r6wSZyfnK/lMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD05CC25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502574276.16348.4270943557722712125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbb75a8ce26e27a333dae0aa6f81af69802a9f6032100c1617936afa169c78c
Date: Mon, 06 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715025742
