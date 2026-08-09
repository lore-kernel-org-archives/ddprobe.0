Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B601DE4E0
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786287634; cv=none; b=M0cs8VZERZxYHHcUS6a2MyR/Gmki5B57mqBUDGuomxE2bl+s2AllFKTClxkkj6NeQgaxdh3v93w+zeuP50A5ZjzHmeRGlwNeXmND2lekb9+dX5gH3QqHFZE0CxpeTyCq9Pp3GSZ0LRnM/vKYdi5n1nfheu9+f2fzI//7Sfe9/xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786287634; c=relaxed/simple;
	bh=GkF/HHHNjPo1YCLMTAY13SQiBmrHgxJjlwG9g1eK110=;
	h=To:Subject:From:Message-Id:Date; b=gMKLBQVjKbXD6Rk/XjJAbGTJwipQmLPgdIntdP/HM5jjLN70G5cwNBkaJUC5dD3XFcIvSC8sdJutIc5tVcKzCxNoSpMAB4ckS0pXHHS8Ku3Ee0ljz2gPQrOmqn52kF8N9EI8JFrVPigdJq+HQLAwMAu2HLNjhu1ZLUl3AID9Hg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxZtnLWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxZtnLWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD82C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786287633;
	bh=GkF/HHHNjPo1YCLMTAY13SQiBmrHgxJjlwG9g1eK110=;
	h=To:Subject:From:Date:From;
	b=rxZtnLWh+NSvSzBAMSQR8tvfyopK+zg3fmYYCIqCkjuaPctBMFALMvTv8vMCK4FR8
	 GXQ4uShbcjeT4oD93aRHLo18h7PuYwJAnoQKkFy4VOWnIfRl2EQihAa/qiUZ4Zrs70
	 JUuGqLr6Hy3fUwEA1429gOEv0kJ7BwG4YjQsIiEHNnjZ91MjFfq2iyiHyjwwjQJ9Rc
	 v20n68CmUlwEYkeoxNTkW9zn8p8LcfxDEAP33JLNr+TwEqIwt3+aW6ZmHrUXhHiznf
	 VqVw2w5vjjJRjRUnAXobcQ0rW6ILNKeOUbk9I9J4UHvxZAygvmIVFjrt5HfxikMwlc
	 az4Grb3ke1jVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2DC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628763368.9136.15097089286121415474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c68c5e64513f3ea01497d772d676ae5ba8b353aab88657366caf3ce7ffacd70
Date: Sun, 09 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786287633
