Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EEA1A2C3A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751639393; cv=none; b=Xo+4BHgUyGvNqrBofrSjNV3QTS2aaxFYjKw2y/kEg/Ak47ACE/8jw8RQT5q+e3eCBTqQGbH1OyO66fdn7re9DNImrckaCbEQwq4huAcdYBYntCJ1HEug7D+2uRYbYP6a+9FBn+a2B6tz8t89o7B1moXHI92RE64zaQ7cmAwQAcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751639393; c=relaxed/simple;
	bh=HGVGPPga5XvMv23K5o3QOUO+Q0gyubqmy6O2FlEh3/8=;
	h=To:Subject:From:Message-Id:Date; b=bMNYZytSLVcjalbemJyKBCr9ub9+Z4WfcsbDeIu7j4EFLXNQyAtUKhZ7nQtNAePQdY5TxZnAzgcdzUD9iJi1OpWrfYhBwqnaKnHQ/hrMcXUmyZ5nLUYOGuZbQ2n1g71W8mGI+a7x0OXC+UtH604wT1HR6UBBEEOp3RGBN8x3EfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/lo97Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/lo97Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751639393;
	bh=HGVGPPga5XvMv23K5o3QOUO+Q0gyubqmy6O2FlEh3/8=;
	h=To:Subject:From:Date:From;
	b=s/lo97ZzpwtC+b5CifvnH90zxIv0bXjPdIRS2Wpu93SVG/jHu5LY7rRkiXHHRJQfp
	 5StYHsZB6UZ0YYguwTwWJEiAuURm/OO3JA6vznk8qMpirERudiRssbvlMGATWDhvj3
	 2nxD/a8+fcKMcUhHlpRmml+oO6Dq+dZ3lf4SPcS3Mlxsgl3J6uGiwGxTW0HJ9hxPeL
	 zYK+yLhrXpgIYSI0p4Mz+di4ac9DBhGjE5nM+lP19A3+I2fouyNWNT9+RSEdkA19Tq
	 yE/J9c33DxjMkeU4fiMjFvKgmC2QKgirKBC6bD1YKEUzj7xYRbRHjhr8UZmdNjjlQE
	 OrsCZL649K/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF7CC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163939357.19815.13637904659797269049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26b76dd5a58e98fbbbd91348f4434844c0fd03f29624c59e0c5dc73e91109a1
Date: Fri, 04 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751639393
