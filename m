Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2C39461
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733649954; cv=none; b=QonoHJkjsNIDSJSlcKOVu83w6DtdnFpndZ3pRP3ApLoBJ9+j948aqas+WnIaYYjThzX5Excr12DqqxdKeO/FDHWLDAeQVYHhhGQziBQiavkaa2bvXAU+oWkIbv35JCQ7vovnG/94z4mfNTCOejtYSNubSq9o8PIyjcw5dvNWYgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733649954; c=relaxed/simple;
	bh=kfOUsbcf58P3HWjg+27Tgk8vxLbwO3S2mVv3R/0GWSY=;
	h=To:Subject:From:Message-Id:Date; b=g8nh60ajLI5mHyJYWNCboxOykqS4BKyojUKV0MczCMIyvqkmH+eZ6XkOPugnshGXhHQh+gV/m7EE3xIhohzf1SDtaIi9nS2japomnFXNH0lofb6YBwe/IU5kp2dJ/Jj/IzX/d2kuBs+mxm2E5W9xihUKBBSPX3Hc6dxdNZuscK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rpkle3wC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rpkle3wC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B44C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733649953;
	bh=kfOUsbcf58P3HWjg+27Tgk8vxLbwO3S2mVv3R/0GWSY=;
	h=To:Subject:From:Date:From;
	b=Rpkle3wC10wDCayfiSzJFq4xoRGBKyFFYlbNmU+mJdgXX7bc+oEoAUVZBvbvKFqok
	 sWfDaXqgld0l91ZdcPrx9qTNlyvkuLhD1b2Fg1sXNuKe0cCVGATPb9t9oYeZDZTq6k
	 C+BV5kctLsNYvWHxxm72juyZmHO75C7jKKhdTt1Cr/dk2faYR6apZC3KAVn09QAyJS
	 1orh/rfDsqRDmDeSMW4iP2PYcfGVEp0XLsEWnO9uAVDkA+24gw2MG3IPPsFE4Uk4VK
	 bxC43yPlNRtSYmthj8c/AtJ8JOShA9DklAtG9zbfd5adiUKCN2vwOZCNKl9lW9wfbH
	 hGRiKo5SlV3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBFE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364995358.32565.13701210009460057807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc457a0cfb0f6a42784f3a0fe73fec2f1854c85e1131c8bc8bd106fcade53f2c
Date: Sun, 08 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733649953
