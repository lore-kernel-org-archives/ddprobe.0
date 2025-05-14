Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F661E7C12
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747261794; cv=none; b=J3r1bxX9u6Vcr8bA9b5MV1bd+i3AnXrDKGUbOrwaX4+tudW+Uwt0HLkMBaEQ0kB8JMNRO4TCh1LSxhmAufva7ClUQMW//6Pn/o7OgCrvuiHAhhP8UO4tMAnjNQLwr93kzB/UA1aOk+WwhPIPQyVCqVrE0laMoEyCb6DQWFZDI+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747261794; c=relaxed/simple;
	bh=AG6XIKIVcb8uSclMjWLo8TYBYjjZ3SPXbSXHxE110Vw=;
	h=To:Subject:From:Message-Id:Date; b=mnlZ8ED44rORyL0LB7ffwkzndCDs0LixEICjNa8a+ONO+1/dU19a+sKD6jFpndMB7l/fTzx3Kr0pRoSonbKvGZLaYp4MaZYK+yDfmp7cSnrK4XGFO8U1HD6a3EvYpCVITmOAnBqK1/9t84DfoFJTWkGZN2e8EDX+82uDXR4XCyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZK05p0ZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZK05p0ZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D06C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747261793;
	bh=AG6XIKIVcb8uSclMjWLo8TYBYjjZ3SPXbSXHxE110Vw=;
	h=To:Subject:From:Date:From;
	b=ZK05p0ZDSwreQtojvYBKtsa7XdiTrbmGTvMLWlW9nSGKx73H6TigmkU1EWT1j8gx2
	 GTtqy9XWqXSPdrMPkJ7154wzITr6tUWqQUmDT6/Zgi/p9+AHK11vOHbyOklAyRm9AG
	 R6Rr4atWM+SaZCARxR3/QqmMLKONu7tYh9D/cav9wKz4lrfR7lqH/kGOgklo1efTaF
	 KYg7rrsXfTXVzgG4PM5AsRwx/Xfr0Y1CGW07FHsH1ev/nljRlx7CdEKBe8u23bk2eJ
	 QjWbkhKz5/KkGdmO4KcwCk/B3vB3yAsBnsoMxEHgOfkvAf+CJ9r2ifOnPOcrjaXVvQ
	 dZBqQfxj//82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A633C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726179357.13276.3900709696683570386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bfa4a10d1a38aab078fece758c59e06a41f6cdeed92ca3eec6357291c1db48
Date: Wed, 14 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747261793
