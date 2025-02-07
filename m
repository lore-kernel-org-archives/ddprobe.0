Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0397E9
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738895754; cv=none; b=iQ4MSAKa8Vv+K/TjIqotXT49B2ot2wi517y+yb8fhoSM9c0UtJpbNoHS8/esq4aFxnduAG5calqJO4FUKMyLq/QunJr4+UPuHGQhHYhokzH8iLWQBJ7bfAyJtkqHoQEdsexYNKG6FwohMsBLHrY2ZCr/v96d+zMjNymLnx5KzZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738895754; c=relaxed/simple;
	bh=0796g1HZGNMLy4JQP6ER8hR8xnsPIPeigF8EzqhQyoM=;
	h=To:Subject:From:Message-Id:Date; b=HvSUnBTOcZzAIFEmh32GEKaaBpFJpwtQJ9EaTnvR3yxVUbK6odPXHj1m6WRyk5GvIItXgDQQ18XKcaSV5XBF2dAFBkwIcEdjMgPj1U3H8Ts8R1rkO2oBP8wL1rTjyIEKyxeA9ioTKEuoQbHa10CxPBQBKs2kDEaY64HWEPO8Er4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaUsXQ4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaUsXQ4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF71C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738895753;
	bh=0796g1HZGNMLy4JQP6ER8hR8xnsPIPeigF8EzqhQyoM=;
	h=To:Subject:From:Date:From;
	b=kaUsXQ4xGvn9a8m6YGm6ZEeX/ohdEaO6FwRim4dPm4B+2fMobpvVpePxXbhAwKtcU
	 JamQLrLYA4AqWG0IUfy3FBkbwgk3VaX6dsjsvbyWtcjaQZD+09/EeKMa2bX+b15uai
	 i/G6xderzECQGsaxBPOSh0eJpB9mt9EXoLlS8jCS7CNhNifdK8d88aZ/uIHbowL68P
	 SzADNY6G4+ZUxch35pwlq4t+nEGibfkz2IwWVx2+1cRUkZ0dEeLicy7TpBh73iQ7VD
	 68bb5fgta/7BdMePTrWV7pKCgnhItbSc2AdEkLM1xynNCX8Mf8mez13iHJ8VJ4+ZxS
	 LDx13iThUVDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A304CC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889575365.6745.16606380692287869635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a59ce32639462649b586f0cde64ffe1088aa5704f546d5c2279fd3eb7da82e
Date: Fri, 07 Feb 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738895753
