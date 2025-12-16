Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294D32D8DDF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765877634; cv=none; b=AjoEM22YyD6NHd+cQc/dFhgzj5kHwCAxAw+Grf2TdloZj7ACkug0bAnxhPr3qQdgGqzWT5+cz0Um1+EXQy0yqLmjs25+mvEjx2qC6U41g02tkpb+AfW76pXmBvtmhlcpZyNGhYnlMfKtzTZVze0IppUvJn1S1tppR3mCxuXDkuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765877634; c=relaxed/simple;
	bh=aRe7/Ihjv34TeEDj2IdNGAoGWac4efn/dDAGgPX5X08=;
	h=To:Subject:From:Message-Id:Date; b=f7xy8NQwVjHgD5SD38wTepc/oxvEyV7SGVWRK1y8X6Yp724XuMzAnht2f6Q4tY95c5MLp4kfkqNjEIEUnfMTJElwPWjj+KFXzTvztKifzum/do9veWWxqPMNV2+l0pDS4qFj4Hw8hhaI96Im7RhiUU4CvhSP/GfeV2ZLAREfoDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWK4uv15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWK4uv15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A708EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765877633;
	bh=aRe7/Ihjv34TeEDj2IdNGAoGWac4efn/dDAGgPX5X08=;
	h=To:Subject:From:Date:From;
	b=VWK4uv15fTThHHa99Wn9+/oydlUcWtBHu79bQrxbVbo9CCHEiLnPZIeY1BWSeXrIx
	 eAvqBTPeadtCRQiPD/f2n8Y3H158/jaX01ehh6UweeJuiFVlTnoZO2WT83gE1OKjqF
	 0gJH4eOzWKqE5U98H4epQP9IW6WlFhC3OtShS0d0p08voxXf2dXJDAK35PGw0t5CSR
	 xQQ8c5h8LI8fkRhWkjYf5LDVldZjLlQnACkNVXz3pqBT7TwJCj0xxekJ0e+h/Oamfl
	 L3ozVJJLsjPmf7ajgz1YT8pNX3+b/F1cUym1R2cSIJhFu8b+wdpqj/+UkAhqHgcQEP
	 dwVvhGbbV4DrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D55D5CC95
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587763360.30495.5728299326692971106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c23513b6f815f679ef5de63be33307ef10dae0ea87f56aaf2203bbdcaac04d3
Date: Tue, 16 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765877633
