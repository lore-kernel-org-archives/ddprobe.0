Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF6A367B99
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788032434; cv=none; b=HuMkb3UKLphEhJ6nfB3/Ya0k6Pj7gHhoZMcJr66Wb/DeQShiQC7ogyzIgcH8DEaEMWITjFlfm6KKeAyb3oZNQm7JFpIuqjOKdUmkMBnanaiDcLyoLoxrjQ6WojE6GsRAu5xSWSr1EOwrRJ5l1IZ+xnKX+XsbF/J2x1docsRRqwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788032434; c=relaxed/simple;
	bh=xn9lgUSei9NUKudoBPFegUYc/u5z78Nujncszi+t4lo=;
	h=To:Subject:From:Message-Id:Date; b=BsSivZ/5pPkbTSPoDwJaTSN+y/i6/YOFQhOpt1Fb01DNtvtt9TabRFrsBQ67Zp3xrkwSqGz6zDvp8K2iKJb9aJ6OQ0QEDK0HqFMDwCzd29HjQ8jx69RXf4vJb/G07itMbTTIaWilTEriy3vsBh6GlpVDGTRvYIZSpWtE4+8LuU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXweCjfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXweCjfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD27DC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788032433;
	bh=xn9lgUSei9NUKudoBPFegUYc/u5z78Nujncszi+t4lo=;
	h=To:Subject:From:Date:From;
	b=rXweCjfB+jnvcSufYPZEF6mRbSGSW0BmzDU5kGz2n2ZCEZy3VxQP8tyKPWXpWl1FF
	 1vBQEOnVY1jeRQM7+ZooMEWnUYyAF3OSM/IVtCi5voKUTi2FjvhiZb81zeT6Xk92I/
	 UrQ3naO+e7rf+mBW99XQ928eGiPy1yvi3TqTqp9UbMIN9eK/rm3ovHenbF+lQLJB9e
	 KwMOW/plSNTLVtuzIAKGu+e5I++b1KvQ8PjL9z4baYXRT4C+kTzlzLuJHEYzcL8T3D
	 lEvbbe9uyyGyNrpaz1y5nZ1PocqAuYvMcZlAJnEtfQy3ij+QAGp/HuXi67tfJmWazX
	 BvBPuJHFC0vRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5BC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803243368.18782.11177504931563878986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84962750c7164762e4e71ccf5373a75c419fd1efff57e6177e21feee3182a0f6
Date: Sat, 29 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788032433
