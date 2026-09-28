Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B51466B09
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790630434; cv=none; b=CxypEzr5PvW9b069o/xrxIGvYMm3gMzDuY/ORCgFpqVUr1SCD0JvDF+wShi0QS88kYCa293OrsQWXQBVjdM9F35eQz3XH3P1F5SUtfEwJLb3ZF3rpqgBopXeoYZk//i6HJ1gTkZeMaR+2UBL5m6svH2h2fICVEEniU2JMPj51vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790630434; c=relaxed/simple;
	bh=bKPfKgJy8nnka8GHDo9FYxEvQYM5GC5XmU345wZFd9E=;
	h=To:Subject:From:Message-Id:Date; b=QhkOHmz2M3bNVMb73PCGqinoZWXc8gwgUlIioGvL4sxIIhu99C3QwTUbtiV9qwO0WKi2l9ygzpLm2nVRlKAUWEIfSDM//sclnAWHDMihURaRVHwxtXZ1nZfl9XGfmhhSK71P5Zj0WgSJo1+doG2mF+YdIvbCCh+Ey4xrfmX1Kg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFOGYf4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFOGYf4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0558C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790630433;
	bh=bKPfKgJy8nnka8GHDo9FYxEvQYM5GC5XmU345wZFd9E=;
	h=To:Subject:From:Date:From;
	b=nFOGYf4UKj2EpPYFLbDhVzWXeD+QXfrpWXcq+UzvNRC/lrTkuKYrd20S1bJrfKBRq
	 2LS8tTmafWKktKWi68C1shBnLOUYcI1vb4K4fUJP3iwkuIkHo7+dWO9r4f7zIarmK5
	 sLWtb2tt8KFGsP9L0CKGo64jt0pp6qyWDrsZR9MeLs8/ltnSrStYihBbKsygekQuyj
	 Gs2t7r/EskXcwM5knl+dhPGrxpOWRNfUWsvFBPC4EPl5OwzMQcSNdSNDpFVIGpPTH3
	 c7koLmJAIGu1H9ynze5nYwRqbHIafyKZPptLnc8mUZx9i/yqsAWV9p4P14eyMB6c/X
	 ZmPgp3KIA2Heg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC3CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063043368.5726.10139212192437888415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74f6b96d4dddea55506deeab6252c49dec8a64ace7052cd6f7e840912d720a3
Date: Mon, 28 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790630433
