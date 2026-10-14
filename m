Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D75636DA0A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792006834; cv=none; b=ZijgBNTnb1vzhMxq/j+e76sFwDsz+aXPOCYZK5lqZ8v/u0Niq+g3I8EuYPF42oYxp1ZFwXEsDcsHoAKILXKNmAPBF4htVajSqWBLasrqs5A7BPig6OKJ2foZBEDra8IwHgzXt8CBpbuA8jJR+jyidIa9mkaHP2v5dNRPB2d9WQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792006834; c=relaxed/simple;
	bh=JC8ZLl5uKUflV8hoj5C2yFweoTAE0R5QqtWgA0xgxiM=;
	h=To:Subject:From:Message-Id:Date; b=i1drXsiuGMuHbDYuTC1WR0vMpg6sXIAOc6ZqbJGXeznU7Xg0gZfOaibIkIw8QZNX6xU5gu3e8WnCfATwROfpwEOgucaSPys2fJf3BtZv6Ed3oFl884Zw9b5vn4bK9uzw1usSEUImKuE6GwIG2H95IJEt4k8Fq6AqbIzPQJN6PwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElInVHGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElInVHGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C294DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792006833;
	bh=JC8ZLl5uKUflV8hoj5C2yFweoTAE0R5QqtWgA0xgxiM=;
	h=To:Subject:From:Date:From;
	b=ElInVHGDWj8jvcHXWvEydxKm98luYoRqMOPNHalpIrAb3M7CjYIiECG9f4XU1r3zB
	 atbFuV4e5I0+MV42Z26GZw2GETjD+0z21dOrdLaWGMvTAYDc7QfhgDKHUsfi7OZmDg
	 N2b/qlUrlzR/MN+Afy3/OxlLNbT9vr2cRFQ2mgy0lb7pumlyWfVNH96IvXnmcDs2H/
	 FQlqMSRLW6SDuqkFxKHW+ugGzlrJg11YX6IkpRuwHp6v7dxWkeghu9KFsDOrJx1fas
	 nX3v2+y84Asmg1cfRwJu1zvaF6DUDAUr2oNz1T46Cb9X18kZzJLzmGJhL4GDVKpvu9
	 nrlN1t+qSoVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC09CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200683370.30593.14009667487715456533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf3afa16916c7a3d54b81ab2e06f5fd4e09e89879cc17359228c9c0c50863b6
Date: Wed, 14 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792006833
