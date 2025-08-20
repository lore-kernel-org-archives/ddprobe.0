Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EADC320CCC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755704994; cv=none; b=ud1w6RRR6b4xjqjZjcqpS/urV73iZGa8bLYs/X6fmR3IPRRZ3l0qN2HXa0yNwcEM4xoTKXjCMnA/7xPMP430rS7ZBw0mOoZDn1sSDuXZi48cdgWbG2Ps/4Z/wqvGj4Y5eWv+QOvB9qAe0KsuZFMdMUqUo1BK2kQLnwcL4nSlh6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755704994; c=relaxed/simple;
	bh=8K5j+T0CWwwBwd/mOL09lPhYwU65/N1Q+ws7LmNQg9c=;
	h=To:Subject:From:Message-Id:Date; b=mUwQLLA/t9GfCwTdegyAIETeQmD0bfIxNymf2XI6GU0xGfWpw5BCh3j6p9SJKpvu3dVL2aMAAl4tvyyEWA00qMiOiD28o9KswMzRVmmrPS56q1ICQN81I3SI6ZHO9clJKc7M9oohwzbtYVK+anWMZ2wWPjMq2lNw3nCkPNov3v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBx1JOhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBx1JOhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4E3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755704993;
	bh=8K5j+T0CWwwBwd/mOL09lPhYwU65/N1Q+ws7LmNQg9c=;
	h=To:Subject:From:Date:From;
	b=NBx1JOhkkqxNCxjInOIJj7YvI0IGrV9qDykiIqu4wRnGRedjdVAo+FlRdRF7GayIs
	 o2UEEe5eCr6H+DZhROCg9HZYP6BqcpvBGw2M/nqhL3hFqcTCxolc8V7mjUzp4ulFXU
	 Jy6nFc8LpkHia+xj1ZwdTOFnr7TcTFq0mztippb0dXUIINcjVUhBhgr5sNeXlCSCfZ
	 x1nTrIQzA5gtucU8UrOIGXFHMT/omZCtwB4sjxTGrirfHS+33RJI4phZKosJynsna8
	 4/zuJobNxw8SsZoduNInfJ7aeJVfDVT4IHaZqLurLtmkkuAK2DyQSUMUOk759TrM5l
	 9xdLvk9QfzPFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E4CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570499357.30345.5475229620000567363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769c17bcc36446fd9195e6a7b138f1a8fc0f50ce1c990503b0a61b8c58a70964
Date: Wed, 20 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755704993
