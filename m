Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D992EBDF1
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753447194; cv=none; b=NhmkD735NfoEgEcnYOcgWb0fVSHrCux5zbodeqlkFxPg3XnXQsW1STARiX8TWdIVVcvbVee2/WvNDQLSeKJ8r/nSHdI/uczDUnvwbBJ5xs8yNNIeRAjxzUe4liDEL5yBFsCifFQ98PlACqgMOCrw2a9fnruCZnMf4rnPMVfVykg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753447194; c=relaxed/simple;
	bh=VF0LQ4EUmLrLJxOth2KuGW1mD9b0o66hqMJ2Ar6tnC8=;
	h=To:Subject:From:Message-Id:Date; b=t+rXh8FgcNIwyvxV6fFdOWXCJ305jihv3AqVgsztdUpWVGEHLiEVV5fPT5nkY80zzgnGlvQChb3HpZcx4jvu8YyWeJ6EczmtuC2XrFBSd1lYtT1ua3dL/uAQI1Ia1JC/N1CW+aWEaq1JuxA9CyHY1l3KoOh6FWAzfz2+V4pAUh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M24G6b1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M24G6b1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD53C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753447193;
	bh=VF0LQ4EUmLrLJxOth2KuGW1mD9b0o66hqMJ2Ar6tnC8=;
	h=To:Subject:From:Date:From;
	b=M24G6b1vj80VrpdKa+01fF5XAm/Mub44dZTS4Gn/+mIoGfpBGasPcpVNwwUBD/Fgv
	 1y+uHyQRt71SjPI3nffpERU6vEs2b5c8SdNxxoStITdbKJ10Cx4hjbUPb+Oan4rlGu
	 OXLqPF/QuXabnMFnvcX+j5GSU14APncHcrbYb2VVTwZ5wetPwbPvkBG8nwxN4yC1/C
	 AkVHT3+5jZwgV38qAjpZ+aiMcZQN2EB/jVZGYxVpMZRiC5DWr+cSYMVKz7yPjPAFmb
	 8KjWLFrxL/amwZwgFyaBaJmhviXuD1uLBzSwG2qjuyniagDgTXSW28DpkZ8UokBArf
	 9GrOa1wTrGqpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B14C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344719358.13664.8363169572400462822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12851bb44be18b72aaf823c006bf46bec63fa8c97628bb4573a51980d3bce65a
Date: Fri, 25 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753447193
