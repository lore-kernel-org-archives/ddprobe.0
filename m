Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788BD1448D8
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713784223; cv=none; b=Azx0HqSbIQEh2JOXFAJzBTIzCw8KgSiB0yj2K1MhQBZ0gbVx1+pLnsCfEplPTzqkfEqWz29x+6+PXnh64ekQ8vnO/cK42CVHnw97oxGRvFK1rtz34dVZDZZDupD6Klc2Q1qfi5ngKl6iz10oiqDm1ArnHakbLNgcwicDor4PxpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713784223; c=relaxed/simple;
	bh=p+HjAsJ+IeiOumwXnXdlHQ9e6uzdBqU9onZbFK57WcU=;
	h=To:Subject:From:Message-Id:Date; b=QO54cVhUETCPgDfoh12k06/GT30Q+7s0OfaOw4iJwmjzsijfLNfxe7IYY+RF9iIE4Gbi9VkGSmQUKiGhAYwGmq2czrfMaEJM/zQ6fdULRKDOhPwnGwNOeyDlISUjNSvXFWUQYu4RJeJcTg50+4NPV8Ya9gshJyuzWi73+rnElfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=el0F6A8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="el0F6A8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB79AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713784222;
	bh=p+HjAsJ+IeiOumwXnXdlHQ9e6uzdBqU9onZbFK57WcU=;
	h=To:Subject:From:Date:From;
	b=el0F6A8/sTYHl3+AQ20J+RTwO+ldpAdjrix8weBsJ4T0Crh7/wClhZAZPeqBMly/u
	 Si85CqozWym9u/gBW1XusvdAKnSJeHbaQ4yLS7o4ujjecyBiSUlLeSPYwIQo/ZBoWj
	 wxlrjzOKm2zVmGXMlbDnKhWWy3ZR5zCNTd+qQPvLa9Sxp9PMAoT8uxGt7JQQ8T353V
	 8rbaOT1mj9VhhWcfF/ZH0wQXfx21Q6AFOkT4cHhzVO5f2zTJY+P3Dy4zBqqyZNqVPV
	 7N+/RZB017Q9c7mTlpKOMX4K0E7zGWGAl2DLZTEZzQWXzSRHX7yBpriIJ6vN/gn+aX
	 YflYM0VQJfQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D62C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378422279.16679.14715266477166271779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73af0997ea9028b16f83004b36a7badc2549c432aabec641cef4aa6d981c5fb9
Date: Mon, 22 Apr 2024 11:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713784222
