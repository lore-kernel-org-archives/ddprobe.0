Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7041509AB
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770155634; cv=none; b=Ys1+frditPsG70EUHeVXPUOavVvyO++Q6eGC1q6wwUzyM9/ox/scxhkU9glgHgrW3ZJrxpWML9AAW7UbMWwPEOcNIf9zd0ADS6XrBlzLpltbwsBOk+R791PT5QQL0comA4sWDDYM4LgEmIsEF7wfY6EKmYTUDqihZJwg+/ZjcL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770155634; c=relaxed/simple;
	bh=N3A5uIkyeyyQwqRpxxP17yJ4oWpT3evBOBNAi/Ya7+Y=;
	h=To:Subject:From:Message-Id:Date; b=gkRRU+l/RlIkujEGX4GoiTkxUunvNYMrCpLb4YRlPLIqgsmxDP0+57DELDGXZk0kJKHXSXOO8lP/mwEHX/OYsBPvU/hX3txS2V5x/n2rvd+fnoOSDxnRKPSCmbpvX2t/gdiCQ4ReWSOxnFJN27I1ncMgS94+8/JNhbDNJw9RGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1EwuuBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1EwuuBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C1AC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770155633;
	bh=N3A5uIkyeyyQwqRpxxP17yJ4oWpT3evBOBNAi/Ya7+Y=;
	h=To:Subject:From:Date:From;
	b=C1EwuuBW/b43Sv3CcLTghmQurVI/R4vxiEEwpYc6jZOU2fa3sqg16xn/s6j9HcRSK
	 5Wx6k/4JdIGeWvhA4AFvsx7ktOuFNrNnYYnQAjDkTvnJ3/NPOt98crVTr/LSjxfzTm
	 APhwaYFeyiXHh3+WW5sefp+pG04PBOmsvWzfF9BLAj4CXvEyByaFSaa38FT2sbv18X
	 O8HxIs5YaCaZ7RUCm+KzQ6bRlsEGEpF3c17ggrgHG4bvPHtFZk4VKlFLzynbFh8JXt
	 kcgTEQFOe1X9SX7FiTuZ3cke96mfX8Ut4EVZ5quCIRVr4KQ3rFZZYjGS8SHohY3R/3
	 Sll5aTIGRtdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F4BE8B36C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015563366.13467.18421507037940121704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1e9bbf3095e63fc2e4e7bc5deb744d46f567a393374e406ac56544115d089c
Date: Tue, 03 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770155633
