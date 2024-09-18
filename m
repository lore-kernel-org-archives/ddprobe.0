Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D72189B86
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726661154; cv=none; b=aolQCHMM0vgT/UPPFVTTdF0sjIqOQzR/cafXUSx4c1fAEFzi10nDfJwh6IqRSpR0ix3u7rZ/ALW//k/9RtMIhl6HpHGJt52TqxFJ1dQHW2r4fxT5e+LrjR49Gt5VmVSCc20zlv7YFzgElenjNekAMXEZ1ud0AdzpCMbfXC3EWLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726661154; c=relaxed/simple;
	bh=Xw7+S+DaHnKKQ7+2zraQvp77qTXiG2mPttqflIReWZ0=;
	h=To:Subject:From:Message-Id:Date; b=gScE/5Fl1HubqMgSvM4u5znqlzMXuA30zDVnf7X95hYt3tG+3Gy/Zz3g7CSYc2HJhzX6m9YvnqBl4zTRyw51JYY5TQf7fqEyGuhK099aHwwMhNepuh737bOK9RoAuapOsEAp441S/EufPEdmZIvHVrQLhrGcqDHEWm1/frq+TZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDK77ehb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDK77ehb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A626CC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726661153;
	bh=Xw7+S+DaHnKKQ7+2zraQvp77qTXiG2mPttqflIReWZ0=;
	h=To:Subject:From:Date:From;
	b=IDK77ehbK4I5o5ugy7j2Bt6S4vIy41Mak05QS1nAWeUJ84frsF2vDOE97KeSkRTYW
	 Pi8hwp4TQsohSY5bAipdZkVlCUnK0m3aVOCBu85AB+1z6ZsKCOj34lj+/GDgYsM9za
	 HvjjiQpwYldG9djtS28QvubBZwQmkRWrSdCdS3CqOHVIUDPNjYg8Zq/+zUg0rdL4Ju
	 0jNEiDIoHfBcZChft7M1gqRnMDvyyuicK9bBF17P/pf9Dqy+qElSLQYzG4DoSYNIl9
	 OCmDBwYp7VV19EjVf32SPAuZIY9JgyTcpHQEs8cZp9rDwiOi3uVd4YG5oyOrf/859l
	 XY4kspPrEVTPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95162CCD1A0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666115360.6539.10864902384299553982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a388ab2863f362e8e151f73fa2ff021de82b05d5f50f4d9d15108c0dee0937f
Date: Wed, 18 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726661153
