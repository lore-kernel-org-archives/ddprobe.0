Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254CC2FC009
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756990195; cv=none; b=C18X3mGslqsnL3TjEXHIPmS705hRc4u2mkQNTpk5nkhAEDMkyJKKXtVDBFrn6wPv7g+0Oed9D/7uRhQIMjCEiespBcfPCp0Tcx3tzwgbkMyhi7VMJ6MyW0Z+1+ZAvwBeQvncyUJk4tAlhY5Sg5tieU9/wyKke1hMJv7aASgnjBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756990195; c=relaxed/simple;
	bh=7UaAE89cBpoWzvPnckPvRJ68w8mDdCKX/cdL4UkFtRc=;
	h=To:Subject:From:Message-Id:Date; b=LZFwowdMx/p/2MEFyq1SFjt2/bewpRxdxbW/FqnOo0UpF5YLMhXGYKYIqa7JWwtNLs13rpiccBzrdwcAHKI71iOFpyDKkQQuAm7ccApStxiW+p41T7qzPFahssSeZ9dZrhZYYPRDSUMPjZTKC70E2eUAQySoIibV1N5Rgx4fTm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc5cNtdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qc5cNtdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3974C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756990193;
	bh=7UaAE89cBpoWzvPnckPvRJ68w8mDdCKX/cdL4UkFtRc=;
	h=To:Subject:From:Date:From;
	b=Qc5cNtdXAo1KOkeNOMbBRlSKGIJPXC/2/yLSWv5w7SUviLEZk4Cz/vq1BjPmmPFYm
	 q60wvQL2SIiLQEWAzmcYIo7i0wBKfLMs17Lfwce+dIbbixhRNkbs5Ayif6602UOFAk
	 14g33fIgnS0DLskyIqzz9AvEEXAytDPS5p2ER3U9rgyoVKKYBplgUVQkSrJaAp3STZ
	 E7o4pSczIYzpxK3+/1f/12NtYV1hxdHUM3QUQWDqrwtqJ/cOZEJXwfo7tOeWMSEsBY
	 HtTn4AEmf0a06SPZ14v8RRxO7TQHZG5FBFQJAwcjxNq5poCM+iyPyWy/mJK9IsvNUt
	 8oe9PVyLmGhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F30CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699019357.801.17652327070275632003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e41671f18da203c3168c3a1f5f497654550128b7c42d028906f09a8b66650a
Date: Thu, 04 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756990193
