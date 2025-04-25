Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC362F32
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745555994; cv=none; b=hnjbRlaG0TUOXYIY74aBbVNLsAFtZYIvOE6IjMKqT3lo6FcVTqcabYQRruAnoI9bLwUAMVoY6O6+ok6ebkB0aMcmZPRCln4kBXBMGxLzu37q4cYROh3sQsxP1kCEpjDTtoBcLeCTUbWmlWecHgQSmrPpQjI3JJH498ss7lNPKmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745555994; c=relaxed/simple;
	bh=lYdnEWcjN0+yVCDaFCjrQQ0Y9ofMssw28wmRFqcCh9s=;
	h=To:Subject:From:Message-Id:Date; b=NNsZWMTnQgNgUhcZ+vsG+ZDONhTHux52WoP1voo9R2OGwL1oOyhcfKH33B6VjqtKcvkh5ibZvI5WHZjbdts9/MB+/a+cRP0BTHubLLdRfjlU5WcmH3/V+TxuO7s/HKtv4Y9iJ5qXncJGs7eKEQjwRIoUa25G/bR7mRCevSjGb3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4A5JRAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4A5JRAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643BC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745555993;
	bh=lYdnEWcjN0+yVCDaFCjrQQ0Y9ofMssw28wmRFqcCh9s=;
	h=To:Subject:From:Date:From;
	b=b4A5JRAeP6TN5IePnq70RN2KQgmdnZYZnoy7DfIhar31sHwYg1vQBGtiKe2uFLtTJ
	 s5oslo7SLFejMoVnN2awneYYB+csFrrc6WtdeuV6SnO0JLfX5UcKcLPtSUjFzqQ9yz
	 aQ7o0A/7IW/mo0/cvMswuujPTJxG7xqju4Z3O7ClGTSQCrVnviVEfhcCE+Ij+aeehP
	 /AroGuat+I+uxJi1Y6w32irJmkdMZtkdh3/RFlAQ2ZuvnlKMYBlNr4FnZRP5WJdhGo
	 Nb3k39bwi3zxCvW9H5ORoocckjEN7kmlXi13JLUzALGYUIKgf552pBSme2g8Y13G+j
	 DTZDmQZk8YwUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95592C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555599358.10307.9135411857005716614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e1ac4f7fc8aaa289a8c38581ed21ac83aa00e11ec60b9795cc0ab254ab9c86
Date: Fri, 25 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745555993
