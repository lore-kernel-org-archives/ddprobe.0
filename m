Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201764C62
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753915794; cv=none; b=jb0WHpQWuTcRHgofDo7EdccHGnmcbWUH4m9nAsFejcexVGzqig3B7/r501Lm8m8FCUVw6pzmtvkmCFM5WrRdSifloyPwHa3d7z6Zn7S9iJvxYbVery+JnQtY4+ttFqTwS0OZ6SeSQ/gR4oGThZhdNDHopYokHTws7JmWO1pzXAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753915794; c=relaxed/simple;
	bh=bCL7KvprL1sQXMIQrk70tKq7ZPdut7M4lJf6NpHVBps=;
	h=To:Subject:From:Message-Id:Date; b=GDawg2+YjjnK6oMZ+fh2oXNPSSmTDvR6PgTTK7qMr/Gi3fbA98x/mMttsDL5BByBldIh3Y9ahrkskGUs80XBmv3ErGh/NdgiouEnerP5O2MXec0XsORjVNVFC9XZTmIVvcaJH4s6e5M8eBZtGW2060nREv9lzU1RWJjdO234vog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVcRKOTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVcRKOTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEC9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753915793;
	bh=bCL7KvprL1sQXMIQrk70tKq7ZPdut7M4lJf6NpHVBps=;
	h=To:Subject:From:Date:From;
	b=BVcRKOTibVpiYAgwdKFG59WOSVw8vz7zx+2gsXxQfzIvz/RuZIgWsbODoqYZO/b0e
	 6Sudd23klDW3XwyChggWEELyQUMo3p962EQKpE0xXSPmPJYw3t+y5V8HQk4XFjyOo+
	 5A9aI/l0sq3WFOC+s2F7ZTNwukI9Loqq5Zbe5sXaluHpZ/XYWulpV5OXO+Bvv1zCZP
	 xv+ukt6WtlttIIx/GRRsMfOQ0DV5tNGP2H5gazhZoGQXpzVttRYFkJZ9MjwBfQydQx
	 cNTR+InKGAV4h+ospcaRdlWXeKL9DIcYk3+fUy9elOovfpFiK7OO6CJg4Tt5p2SizM
	 ygzcXpxAZbFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F698C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391579357.9530.2234410124516791453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392933c4c1a2ef74968af5ba36af770488aa7c73c059e7d2d468126aba26d2b7
Date: Wed, 30 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753915793
