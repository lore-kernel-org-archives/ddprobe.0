Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF2B367
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720917023; cv=none; b=T1MMKKD2hOlGFjWKD3NF3aUIA8sVBbGweSGIu1r6P2Mke5c48tZB2+ln3Z2mFOzeMzmaAHvw6mVc+70d3W1DVgPMJh/DvMhhEMdKEENi6JMcJ1tsR7XtExgELXRDOWJkuK2koPbinqqcU5dOMdSlkHVcov3xzK1g+6SXpf5Nne8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720917023; c=relaxed/simple;
	bh=whsganPgSNDua7XtdIoFOBbg0YAsZP2JA1XCbRt7vuI=;
	h=To:Subject:From:Message-Id:Date; b=YONfEdEmVR23VR8kTWo9I1tSwuAlPkHxBLCiOpSaEVBwPBO7kev5vJETMPCOpLmtMaQcWiCbGyojjklAPdjptN7vS7Jbv3SfgATJNS1Ys9sv8gSpijWfoxdToHHVgggxzAaY6KlW5LaHiHMU0cJM83uLISjKTaufdPjmS54II48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFCdfIc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFCdfIc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ED57C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720917023;
	bh=whsganPgSNDua7XtdIoFOBbg0YAsZP2JA1XCbRt7vuI=;
	h=To:Subject:From:Date:From;
	b=dFCdfIc9VS19psZy8/DHY+RbrhUuKrPMgMFuly5Tqu3v75H6WrFxj+Ys8Rs18ESaa
	 h5zwCkGH+87SyHfwflMT2NyK/IbA31qNR/lQh6rmJrk8aNMZJaZ4/H7cstZnDEj2oD
	 HCMVOG20OCFIyWys5imN5OmSAvOul43KowQKFNmTltfd9PzSzXNgyocnZ83BlpvfAY
	 wur4KV/UWFkoRLCymGuu/6/a+hj5epZxCxE83GWdSayY3aJPjkEtoj62nrp03pau+O
	 KnOX3XLiSsGAgI5qiQO2ZMqC26F4qtydglLrTELcdcve2TZNfe5kxFHG/6+Jasv62p
	 /0JVIirzXStPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4A5C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091702285.8228.13572659622106151637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f6ac6aa0144e7f31a6dbab01553976b21032c98d3f8f3ac46945a515716d84
Date: Sun, 14 Jul 2024 00:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720917022
