Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A876837F321
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786923034; cv=none; b=YWb8cotTe0ZG9D+cZJSVbr69Kp3lkE3b7afY5tT3Z6V9JsXOed4+GBHXLqR8eoj6mP/eLB7Gzx5Gj3ZerG2/NsCgyMcF3yLl+5AnfIjkkypvY1wEe9KtTnY0AZIp8b/zpiLf0pg2rwX7j0imBxkM6R+n5Ucnr/j068ErmTo3kTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786923034; c=relaxed/simple;
	bh=SkfaaH0WEZlEKOt+eSTPMz640rq3K79D8GnqOBzjaH0=;
	h=To:Subject:From:Message-Id:Date; b=fJT4c10c/1y8P9Xeb4N4aIudICBuh/yWSty2sxi0QfJ20k5vL8zyrR2SPIv9rU+KfBiJV59aVWxnsMKpg2TZTJd8qYFGbSurWt9HR+n5A+wh0CMIZcdfh6mUjgfLm74ondrQB6iFmADKbi8QSzKCXHZjfZZv7UT3uUF48VdDcIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kv9nBVWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kv9nBVWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC00C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786923033;
	bh=SkfaaH0WEZlEKOt+eSTPMz640rq3K79D8GnqOBzjaH0=;
	h=To:Subject:From:Date:From;
	b=kv9nBVWR1vcnF0dVVfJHl99A421G7KPTEFFY9sXWDxuhXuGD3mGImwCp3v8tm4lqC
	 1tfo96Bd0AUKwJRfBco7fTQdwbbaSA6gsKS+iNgCK690GKspwPwMaMxtQ786GlUiFG
	 yJ8i5TmUz7zsXYT92R41pqNjNhc7lmFNxImpJ71ZzTwwQKxjMJjJ2nkZYfMrN0PepL
	 /UqqtwZwFwidU1Nam8w5qYjVUNkGWHpxQwck/WTKG7a62KK0DQFwlIbYzZE7+4pklC
	 e5axoRfM9SUaDT28mQsFoBW3Kq95Wxop95hcw26x8HERnlsFAdCOE/8oOAd6zX8QGI
	 2R5ANqGxLixmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B663FC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692303371.12260.14024657481156762774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56033af125f56a666523f4b7dbf0a517e166985381ed1d403f91d1254dcf664d
Date: Sun, 16 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786923033
