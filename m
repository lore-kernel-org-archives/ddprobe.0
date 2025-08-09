Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0E01DE3BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754725194; cv=none; b=W7gAvYkTtAR0ULsjve2C58ITgRkytuFmOa1aSSNxLHhBJhL5T0eAumwCtnd/Hmu/AwyzJ5yXCzjwgrawmom1Aoo3adT/+903Mktm3/cG3v/EBS/zlamSoW+I+wdjbR4QjpTeV6uB/m3dnWOJdzt26sm7Bx6c3NkLNyeAdBamXGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754725194; c=relaxed/simple;
	bh=dsarPwgOQr0Gonm07JhclOUZyR16sOIx/RLSjeMy1vc=;
	h=To:Subject:From:Message-Id:Date; b=NaGnUM5wB0U3YDFN2m0D4sS7I23waRGjV+ppqL48a1ljbw/RBuwETt0ncJ+I3VCBzVUjQLgRvxnLfEEHS1WTkDb9QmSN36tvGkwqWI7e8nQcMfseYnrZJgXZrFDc1BPpa0UtSY+8+klKrUmetcZSeZwYfsin8PCi5Vy3XyXkFbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoxSPAzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoxSPAzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E26BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754725193;
	bh=dsarPwgOQr0Gonm07JhclOUZyR16sOIx/RLSjeMy1vc=;
	h=To:Subject:From:Date:From;
	b=NoxSPAzSRtM96HlcXrvx2J0cTLEStjBNa2NEvgoakBhVuxB/S76ik+arc7spA5Zsj
	 1TAWYI6GcCJ7E8BJjuXBvWGnchvGgtkOxXZZzkPpw3EntFzVXQj8NKSx/T/j4gfnoM
	 BKXqQqehx7x3DtLRdSNRnXGaxzJLzwW9zoUlwtzfAz6wD8U2ZdbPfQdows+kpwbPbZ
	 iCqP15c/Age6jjDemPtKGsE3FiT2Y/DaeXOO7ZZA7e2VnQWihYJtrSs+steq1JKCpJ
	 ngeRt3SiWO9qBgmNT89gKOnCV2IHvhjDXriC7FCUaXGaNF154hdCI5cMOb2BUcIEXQ
	 w6dKI5ajid/GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91716C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472519357.572.5421579785537607308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd74c6cb9a0d4f296877b73281c56f629aa5f4723d230a741a752c46e2ed50fb
Date: Sat, 09 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754725193
