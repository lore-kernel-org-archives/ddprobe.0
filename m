Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C20171B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785675634; cv=none; b=fIDCS7o6/uFHYeeqL5lzFSiRwnq0PKUty1fLh9U0RxsAR+hcHXGBcvWUbbH6DGKRwROmeNG4wT+vO5ylXohIaOKN9bSDQAnW+aTPVx67cgBhPXdktG24bBXiN7HoQCgVgA4YftaZYjBrmg5J8BaMguaEi74D8FJ63V0ni4mdZOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785675634; c=relaxed/simple;
	bh=Kg1B5BQujXlxCK10WYS+nkqK+U1v5AfdOVjezVbQ20w=;
	h=To:Subject:From:Message-Id:Date; b=SFxkuNTQRjLgIqKLH2Y99ysbUhVc3qmmIwYBRaTd0BbdM4rK+IRJGDkGC9ouNy6UP76mQsXR9tlYzqb10p581TAMkahL1nymCP/joKTDmnz5KbDQFN1AEU4V/7bAY0ruB58OvfpXq5qeHKHadOALjwpGdVP7IjBcg2efcw6kskY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyVDtDN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyVDtDN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20CCC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785675633;
	bh=Kg1B5BQujXlxCK10WYS+nkqK+U1v5AfdOVjezVbQ20w=;
	h=To:Subject:From:Date:From;
	b=YyVDtDN80Fxin4u4A8Jclc8MXuh3bIKTCh9wruC1wxQDb4dSzmBGepKKorbLumPXe
	 ghcT8ZExB1md6U5Pq2ma3m1z1fbRGlb12LAA7vuLtT/BQwFdJ41Ef4rfEp6vvVINv6
	 qqvuMw5A+kVLqBTjtYN8sMWqLMKce4diO2JMunIxEGQUoqaA8/PV73vIq6Ydi+o6hO
	 enYqyaJbeGL5dojJAHvYiX1qcXo7PmBwUouDAH7NxvXPSMre7lMZV8DW7JABG90ON/
	 b5o735k1CnPbdfl+D766sW5HtAc0yS8nNnJyVhIZ1hS/0hSJtLDT9NDU3381wnq/ay
	 1IH6TblDUxCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD78C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567563368.23249.11728828634135303683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082297ed2d21973fe5c9cab60032346d1a6786414f9d981a41beedd8308aa870
Date: Sun, 02 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785675633
