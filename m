Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9842E54A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768289034; cv=none; b=jzsPdtegWAtsNYRk5mTdY0CS4EORo3mrko+fzklw28+0VdLw2tZATcZNJ9e/v6gjfFvIS0xZF1MIeCll60Q8R/1n3wbnNnEQyi6uod5sqzXy278R28FjAJS8aoJ4Kr4it2uP31iXcsj+Kk5xd0kKghyzY1aEOcCX/PFxe+njMFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768289034; c=relaxed/simple;
	bh=pTI9Bq32pa7v3TEYKRqdtLp+rIOei9l3pZKoLjhP0d4=;
	h=To:Subject:From:Message-Id:Date; b=D6PmqJLdr3dOF6BLCepLCUILw4niGSCIDcqJ0rZ6FCBbm91YcEVccSFxpcUKpOOXMPzT33Ls7cl7wYrztNRJ3jlZEYVckd/P/pD6c8jazEMKpOwZlHiNNvAOx0ywvPITM8WnrVl/2ewPQrATI5b/8NZ5DZ021pE/1MwBQJIbkqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTjLFl3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTjLFl3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768289033;
	bh=pTI9Bq32pa7v3TEYKRqdtLp+rIOei9l3pZKoLjhP0d4=;
	h=To:Subject:From:Date:From;
	b=bTjLFl3Hv98bxIbctanT+SbZi11gVb3P4xG2BStXzdaJGjZl1SpQnFvqUiKMHWzUJ
	 Zg4ttJJm79SA/KLz57GzSes9R2Dn70zFKl//Ih98yMgLxgh7gUzLyUNrCjvKHM3zTI
	 Cwmq8+WVA04Bb3gepGsO67r6q0xfeiF/kZe04rMTfhZXwYuXENZ2IINHgeg02JFPGy
	 UKOo1Oe6EgWQUY/p6yRlMg4FlllLRFzoTA6bpVk4vXT/jdeYg7W54xbgWKr8tqIBJ/
	 N3X7JGK83EOx84poI/+yz+QOX3Ubs9HUEgZp1c5b41rgLA8tiCofjsb7AueOqUJlG6
	 C0PvxWyzolrhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDAD29DDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828903358.8042.14915991142683844097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19257dc5e19076168462565f6ffe86b91685741507665ddc4c28b378d745bc0b
Date: Tue, 13 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768289033
