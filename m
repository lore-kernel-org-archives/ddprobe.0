Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AC422652D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771948494; cv=none; b=pzoghQGhGaFn+/pwi1xPdwgnJBmAogk4ow6SN6A97roi9Sh+23ew2PewAIsRtxNayXdaexDg1Hp9bW/zu7YULozA4iDU+fUGgq9nDZyaxkM55QkUruouGzJTvKSMO/DT7cpCE3P1CtMOuL68nWCf1P5aWsIP2OfgzW3U4XKOres=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771948494; c=relaxed/simple;
	bh=9THV3b18WY1qag2z7HoRplGhNXYtF+22DeOUkPHNGyg=;
	h=To:Subject:From:Message-Id:Date; b=pLfPeWZNybCLBUaTR+KV4nBbi4oRV6gQeMIxEQc2KdVv1/oyETFxerFA5phRkbtqD05b+TxoQB6uKGGI2Cp/fWTGsrYOZ+0zJzC8p1geLZGJ0z/U4aSVZtexDkJtQda4LiAXevPc234IwnQizOaeVkjJoBEj16dgno0/YtCfRb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYnVNG9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYnVNG9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F1C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771948493;
	bh=9THV3b18WY1qag2z7HoRplGhNXYtF+22DeOUkPHNGyg=;
	h=To:Subject:From:Date:From;
	b=dYnVNG9V6ze5RXV4FDbrTyK02RA+CRYnNFkaRQzSPepPg0VlnXUwc6/XWKxFedAvn
	 rW7chZbH/E1XZOtp5R8Vpsk5lx0uCp8QzDiWsUKzSUaH5S4eI+EU8G4VxxWtkpCNIU
	 4jzgYmcpZRuLyjqxYblxu9b6ORcABp7OqQV7Lmw3Nbh8H43zdveYjvOwhyTrpeRtC9
	 z6/b7pS6TIrn6SDe4i7LBKdtXX2zeCwo5ksh4EPvBF5RXcA0K3+JBg1FN5T/rEF/Vj
	 cOpHZw3QHMwQtObdUXtqCYvSyurk5fV2pbi2QBlsiOswqiJXT6Cwuydb5CpXWN9WP7
	 pt1ogR5Z/IfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E21F3C9A1
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194849358.26428.13760310560350676892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf77fb6680eb6803af619fda03f302fa02b9145584832cc7e2dd14acb6c72f9a
Date: Tue, 24 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771948493
