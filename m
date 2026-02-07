Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FB9238D22
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770440634; cv=none; b=QDaegWstAclNXBfP4qY2ER0pNAyd2ZGKGhocV/tS11q4O8H0z6GtYUBCD+S5hp9Ho9ILDwCtx7ulI/JEKJyeqFk9MSzpLkVfR+Hh26j2JaT97PxLA8CXISZBh3qcPuYDHGa5eCKTT3PzjVX3QS/KpxrJx/8XTL2k0h6ZEXNYzr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770440634; c=relaxed/simple;
	bh=GeJ2G+Qv9Mt/n6NdqNtWJvkYYw++S7Ktj2E6xKGTJb0=;
	h=To:Subject:From:Message-Id:Date; b=lgqgLMpwpu/7WSkvUYkd4qo6BCVJAfRl+1KY2iQ6HF+A/GmzpbLhhrryQz7/MEA6WlPKGFPA6eNi8i2yDFOHVJWSq8m+NljUReENyPao28oh7008+nQ+o5Pv4bKDT6vRFMqpAtRqkFbX3p9x2hBuIohQDiucyoGQHuqTP42PRLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoE/ROzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoE/ROzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C4C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770440633;
	bh=GeJ2G+Qv9Mt/n6NdqNtWJvkYYw++S7Ktj2E6xKGTJb0=;
	h=To:Subject:From:Date:From;
	b=JoE/ROzp8CWSvRSUwZfya6f7I4lUzm1hr5OkVmNHKhMIT/VYBqagTLTCAY4Pqc4dF
	 HFkMfeJfgZGOUrMr1/JVxuL5kIJ+HrjnD51D0k4OXSM4nLNMwXTXxEprpmDqD2VPTJ
	 PFziwWJmq/WAcnCR8LJsWMYiOBm16OPJAR4p8/767oc4LLZgDN/aWTZCHu04D9NFSx
	 GJUPz6cq5FMWdKtoXxJP2YMsK4fMDDaj6AHuGKH9xZBL/mCEJvpHKOavbkt1kelETB
	 YUUQ/w3NEjwR/sNzhKLGC8d8i0776aJXVAMHax7YJFSrWIpd7hT/F3b6Gve+E9Aa2i
	 HzL80s4dyk5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96953EE6B65
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044063359.10154.4160103189097134877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916c108057ae85b4d7ef0d29ffbf3680fe794354360619a5f14c3ed411fe6b39
Date: Sat, 07 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770440633
