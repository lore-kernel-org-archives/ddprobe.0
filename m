Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A1E53A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751479194; cv=none; b=ofVarqn02A2ShAIQtT4231m2BMjR9DqpTk+dSJeTHTJOGhtue2LNJPhYheniLcFurFfKIJSC0CU2zg03VRL3oRTX3Z2Qq28B1+Zm2fwV3Hu3loIKcec9H+b/VxM4OnI+9MyOqQu5N4o773Bj1KtgBACqnZ6u1WMkeIZxCyUpaz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751479194; c=relaxed/simple;
	bh=duOjndLCiCBMy6Bl0u9eizz/mi50c3fe/8n8l/wCFVM=;
	h=To:Subject:From:Message-Id:Date; b=YJd3aj0J1P5o8oWs2mQhndqxrJzygjcfr4OZp8cqDJpq1Ilz21bwrBBESHR1u65rLvSrkkFUyRXf6XlkBPTB7H+xK++YFWW7K9GhvYzSLzVqackQ2iqbZydtThnKRWjH0O1SHHrwIrYMxfpCFPTkzxG9X45pPeVecj6JeYgtg4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct/XPVzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct/XPVzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ACDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751479193;
	bh=duOjndLCiCBMy6Bl0u9eizz/mi50c3fe/8n8l/wCFVM=;
	h=To:Subject:From:Date:From;
	b=Ct/XPVzw04onOodVh+UzK6yjfcL4dW2Y1GW9KJ3boCa+oLkj+7Us4MTeCvp7hKsOR
	 MNvZJr2lDFcRcudcZ5OSuc9Zz0OK8ycvs7by5lW5JYt5m+yIU8151hK4Y5KbDymxnA
	 7xKhfwDU8n5F+TE+4Wq8uSfHJIu/u4BBp5g9RPJ+1t0NH6AZkyxswF5Wj+BWHlYVTn
	 AIywbO+4nQC4SyziHNfaC/UylrvjjA1Q5jhp34PwuTMOdNr47gQ4ef55SOLh0Mwiv3
	 7aCz9DLYpnHIQexj0yeVtq6OietawS7/Qr9Y0YxBK8KL7HfD2kT313CxRjZkMG5S+M
	 2p2ES0Uoe752w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906ABC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147919358.12307.17736215034526423486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70b87803968e8e8b0910031ae73ca7397dbded08956a3db0fee587c8b5f7805
Date: Wed, 02 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751479193
