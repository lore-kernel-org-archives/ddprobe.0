Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EA81A9FAF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448894; cv=none; b=hV6gD0P5mCdQBeNFx3z8oLu5scixDZfCapp7fqaxpbL+V6NEF7xA3mYBZdWdtFT+vtImnUzEsZxnKIrekISoeOJh/kq6Oy04i4vuWdyJClgzUUO26kIIL2eawqzpvtiS+7RWYLaZJrE6vHCRPOduLGXpxXLboSrNDn2UY8dIrIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448894; c=relaxed/simple;
	bh=dHYBat9WPyjL/97Lpl0v64iEK/Gh2LqJXazUIUaLzOY=;
	h=To:Subject:From:Message-Id:Date; b=Oi4jYpTzK73bta5ZjbpNYDymtCrpsZ0ZGm+p1ZKQiw8Hykdr/CgUIecWj9wS5lumzWdjxhhtwQlxsIFn5wKi7m0YH9nfX1qvthcrnzPmkYypxYX1IE1E9dO3Z3HEmtgbznECCt22Nlqr4BjSYqUutQU/ICx72+D11Q1wHzv/V+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6ulvMI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6ulvMI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4E3C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772448893;
	bh=dHYBat9WPyjL/97Lpl0v64iEK/Gh2LqJXazUIUaLzOY=;
	h=To:Subject:From:Date:From;
	b=q6ulvMI7E2ooHdGBeFutboS6JkQ7gHZ42HckIITPWks840xZHSPA3dNil+F5x+Vup
	 alR/Pmd5UvwaFpeps7uNY7rxR654Q4lgcDxgsuxLwUESkrvhadxioN6D28RTIpzWlT
	 EOXIJ4Pk+maeNKE8aTFXJYLvpDPvQdukBbptYoU8w/gLCK4A9Z4Uvf+n4WtDa8mxk/
	 m528Qqs7CNqOioU4dpBcl5+/UiGUHZWhRcH6rxFvNIGpqR5SIEEIBxXW3pFV4IFASD
	 m4X7MHbx+skjeKjTdrZ1ZjLHEpsIOsqgxDrN+zK724imnyND0EMi0izNCRFPwEb0ia
	 tF8k/2olAq+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F4E9B357
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244889360.8748.6830220071039550719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71de1e1db20a3a6d7ac141e86e9e93fc817498c000007641e924bf8e3a66be5d
Date: Mon, 02 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772448893
