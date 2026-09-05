Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424311A9F85
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788575434; cv=none; b=sQbFoc4ltNhKD/Qg0mLffGZgtEJbMfIXBCK/mY1r7s3oIKrjNff+oHzpSMnVszkPnQQS1Mr6cKD6aNvGOSWr0RJr23EYQY3mz/1b3HjS40mfCV5W3C11me+vENuaS+64WdCEeank9xuhLvnUQmUM9l1/uVTRjh3tHdAwBe9CacU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788575434; c=relaxed/simple;
	bh=1iiK5+xrjn54+UWrdHr2aNCC5Jj/Lfh4L+ARqs0peB8=;
	h=To:Subject:From:Message-Id:Date; b=FjcrNuTlOPUXfUfKG7YmvCvGBMGtsZar81lVvq4bnnhXFan+BqEEcPcHu47zRxMz9+U1U6asYVBZyhcYFB2UnibfJQS4TXohTltdqOUT2uP1j2oBXYO8OQXOjadULKHcQgCvZBc6oiemz+7IF4ocY88/VxgrUO3oVILkCWKH5ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/x5bFAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/x5bFAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D85C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788575433;
	bh=1iiK5+xrjn54+UWrdHr2aNCC5Jj/Lfh4L+ARqs0peB8=;
	h=To:Subject:From:Date:From;
	b=a/x5bFAgbQeq3fDXocyL4EEzq20v7XjF21Bu3Hm/3VXbPOGzAsfbirWngbBoNyojP
	 uT1wrkSfquDRCGDrvLx9EZdUO3VkYe+thXN89lC4AnTGkFMdyWoJRjxRbo0E909B99
	 s3G3LD4Xy/1cS1HGT6RxxuW2IaaRkBc2+YEU+avt+XLvxmQ/EeCOnBCZKcF4FfhFxv
	 eoV2MxY0rpp+aZ5nmx6JYaXUvi+mGMSWztDJKMMcoPnZRwPP+1jNQlveLHF2/gRjXK
	 NMRqjwu7Bk08Ps0wEcxFDBPblphBT2Da3aQ0bDcsimhX82XPMrpc5Wp3zm4LfNZx0V
	 VTl/qH+2AcfyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C1CC79F89
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857543369.2700.8642718504827231126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2921f284b050c0fb4c9304e49f25c47fc4f8e6b63c8b166cac9a47f2538ded98
Date: Sat, 05 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788575433
