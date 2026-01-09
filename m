Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241653382CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767953034; cv=none; b=o+PhcklN0U0Wc4tQmfrARITInU5D1N8bWGOY8HJ1rDAZBYBtpNFb8KYAH1L4G+VyEV7sdjo5JoDKUT18+126Idg0P3OxdXX9F8D7Jpdq7I8jCEvhYX9dhfmfUOiMROaXTmwhcEHjIj+G6oTW28xrTVAOpFEbPousrMqmzZnqFGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767953034; c=relaxed/simple;
	bh=LGIQ1BtuZ1nTXlc09dZQfg3FAqDvFpvdDZJHacaR2iU=;
	h=To:Subject:From:Message-Id:Date; b=k5k11sghwqUATUbVKrUwO2M2y0uxC5AVTsEDQs4EBzCzhkMphsv9QXg4R31qFW1jPnTDpY21agJ13A34/mIyYeA4mJBeb+BqYqjGGjeuFU87t7GVzlOmA5qN1JnYmERQMi8iRk1cM4B5C5dvRCAKEMHDawzz9/z2N5rFHPC0+s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at+TyqhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at+TyqhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767953033;
	bh=LGIQ1BtuZ1nTXlc09dZQfg3FAqDvFpvdDZJHacaR2iU=;
	h=To:Subject:From:Date:From;
	b=at+TyqhHeipM3spIC+JqYdjb2m9jtiL3da+0jJ9isqRz2UzdcNgWaVc0sNo33X6Kw
	 ObfXpIwvtqZSfPQHBbs+GPJB1ZvSpLuWxOqkEWSCkYJRR5trHf9vuLi4nnLZ3OsBjv
	 wZL+sdah5LBs2aY9UrqOt3pyJkddPBLOwz+Pt9H1hWtgA8JXxuhYzUpFXRujKPUk8j
	 383q8FfNwgBt/5JZTO1UTani3HvdQikGwQA+vFBUnObwzqMpDaVyZ7b/U6t2uEYOub
	 LXmvh9+GIfpEpo/bUZtwfYgZj2GIXNJbi13f5IOSS16IzYeT/ZfZvBsKtPu9hGutk5
	 JZqHYEORtKddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDBBD167FA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795303363.17671.7003751006395135774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a33e83084be906b8d5feb94383681707df9e3e6c81f582c575d4b0cfc6852f
Date: Fri, 09 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767953033
