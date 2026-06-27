Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312AD1D7E5C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782592714; cv=none; b=mLHbz5dl9gCsjeczn8lyFet08RGMFIJkx8OmsnbkjLcP5X8xlpBHH3xmtZDyk7ozwIIR8bQYzLXabK1qjlT03plOljGHuN5l0vWWHsimef4PNJvvV6glCcUt5vitB0PtcQ5HTgu8i/wSZTuUsAjIynDgwK9/3mcMI9wS9BD2Wwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782592714; c=relaxed/simple;
	bh=OonCR5XEpGo8A1H3mZ79ICj08UVmz0zKrsuHvKj9XkQ=;
	h=To:Subject:From:Message-Id:Date; b=i24cs6UffYsoSHyxFqMc4s/Drd07vFOAGKak+xouX2tHegISUEglX832rEW79/MH5LHMkDD2D+6ia/itZTnd/r9mjPn4LdisAdQpO0QZeVw3EpIEq2Kaxjnn8SEUITow01JCUm4K37UZuwpw4mejfk790qXd+ab3egCxeX4tXW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ma8DhdPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ma8DhdPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14C3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782592713;
	bh=OonCR5XEpGo8A1H3mZ79ICj08UVmz0zKrsuHvKj9XkQ=;
	h=To:Subject:From:Date:From;
	b=Ma8DhdPYK6ewPubyd6y9o9upvgvbhY15k1B2THAgh2FGOrfcezE/+487gO4g/KK9w
	 J4smxOLXVwGkpQl4VArpJFA6nVqznNcJjkj/UctzwX2AggXOhK/E0At6wePNpdBOhZ
	 txvaQRB3VZIaBQJJW0Zx+ABUqYGrXCEB94p+0ygBgkyIP6a73oYJgkblO2mvXQ8ZX4
	 XELS6KC5Tx5CRL9RyN4GbZAapfs2Y15Qf1CCr/5eezpfyZ8kMZauXM9qEx0/+gsKUS
	 E7Cy+t0hOkEtRQ2BU9joxr9PswIM47nVnnSRAgYxiyLf3rEuj9rs0+JVF/IQTyHtCv
	 jm3snmnfgC2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30D4C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259271369.10732.8543345871105147406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88761f7dd37fd7aea94ce589cb902f80698e61975e496937e2c5529a43f620e7
Date: Sat, 27 Jun 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782592713
