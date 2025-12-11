Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D15202F65
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765488774; cv=none; b=iGGVnSEoPasJQ1tOB2MggpYHcwUzqNoTJElMiY/umcmpJ85qBgv85C/Pi5JXcc9oAJN43Gpr7DK5AGQffczVnUvYCbq46YTk/NDvpkOxAQtDqzx8D3dAW61IgXtTZk6MxtXao9iz8ZAdgzKnT8oofjWqqQJWC6zb4IF3zlN4Lbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765488774; c=relaxed/simple;
	bh=gyzsUewbCe19rSNOegjZYvzYpYETYxOWDKaIlWDzcKs=;
	h=To:Subject:From:Message-Id:Date; b=ic8S6+nppdBougas62rac2hoOx1gES5NzOE/309rC5QZbnjnMWWdKrQtJSt8/NPL/Ut8CxVo2K8c/oTFFQUFo4z/AjHZwuhiQuhTqRMLQ+diuFsXCZmWonPlbFJDM8bm3gk9aXBZcOWtWqv/UK07JLKUDeUOXXmMZ0VyjEsHGVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7WJbcdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7WJbcdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4599C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765488773;
	bh=gyzsUewbCe19rSNOegjZYvzYpYETYxOWDKaIlWDzcKs=;
	h=To:Subject:From:Date:From;
	b=u7WJbcdVt9SjcSpHWRtoDxOPFTcCdm0ex3jU2fQA3V0SJRXAE1gwkv4sPBCERPNl2
	 eFU386DtSAq3Xc6v/nYKlkiZfZupz1eP3O48qXNfW8Z1qAvJ7I5Ef/Mon1OjpC9jQc
	 JTAw9zARhrT/Lmn0US2seO7aKjLD3sK4h903ZHTLWI62txxBfzB0Zuu6zusOq5YyEw
	 eNhZ6Jsg67WxwJHnASvhwqSIfmjxL2fLTwzArWm9VsuATX9TVB0F1p9CFTqbvNE2uP
	 ah++AXNwgfGseOvJ4V4ntxbzVNjr6S4iBXIWYN8I0HCmvibW6iv1S4kQ7u1Qfbw9x7
	 gKVjW1J7PRdvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D17D43358
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548877361.345.13995822002121917610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35fab2968f81cbd670c4cc5b6e98e70a81e107ed101a993d980d3607951fd85
Date: Thu, 11 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765488773
