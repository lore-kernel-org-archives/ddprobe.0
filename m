Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BFA32F764
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788451234; cv=none; b=fjZM8zsP2RLsD75f+q70ro/siUnanYi2KnkkINcLyIxq63iVFZ3OvpIQCN4wE+U+ZfmuenTK650wLgRP2V64oDoy8RSoucoa6RFgt1wVxXlgvuMlkQ2x1ab77h6h+kbbeGfHcBWj+45f3Afv9cCTC3nWQBzP9ZzEEE+CqHJpzVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788451234; c=relaxed/simple;
	bh=NR6/4XMSryMj+6yiZHY7DbgWd0yF8OkIjGlrbtt4jLY=;
	h=To:Subject:From:Message-Id:Date; b=iGEdg2rBuRc4804RJy6u0iNsgRPL0eQxKC2lpANzUwOPG6tXhk3tQ7b3yMZCN4/+stsvo32uMyU7u+tG5DTfikSu4rbRla6aZ9bhcHq9U5Sbbjz2H/f1hUJ2tx4z2cXA+o18XjWJEISvv61UT2j55+bbNN9lfHs7II4rDZ6/x1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFjSGhvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFjSGhvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36EDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788451233;
	bh=NR6/4XMSryMj+6yiZHY7DbgWd0yF8OkIjGlrbtt4jLY=;
	h=To:Subject:From:Date:From;
	b=DFjSGhvK5JntZmjWtgG/d89NUHfebzSibVbQ+fUT1sHVuR3RK0vqhkJCd7DnUdAHJ
	 gAn/1ZsyzicDqUwgzqjTST0u9RhE6ANl0s3gvqOEaS3d7ABhafaJ6LayRv27XCBlxt
	 kLs6DQE4gxOQOgS0MslxddNsbOB1VaszflpQACZT7EodSNZTUKbC3jNG7VTlhbzD24
	 1SDqoMqiLzAtFD6o84tBMdtbLrAZjedsXMML069Snvaei9pQqjqqUqBu2HpQIl5cAf
	 thRitxi8MTOULK/1mK6rf2Sx4dtnLbPqdFBABl/iPVxSgmnh9AnGxFx9A+D70l52cJ
	 FjdCcko+d0dlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF4C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845123369.15828.12522248586542235781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb8fad3f685c91f7e79d5b10eb6f6964bdd20af06bdcbbece41dc75f62cc1e3
Date: Thu, 03 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788451233
