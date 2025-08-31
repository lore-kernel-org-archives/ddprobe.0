Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2238D25A2C3
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756650594; cv=none; b=b3iIZHxitUmA5iDjVthYVMG90TVGVovKw7g29h+eQfjJ4btf/UYU/m0H+RK5LwrIwzCw0meTwVAE85loB8oRjp4wYvy0yhgypYtk1hvVE8+Rwazo4u9jKX8eO9G0/Olz6MVm13V9e/Nlgzkq96brZb7iXYuuX/VOEb0fAag+EFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756650594; c=relaxed/simple;
	bh=Pmd9GNgTWyDd4caO5gGoFEAwTFUUJxC4EWEIIRmoMbs=;
	h=To:Subject:From:Message-Id:Date; b=ezlLBctJawa8o7ioow7U3iOrAOGNw8Fi4Y5xBlG3KHN5/v7zsrJvYTPgBM9j1ZywHpHbgeYB85D7/EiRd/Sd3NcW0NTJg10BRLWd3AqLqV9UC/GBvqUmnK09oYHiq/27Yii17FVLSCnHHXiKs9pCQp7jbiaefwpadl6hVBEgJHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLe1c1uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLe1c1uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6671C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756650593;
	bh=Pmd9GNgTWyDd4caO5gGoFEAwTFUUJxC4EWEIIRmoMbs=;
	h=To:Subject:From:Date:From;
	b=kLe1c1uTbO3o98OxgWPYPRcLua+yEwQga1r7yPAKnnDc97igAvqrV/uZOGXwTLUr/
	 3RJkyZ7wzNfZfkzgdMRlHhtWU2eT5TowHblWfF67c2xehmAcyfOFxHRBCkRklBh33O
	 wGT99LR7FVpRvq3c6QOZ7wb2lMw95WLJ5Kdmr1GHNxkCTg/blvqq5MTGBD5t/tvCKi
	 lhWMBARkh5SnuvzyWrTpTIC4DodNj8lypMwhrDn0bibjv3ezY5uWJj+MzSKosIfIwH
	 SZ36ljMwpOu/qq9gqPd+EjN2MxJx3tNMNTk1/e76tG6gepbIM9tnaRXpTkIUAH8WAS
	 w59zAuV9DYE3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B2CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665059357.5054.7292404411981426608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081c77cccc93f991d256bbb08525b457b58650b56abf6239a47cb6badf43e6d7
Date: Sun, 31 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756650593
