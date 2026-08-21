Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FBF3B059F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787350834; cv=none; b=Vcep0368yLbKgl00lh7+h9I6+wgLO4M07KxHGU0flJJJ7io+lxNrXCwRLVD05wRL17ldfchBcTNE1w1k76gmyw0N1nQWan3z3edEGjpN2kYAFNo6MCMLKbvS0wWGJN7l2qvwS9eItjJnxMqLnThNlhScHKqcYB6949llsl1ybaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787350834; c=relaxed/simple;
	bh=lZGchDXc0BNlyehYfWF8hPiiiCxOQw4aB2JR1JpETNQ=;
	h=To:Subject:From:Message-Id:Date; b=fp9Nh6dj6Co+wc8mOcXis9xp8qNJPS5+yPzAgKRAQaVUA1ZzJE53lD+z2qbuUm6Bd2ZfuIePKKYdVf6TM9Ck7V3+pehzCzKkSVZl7IdGPNt1DqEV+bOCdTM2Qquph/tWxAV1Ia0BbOz348TsMtrmsxs/hlgf1Kz+WE1Xcp21nf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQM/+jp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQM/+jp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B1AC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787350833;
	bh=lZGchDXc0BNlyehYfWF8hPiiiCxOQw4aB2JR1JpETNQ=;
	h=To:Subject:From:Date:From;
	b=VQM/+jp0RmELgknUiLhivvxiDhY0U29Ufr001lNd6x25DIXGtPeiEC8+nlllT7w73
	 963QLj+Grv2U7hgLOJo7cyg3b/V/Kt7hkVlH3uagBl5CneYZy090ZKqBwITzI/BVuK
	 DiXQ0p9kcJ6UXCnr7fzW16rv7cdcVHya+zG5lgCVML6uG5YExJB4AVFdRJMVJCitS3
	 NHWLYe+CNhRlpTdt2cL8wrnm5tBAh3CNHh+1SVmXaHXeJakiSm7v9u6/WjmrXKkRuI
	 rZari0IqGrYdp30pdhLk9D86rk/yaqp3V7ICm7JbrLYqDL2JMUJMef6mrBDHOn4CUm
	 87g2FyobOLhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3FAC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735083370.26668.15935327228747494379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be822aefbd44304fbb341b0df6ce89b57520e09a542e47d89549375c4f57d03e
Date: Fri, 21 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787350833
