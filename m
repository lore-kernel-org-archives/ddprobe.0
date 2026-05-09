Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19751E520A
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778361514; cv=none; b=q2pyCFUoi4aFU3O1Tjeh3BIWd5sP2LcIxo06s8kDEbWWLva2l8n+ZvX9ajv5MxmCch8t1Z1cw3qcL+iGwVHHs1xRoHtcw5pohR8O9Me62ohIXIxC2iy00aT+bn5z0g8dUVNqyt4vgfB3qEyExtaLU10L/yWj57n/AA+J8JP8Yq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778361514; c=relaxed/simple;
	bh=8I9JR/os3KN49PVIRrE16P5aYYurs8ajaoKc0c52gXU=;
	h=To:Subject:From:Message-Id:Date; b=W6ZNzoH0ykLisgoJiZ3stUIaBfRnYRXfFcL6tzFwXSWF9iOB++mSFG6CAXDhg3As+1uK8gJxgskerl33sQtXp+PzEt8DEVgRtL4Tq351pqFlGaElKnY1wuIRDyAmEr2YUQpVTLIvQBseXt13bDPgPt2CN0C9L6AmhfUIox59BA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKKvmmXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKKvmmXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4CABCC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778361514;
	bh=8I9JR/os3KN49PVIRrE16P5aYYurs8ajaoKc0c52gXU=;
	h=To:Subject:From:Date:From;
	b=DKKvmmXJi7kBdSdE57NM4rKeAod8gox+c7GuynhUM1L8wO9MjGALJhjzFmse2HpgF
	 zbmVKbogpFWttGjRsOPz7YicX3M2cqJqDrK6khh8lHVAKxA5LfeaZz5aOSehynXeD1
	 dQICPjakY1jZxu2TPTN5mA9OXpdpKoelk3QhzddmlgiLMmQchgpKBbrwF0krOZ7dMs
	 5v6DAP8WUwn2Y8eBhm2Ho2ImsWxWCt+cerFNnYHFcuQMA67QkErFYF+nwLkBLgUvUJ
	 TWOzXd8DNPc/ljSqiClXm+hPOw61SCv9QLjriy6JKsrCPlDMx7Pn2sQ+gKrLwJu/jX
	 /fKW40lwcj1YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14162CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:18:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836151390.5224.4994714074658789407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b88a99e91d05a368004a78bdd9e413140fba5da87a9339f04382bb5c7c939cf
Date: Sat, 09 May 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778361513
