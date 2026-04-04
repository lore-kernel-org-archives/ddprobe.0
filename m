Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8D51B142D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775282134; cv=none; b=tZCioJsPLAyFrGoUd+/ipf/RTfQd4JgKhJ7XgWHho3ylksy2DmNDhF4wdMNoWq5Ir/XtoPfqKPg+MtPM/ZzkxfL/BObiLDEB8Pg2tHXQScPw2FsGzbtA6M0Z6JnS1qmHbGxcZcel1MuqtDUCNTZDymGtuhun/bvdO+05TDsELUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775282134; c=relaxed/simple;
	bh=5A8reFy7lSC6GV/OtK3KtXJqzJENBFj3H33Cn4u389I=;
	h=To:Subject:From:Message-Id:Date; b=t4cJYgVwsa6DTxmzKwKcVaxrd7NQwGt1flgDRPMtJ75xyt1c03ajteVtZEZumSTUcDWe42T2hVybQ3ZZWvhnAbE4aSRArDGfOiTY8SrvzOiXZbvNcL88wn8fu4lRC4GKVAkmlxxeQgKdS2OXTO2neiCsD33s5YRibIZ5mQAkDxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzzdjUSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzzdjUSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2993C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775282133;
	bh=5A8reFy7lSC6GV/OtK3KtXJqzJENBFj3H33Cn4u389I=;
	h=To:Subject:From:Date:From;
	b=GzzdjUSolcY2wiE/tMAIpEx+OXo3BLshP8LKQ5eUewPMb2u8uXiHRwmXc+ei/PuyS
	 wklzZwFU1ueMSpH0YOugn6YLHG5xATl7n0109BUjmyUeNMBT9UggilMo0QGdRrNxYD
	 d1Q+HKOVBttvO+WeABNDHYOsM0QaRUPWztX33GaqEMhYrJvSvnm02m1/DjUBEvLxEM
	 J1uKt2D6Z5NzKO6XBr10Y33RpdDOiY9y3bCt4UAcXPxwJwPq7Zc3TEzSdhQUq1nBSE
	 wDmC6lM9CJLGY+SmSKvwunzx1XOKEK8HA+xNQqDPn+BBfB46QftKAmOXVjTFvUKC2I
	 E20FemAGgme7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97EE88D88
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528213368.2638.11107077675927868046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8dc13d6bb6b1624d812701e81e7af344831a2826569dbce2091b350c35cbd9
Date: Sat, 04 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775282133
