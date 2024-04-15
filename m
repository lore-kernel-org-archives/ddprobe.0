Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D2F762E0
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 16:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713197363; cv=none; b=ROC86Y2BUnNfQCiltWfEDBaK6ufrr3KdGQIzW8GQY/OH+CP8mRW1ITNu4ge90ymrfdphFyS44GDESFgOraFWd6T8MhnXBUVZu7El5WdSWoWZDw8I+jxC/NNcT+1KXk+pJQGinrMQhq6mym8LJzaXm2kZps/ic+azMKC9s8at8DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713197363; c=relaxed/simple;
	bh=Vo6spsk7lWLGIjAVZrHIQB1tv/YGawY2QgfnnjCqRI4=;
	h=To:Subject:From:Message-Id:Date; b=FdH3mVi1s+dZxIWo2RPm2MEu0GV9gY9Nbt4APkIkBJZblPbU/O5wgIwX562IPWVSgUYCYqCDPO1bOtGYimu77zBSuy4/ffmWjQohiOZfQUf3f0T3EMMqhPPWVoz65ohAHXGsyZ2Y5Q+PdvnX2QPl4qsMZQMyCAyf56ggfEwY1FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO/PdJNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO/PdJNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF5AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713197362;
	bh=Vo6spsk7lWLGIjAVZrHIQB1tv/YGawY2QgfnnjCqRI4=;
	h=To:Subject:From:Date:From;
	b=mO/PdJNC9dY/KzViDHmBZc99kx2lQa2mWxs6wFGJnEW2BgteZe1WAjfdrOZvgPpyd
	 FtA2O+CR9IjvbzIgNwjtJpcOzW6x99PATeyGZBFgcoa0DB8MjeYdHImz9PoIUWo1T1
	 UPlSZO1GzFufAZfGDdusj42l9gJtehbvaNhow56NM4J2CEVPVgQKx3bhHh0albuLtX
	 fXCNZCKwMvP65PdZJTZ55dAKA2y4f5YnC6K1nCC7843T7YXAwhsq91jdHvA9Xkbq4m
	 b+5C3rGPGHmzd9TEhJUFpqRGFxLnXtClwfaz0WrYe4BSXOHpzJ9KfpDH73UT1lMw/8
	 zQut6nDTELWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2EEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319736275.17227.2044889501079149285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56d0388efcffc860db9167a2698942e592ba9bb68b3dd2bc9b628ffeb18fc01
Date: Mon, 15 Apr 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713197362
