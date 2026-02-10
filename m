Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5613246F8
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770720234; cv=none; b=t8U4cMcmh12S/Z9OsbqM4/N/2pHPur3nkGJkn7mQchH+O4eMmyTtowAFa+FxohP9mdXKgTF4++llenzDYoJ4ZzmRqHyo27/kMHBhImr9Ho0fS0QT6WGdJcHgYtEuq+Ou4/f2QmWCYyrpcoL9jQ6I0wk1t4yLzFGlncDGr/hJ9Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770720234; c=relaxed/simple;
	bh=R9qY1hlf2c4xgujmiBY7KiEvPKHU8KoE/NbNG08YbUc=;
	h=To:Subject:From:Message-Id:Date; b=PKOtNBxXPMOd3HJ5BAyB2JR9HFwonS+CvXbhfAEDxiLCP1nMAfq0lD1nnTco2VtTRb2gHMt0qZ7TO+e7CBQoYtSqnMOJ+F9qnYt92nK8o7narA2i2i1li7lMDu0yP9RzA7abXAYKclpQQTA93gRRp9lGVS6btfs+QyXUz6wusXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHzfin92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHzfin92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99D8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770720233;
	bh=R9qY1hlf2c4xgujmiBY7KiEvPKHU8KoE/NbNG08YbUc=;
	h=To:Subject:From:Date:From;
	b=oHzfin92cjRhf7zq/Wy7MshCX1lKHL6h6bQgtF171Vok9uNIOFrYlXFsgqFbDVcNl
	 L0f5+GCDLaLhE9Lve69IEZLkvhyw2FZDaKrFDHZ/vG7LT/4JojkfYK6eC71Qb0ZW9b
	 juwbn1fRQvjmyeyo0KjJY3JjoDWIa3he0lQuhTnTFiMZFGb72C0N5rXsmCVoNO76O3
	 4xqwFSoff17rNQp5qVtMJE+WV0Bh5LT6XV9ja4AyVOJj0JGbQSELlb2Kw/aBIz8CG+
	 ULPrcBPbF4QcI6R4THY62mnNgQSAx/UF8GHgiNy06ShkIubbzYLtXmv59dxnoZXb41
	 L5IVCs0XfaR9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B4EA3F3C
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072023359.18418.17582923085857703619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c712f9ddd8d26f64d2297a4a53b81b20b9aa3fbd5ee64a60fbea9a0f4871b1ff
Date: Tue, 10 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770720233
