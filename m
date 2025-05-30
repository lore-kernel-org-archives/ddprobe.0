Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2558227A915
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748633394; cv=none; b=ZXobsd4oKllyX5ZeqhyvwFC8rAZNkLsqVPucRYC2aUoNkjENXoMNfVYwySWaAtc3C5fJq4tny1tUS7Boh/jc0aC3KOd9DAudKPo0HS/9+dEka+nrb37Rmo8Ww/oDUfhs5gABFgjLejnqmIucAgjjG2+o0wCKFFv7imrj/VtZndA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748633394; c=relaxed/simple;
	bh=0+MEBMtXGm7n+73p87rcGW1BeFa74d/4Tbt/jCL2UkU=;
	h=To:Subject:From:Message-Id:Date; b=mUalbM2ReMmz7dEZI6FGFE4mbK4pkCFHptg5ccmZna9o5lSY9LRna1lgGGBTTYFgdWfjaHAaPPzZ+M4Yf+dQpwhN36B4gBXNhZu+hoFr9rrh0C9hVEZZKpzRY1tan4tZZXUex2VALh3RBH1bqEYlCI+QHVnqsjGK+aAwzjkfjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHJ8vkl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHJ8vkl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F15EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748633393;
	bh=0+MEBMtXGm7n+73p87rcGW1BeFa74d/4Tbt/jCL2UkU=;
	h=To:Subject:From:Date:From;
	b=VHJ8vkl588Cs3zU5H7PknAARnhXvdQW0pb3yWAxcwsvPz0iERO+3CjLRb5Rrney3O
	 evFi0b90HvvclHSl4TI+iSG3GsYsWD6jiVMmOvfAMiQMi7tc8w7yWt8wnd56Jc8ldw
	 PQ7c1VzEhKBYYNQFQ2x8n+D1PycOeU+I1pUVur18LQUawA/OryQP+ZAe8gjHIY7wl5
	 XLmy7tBX+j/t+zToKfJJnZOUXOFW+onD9sbVG7aPh2K0OJyNyTGpwhJ93syarjmgOO
	 q9YZVszmVLGQnmh2LllFKAOAHw+O5DhET2xmI/skdUMG5+nv53HTCIb0QTr/DWFD7m
	 aVCyPvh1TxCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF22C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863339357.12710.10698750210106840040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad39400241ec3c2fc6a49115bb2c830eaa5a9e2c794e7d7ae67239534a100883
Date: Fri, 30 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748633393
