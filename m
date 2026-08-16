Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2BE3D4116
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786880434; cv=none; b=BG7UU1ElAJtFYly0M2SzmOwGUx/VYuUVidz5mGCW/9jwlx30GugIdz4My0QIAae9hztyD9HhR9oIaGMiKZfQm7toAiRVhhOGsRAV00/tmR4Q2Xvx+uMb1aDqf6ERznGOQ/8fs9IifSCflQupTrwzI5eH2yFn604jfiBThQwn4DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786880434; c=relaxed/simple;
	bh=zmRFIa03APtaX71hoUubWlQ2nmiL1jzStYloEkXGDCU=;
	h=To:Subject:From:Message-Id:Date; b=Gqdaytn2dDrx4YyTXkeja71gQjtsqKj9rjlP8BASxFHjLeOkrpqsds5aPpy2ANBu2NU4YteyXo6AqWV8X4tKBDsmAiUsNwDrIXlSELv52IVtFX1yM+cTFue05/cxAA/xe6btNc8eOTzYzaRUzh5PQruozzC62M2WcgYsL8VZ2xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLOsiNsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLOsiNsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9F7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786880433;
	bh=zmRFIa03APtaX71hoUubWlQ2nmiL1jzStYloEkXGDCU=;
	h=To:Subject:From:Date:From;
	b=JLOsiNsEmhfunJvZB8ReOW9d8jEXToMpEZ0z/l+/nDu8CBPVNDjJRjPRHfzyFB5P6
	 fRTSY/i0mDWSZ7gPj0be3pPQIgOVZqKQ4RLlQT4Sv2yU/CEsnpwdFuW+iA/4kxxaFt
	 CWkmBwW6xGnJaU5ENOlmnxswvC93GxmBt5SO2HzIUgUdEa5+z4F2J2FyGTlI3ukc9R
	 qcYshGkqigHz8Bmp3Ese79dn/lglF2id+pDG0DGrUEs/tfc1JumQqmNAAT3vwy/AlR
	 MsEypC/fY0q4oaR0IL7Ck7bKO9OpFtr8hFdkC6PfwSiu77pt6axdORyoW72tD+HhtX
	 D2tefxK2er/jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA610C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688043368.7871.8794747719119577546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d2d4c740ab5f92271a6e0a3928d65c9e8b4f63fcfd527993708c4112c50ea3
Date: Sun, 16 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786880433
