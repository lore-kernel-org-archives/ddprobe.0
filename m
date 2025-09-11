Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC48635
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757549394; cv=none; b=Mo/SL6z3TrAnKwD0MCL+adNuTP9P38KQjnrRWKerTPDYHhSj7clW0vz+S5IHOdQHk+qgZAO5Ve0BT5JTXfdhpuvhI1A+E80eb1+ibGi3j9jWVvqYivuHcIY2DPOnKSHC3QOe9V4kFmmu+PvoA0xYGsFeYkWUFirPGbP2Jbdg8C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757549394; c=relaxed/simple;
	bh=ImIKiOKiF8Xppqfm3+kFSoWpFyYQKmjloz/bh4ZrsAY=;
	h=To:Subject:From:Message-Id:Date; b=VH6/wMCNpMUkVx6sAP65aRwBJ6wQaoNd//PK6/wwyxdLszHVOmrsRdXOvSuA4rTwD9ct6GnNuJLAXp3tTaSD3sxPWKGUMJiMAfoRQyMkE6KtCjaECU8vttB/IC4hoAm2nULGyH8FGfqLp0myP+ovqCRfxam0PnVQc8xrPe6k3Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3xJJK9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3xJJK9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E696C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757549393;
	bh=ImIKiOKiF8Xppqfm3+kFSoWpFyYQKmjloz/bh4ZrsAY=;
	h=To:Subject:From:Date:From;
	b=B3xJJK9Z8n4mz1iLvZ7B94MyjghDw5X7Glj3m8ks+khoq3p3IfelXkDWtFe5HEU7q
	 KO+aCLn4K6/o+P/+zumlPY/3c2W6ci3J20CfS2IAVyFrgmMAUdYSlikIc/nXgFJcPr
	 DOMkXGG0OK/2kUFm1gDrsQiofXNhA+34jFEw3U/btvDVkjnDkXoGjdZ76XyWVeK9wO
	 5q7LGAB92lItkfydTc7ik2UW2xa4coPScrRu+kHvEox8hz09E/0V2eTBpXbbM/yQ68
	 o+7x3gNrSqFyL72K2z/x6iZl5lLHk0ZYDlpyVAp0A2t08T71UKiqznoIuVSXQKSVP0
	 oYeqgq7Z+FTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90204CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754939358.11139.6770932559205556439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e7662cbbefd42147e5173491a1e597116536e6f6e7402e2c2815469f48dea2
Date: Thu, 11 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757549393
