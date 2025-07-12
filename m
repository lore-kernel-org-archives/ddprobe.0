Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4264817736
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752364194; cv=none; b=aGD/svJBYuuyPsLv8x7rBNgH1SFtZFlQBfDSeXUi2SAt2dG22zKx6j9RiM5uYTTyuY979bZHP5VpCI9IMHdHNhF/LYWhosOIwJA6j3SUEwU2VB4c5hmz8Z8BgX6v0mVRwsqCJ5zpF52kX1SZpsKjhNzI1xFU/g0URlHwmw6hZyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752364194; c=relaxed/simple;
	bh=3H2D/lXaulmxp8MN5kCfuFGIAm3OaFWxaNcbkX1KoZY=;
	h=To:Subject:From:Message-Id:Date; b=Ff5t7KEutYlpCTy9LbzbwvdEYT/gjnZH5M6y4RT72b64y0MTSEn5YTq0CuxK9/mfhvYFBiWj6+Y31d6q+jcu8/41L5vcAkKpFl1kB6C98vyh4SETaAe1MiNlq9Gi54dmBhV1akqQOgirRsH5bMme/qd8ilL8ZKV9v7fuR6Rieso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na9kS655; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na9kS655"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C2CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752364193;
	bh=3H2D/lXaulmxp8MN5kCfuFGIAm3OaFWxaNcbkX1KoZY=;
	h=To:Subject:From:Date:From;
	b=Na9kS6554OxizwHNlttPlabkhQBErldms8Hnq3zCP7+TYgI+iuXpfrJDTuoXMMANj
	 DkcbECQx8+D470FJLkzLKUlwXKLNNfsxJeuLdRxZoaUw4tdE/G0WKiNk0BF4hBAxt9
	 fz/0wOrSKWim++377FE1YwSAhlH/IxXm+0MpfZ/rfvQlYaXn1QrO51E+kl9RPBrU47
	 qmHN4j0uiiLO49UzoC7TqUky5Ms+1vnunjOU8NSB7+Xi7YSzdYBXxhaDwcbYxNNiWm
	 qG9DyjsIl//P2s75uZOO1vdRGyzsSMb3oUecyucMCkcvNuurtJsg5BaBGrW2gzWM5q
	 9GaqlnNEtVxrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC84C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236419357.10396.577486709715583889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5562ef72db02e20f961b013f6cf032e4b2e2bac6c01dc1e3fe1c7d2b067d2fe1
Date: Sat, 12 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752364193
