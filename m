Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3886C54652
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777706254; cv=none; b=LBjX0EHtGELFRL+xHF1MpIZR1T25sjQPUZIYgIvpNko3CluSBi4gWa1B/gtJKhpkWSkGLSkBio/DyG51hxR1rUUx5+qiUVul1LK3lqJu43Tsh9qOQkciDnx+77lNgrpOFuUPPRnlWGI7agP/DlWHB7/HT57ZwWSwTF10+LqQ7bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777706254; c=relaxed/simple;
	bh=DRpRBQfsqFbksDTtCcwe6g1S89RQyDV03Hpu5OMWcA0=;
	h=To:Subject:From:Message-Id:Date; b=Yj6cg3kCo5fOS2Mt35yqank82QDabd/nhqj3SpG6wSPfgXNjIKmlk1RCMVG/iStUw+Tuj8j4mcS7sAKbCrhgI7AgP0VE6zbMYNXQGyfDpsuXoTbvmiLFuAABLOUvoAK+qYFXtbjwJqWacq7py26luvqBtM8Mye2sfvrO+5E/QCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3OAWngv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3OAWngv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB499C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777706253;
	bh=DRpRBQfsqFbksDTtCcwe6g1S89RQyDV03Hpu5OMWcA0=;
	h=To:Subject:From:Date:From;
	b=q3OAWngvwrSUSM+lGZPPm2+qHi96powyFuUThtRIN5Egx/piRxSz26OYH/LX9kwhY
	 B9yC6wYCJWqYucKw6pifpfIaBBaoJkrCX7RCAWy4yzbYfDvb+1D4WDUh6f5eAVx+ym
	 0RpEuZbTFa5zjrTHLPimDZ8FnWsE7b7ScxiAB170p+pwSq5NZACFmc7lIna5ayL50k
	 NDuVBFnLZ4hPYFcoWvQBdnCkp4X/sEOKebrGexWolBmEtZL+fCpMJlnJJt7rl1j7aD
	 qQ5gSt08SGCEH7gck5YMR/6zwx6HCiauavpkn+X9hFOpxqJs4TO/RQoc71pbFg7nSX
	 azAxeYvxtz3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA009CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770625368.32153.1761682972254355949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca5548945cd68d50af75bc6d972050347a6d7fdbdefc345ea45369d5af41e97
Date: Sat, 02 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777706253
