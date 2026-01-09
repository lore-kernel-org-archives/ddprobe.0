Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169D73242CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767994434; cv=none; b=pDh3WqF5bhIZRnEkh5rvufB00brysnpolj8JLavLh82GmysII5W/T2g3HPByFi69LZVn39T1DTOFB7tUvzC/dXVCWpBjd0bEh+rbIkQNpfLRoC7GMLLUh3bqOSbumKs7s0Xv3tXxfUFwrChZ2Zd5eEbP6nK3+aaFv/8gF+LEzLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767994434; c=relaxed/simple;
	bh=q3lTSIwlX1+EhR+eAcRyobMcGZIAhPAJtpqVONc1MpY=;
	h=To:Subject:From:Message-Id:Date; b=Z8KPxlR0kFbmAJSxDssACjYxNOB0h/qR0dthN3f/5xmv7l0xTk+EnO3GUJj4rO3brOW+kExcbWnaYCPZd9TR/OUbazCMcyhnZ4MnIJ+ZT3KjU6pyBX5nr3Zv904pTPUfi6AXIYXMVw+x6i94uXQ1sud3ShIuscKuctxFYqXRRJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD+mAc7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD+mAc7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A077CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767994433;
	bh=q3lTSIwlX1+EhR+eAcRyobMcGZIAhPAJtpqVONc1MpY=;
	h=To:Subject:From:Date:From;
	b=MD+mAc7tG8AiCQWssA3TdGhSWR4q/9Tr8LDxrauJTgEqzw0/fGEtt5gloMDDH5wPt
	 Ue7yHgvs//EuqqxJtexVcx/LBNuw6CzCY34eWcMiWitttG6Turlj3fNRrkIfJzmtFi
	 VDiiuBhTyqSdMbGXr5Ufqiu6Vv2KR3joFF0XFKM4rsSLSxYXyJ7HyNeAodPY5uYjRz
	 rio1OZxrBT8Ln4TcZnUa/TMgIsdExwZKnl0SDyk4cYA+8ToXZX4R8VbE/uyeVcp5ZR
	 S30BCyq47Pz5BVnCYj3Y7tT7ij2rcGHCNr4e2VpKG1ojmbKvbDAznJApu5YBQBXFQU
	 9ykallWjg94Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F9D26D9D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799443357.2594.14567012589122158311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff4f228c16890a18f8e8f3dfe7af6caace979728a1cc7247822673f3b904407
Date: Fri, 09 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767994433
