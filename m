Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3078718A6DF
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724971554; cv=none; b=GkYBdRAeyt63oAgOgfC4k+HAp/Qv265hl5nxfLTUdnYLy9ef6M0r9vOVgJJcji4UjyLuVEyGb6tJVkl1vgIa1QIpxbTwHzqg/cYMoyOhDiPgpe+3aLwOWrau4AusxweE4P5PXGdWSzlFsyMx8izPP3IdNl8/KDt7i8KolM5pptw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724971554; c=relaxed/simple;
	bh=2DGq2S2p3wntypZB0gInZJog2FI0hNutSZOljKU7K1M=;
	h=To:Subject:From:Message-Id:Date; b=DbxiXg1/bSKUBE3Oct7QmjmmwuEo0zy3O8c5X9JP9AEHPeBBTpxRT9BDb0MdUCEwSNaoihIV4sSRshGpTINq10ZIX6wSQMO0AsfyeBKy8hAFBZ8MpoImOsrpzV27bedZQqqQ8upjfmPOrIfysLrM77+IRNV8nf/0tdIsWoyyxE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLhn2ec7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLhn2ec7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D0AC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724971553;
	bh=2DGq2S2p3wntypZB0gInZJog2FI0hNutSZOljKU7K1M=;
	h=To:Subject:From:Date:From;
	b=qLhn2ec7xLy46Yv4aZyx5G0G/QKV7Jgln/BUh+O2KNiKZhM6eIry3MEDcWtFjC5kX
	 dqZtt25JkEgbQp+U8j1xH8ApKz360frIwJqrR2Q6wuKa9EN3MrNgpmySR2Y8pmaAxB
	 uivh9C3egoNmgk8FR4Qz6V5YDvxsB5ihqjlKICibOLW9bNunBy8YivuDJeEilb6HZU
	 G51UatlBdKn5kmDFSbtvG3S73gY5q1uQssZ25ReE9gu+czH8vEoNngPJYYW8vPDV6I
	 XfEtMsyV00rme4FxVs4HZDUT4Hd1vVd9G+hT3/kkZzJjN3lf6utyNU7V54bS6GaNhP
	 US7rGv42/puIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123BCA0EC7
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497155358.25356.16519336999050086289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294898991c576161f819e0c34d475b9816414b99bbd5be10afb6582b9583121a
Date: Thu, 29 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724971553
