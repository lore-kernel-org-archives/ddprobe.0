Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F6D30F806
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568194; cv=none; b=T6MVsccT5MzWIp0KSgC+PrKgImOQNmcEoP+To6D7QMhHNGfRhvP0LURtsc8vTn9tSfSU2idsRGKwUZOQUgdRhpkTK3+Gjl3g0g99eciM7Uph0PuHXpGGmfmMkUVHOYYtRni6FvaWe61vkj37qy1Rp1cPJzudE/+ODej9o3Gj7x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568194; c=relaxed/simple;
	bh=ffzXW0n7ZnCF06fYAm+GGySiOFpdqmmn4/VVvb+IAe8=;
	h=To:Subject:From:Message-Id:Date; b=INRB6udJqpR1L6dUDn8GmmO0g7bXWluQLx0R5EerjiFviFHUWL7EX66DD0jsv0jz3B/MQPV7E/As/iLSfGvxEu6K3Tii/oLBDXkWL3mTJ0kXmk+DhbvJhWkslWswhCI4vqmkBEZXefdMqLpj3rnR4wvsJ2Pcpv/dSTH214qdoRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBm81zc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBm81zc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E70C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761568193;
	bh=ffzXW0n7ZnCF06fYAm+GGySiOFpdqmmn4/VVvb+IAe8=;
	h=To:Subject:From:Date:From;
	b=mBm81zc441s0pIiox6TD7yXNyVGuHy+v94VWwiL3nh8esqBpIhQou5fBKgAiQcTyI
	 Ba1xj0y33F1r8tPkiGz6mAZtx4nCHYjhOcawdAyf8IonBQNplOdfWxCl9tAuEfh3LH
	 Q4cDFRrM5Cqb/PICnGE28FafnU34qNuSqS6k9NAparSx/klMHjjs67aLfuPwpwwGZv
	 hR9QT/5qVjoPPoUSJYXMHK9Ku+pKNbYD0mx7UtsYYFT4bGHViJ5040syw3gueyehMn
	 LSOvYwvSr8ON2/SFFUbmxSb8KhEIBFdEW2DhLjeGSLmZkOlGVe+U+HyN7rD10714UH
	 r4oYmXw+e8jdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E67CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156819359.27531.3517448768264874280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c2f478c2250164a4de00fd44bc8d18a7cf49d5052e26d829102592f8ef3817
Date: Mon, 27 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761568193
