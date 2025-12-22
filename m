Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C027A103
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766419434; cv=none; b=CukKG+fTy9TbkQw8mEthtEA7drzzYehKQOdYCpJvryurOHJoSqCiL31wmXa5QlZDE2c7W8l9+JEUX0mWWWXv/hH0GrYvOIC4i5l1CNVYB9tJfIVSP2km22Jlg//GvlGiCzf8oeZQxhtqAqkWvISwray8h0Bl3tFid0s9eNZHgH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766419434; c=relaxed/simple;
	bh=IBGyI1WG8y3VTcan9EK80K8IGkhD5zQWz+s6Ixx7Zx4=;
	h=To:Subject:From:Message-Id:Date; b=kx+nLKvx67Wgnw62iBLXai8J7cHgC1xt6yRXAWS9wmdKOdbixL8EJ1FpEwrnma7uaenOG5sWTrogmcZOlGqCGx71GmqNRTyS/lzvWciVv0SFUq2hytLn346mBEx4J92qCOO0h+7SIspewa3T0uX73a41RmsvAYivVlzxXOwVTpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY5wy0VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY5wy0VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C0EC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766419433;
	bh=IBGyI1WG8y3VTcan9EK80K8IGkhD5zQWz+s6Ixx7Zx4=;
	h=To:Subject:From:Date:From;
	b=sY5wy0VCM2z3sOwYrsrTohfeMAY2Ckee9W4oXK+CILjSRZFDnPSxcNqJ2RcH2AhUd
	 o5q9II0ul24di+iidCQ3Cew3jvPj5LSnApuBvWrRMnzSF7YBKMkX5XpvuyyY4PDDWQ
	 qHN6fn/4u2b61CQ+QND0BeDEBCrOpG8ZAcyiEyWuiz4WvcCsfeHyqSOzCdg1kDtJQd
	 60G+Qt9Z8lF13OAF0MYEavPvDZu1w8Phqdu2DZ0Q/b6Nwp20YQY7HfR3FC8/IM0z1C
	 XskaDXZ/DF8FFryHq4m7a9MN0ITV5WyvYi9WLrqUB2BJSdwjo+8vgspa1BkZLo3k1O
	 aWm4hVb2WJ3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D7E677EA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641943358.15947.3039796297160592427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba7082a59e48f2934ed1ee202d20b7a63c66dcb0cef7764cda096aa8a82efa6
Date: Mon, 22 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766419433
