Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408C1226885
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739825934; cv=none; b=qt8IJnCewJPT++Eisfgp3U656oGGSY9HLy8NzBEPnt+xjusXOMLRW+2bctjvsnvcJdllvcBkd1Y7Baj8QmIRxdO6FQ1vT4Nd29D3TgOI98M1zBE1LJpmSBrCMjzUJlKgORVcQbm7OulyKanjrDIe6Jjp83bxg8LGRTgHs1R5Bbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739825934; c=relaxed/simple;
	bh=pdHryPYAkqENu1mK1oR28G7nXObZMb+E5gTIWrj7JK4=;
	h=To:Subject:From:Message-Id:Date; b=TtLgCESVGQVPUJulYdwYuJ6afdLqvtfUaUv+YUZyQ1mz4pj+JLBtCZjDw1dwYcBF6VpUI4jLzyAzGy3u4XKubsn8YOHuIHvqNGAP8f7hH+GIsaOZ0ec0dcR232tQ30p/TNHQYs6GaxeLzUu6qqeWApGoYk6OSwB1KHHlz/mWLrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9D+uytW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9D+uytW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8654C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739825933;
	bh=pdHryPYAkqENu1mK1oR28G7nXObZMb+E5gTIWrj7JK4=;
	h=To:Subject:From:Date:From;
	b=c9D+uytW5SZXTc40SqjHXsNyWR28Lx9q91/uQ/kpCObFRnREOgNbLwqx9SqC1/iF5
	 TVR0YIDcNWO/wR9qIJkhzQ1gfYvRHl9qzI9dpY2FUanlZ1lmN6rp6IHGOy3/RTRX/j
	 Mirp4n9o6+FK5ThB1OL2kTIF0Svc8PVeaOyCseEhT4OqB3Mr6ozaDulynrS7yDVl5o
	 wC0wttIdhf8njteT0WXc9UUYaAP6Mn3qLqB+ILQESCgBoRXFIABDC9Q/oOzom3Spr3
	 vMWCPqB8aACO1dJ5VscuU83ZnI4D8loRqJO4nPqvNEdQnQEv9raT1Yf+4e91RL8eNu
	 jcBfntqSemYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94587C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982593359.623.17384361327205890045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a83f7646a5fe3ef59ef2f4f2aca2ad882a8755eec5187833f292f4cb9d6544
Date: Mon, 17 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739825933
