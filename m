Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C1220ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739366695; cv=none; b=f30yLp95ushsCEslZlWZGWSgxB1AwumoeDlotpbHLEzc4RMs46EfOoMx+7L722rZPR0VnnlpNV5nyF28jkivH0Fh0r4QgkVET23H59c/hT/RUXAMmrNT1XL2Rr8yLPKgNeofsB/DTyC0ocCOXdOqe+SvNx/0oTR0cqHf7/xEg40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739366695; c=relaxed/simple;
	bh=6P4sWPymHakljR/vJxnpoun0XKKTdg54kx9B42tZ2yU=;
	h=To:Subject:From:Message-Id:Date; b=ELSor7pSxQE2tUKRAkoMKsD5FQ5VVVustMfnP8RyOsLd5NJ7gb33gq6kHPItuwPEzw1C2NE8IY4Dbl/lShJHqNb0RhgmKnoPsHDHfzaPTqBKHx2vgzw8BTjQ5R0lp2oQf2d1T0/0m520RhlSpgk5ZcUqyt2Lti8V3bWGqu9ZOnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6fpPv2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6fpPv2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F18C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739366694;
	bh=6P4sWPymHakljR/vJxnpoun0XKKTdg54kx9B42tZ2yU=;
	h=To:Subject:From:Date:From;
	b=T6fpPv2NH3SmT+aRJgDfyAjpIHJldkrhtboHNJ0I8EaYMWcfjxvaR35SV9BZ3T95u
	 wulWD2frJ0wNJr0STOvlbSQ0zaI4m++vF7vjalTHPuFFEVgVgceUyQBEJvX9TO3fNe
	 hppmKaMntz3lL7Y/di51NtFzzq/xn22FHeWhapKZTqiv7hqI/29TtqUgxDXaV7mBOf
	 MWW0PVOxI7C8EhqYIS8zVwtOJOn3YyLNT4RZoWacUBgDEJ8loD5OY4eMHyiwQ7TShg
	 5mGWot3EyZVEi/G9tKsGc3RJsolzAQ6x+LRIS87DMfKtw9XSWuzAxlAooqF3Z6ETC1
	 LJ7HagKU9jI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DA0C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 13:24:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936669424.8292.2151603783429294764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babc2c81a444b8befbdfcf279f2b75f9eeabd5e8789efbf3918ac0305d726960
Date: Wed, 12 Feb 2025 13:24:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739366694
