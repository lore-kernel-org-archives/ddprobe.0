Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197E036E47F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779317435; cv=none; b=nlE05CGIdVskDI/ug1x47kmonYjv/ZY7dznDaFA5x1bwiVuQhg53Es0XAuioO6I+cj1tzf6TEhcJTcPOwCeZD3LBKei52ri2Gy6zoPP4LmIUKwSsDSnzBvWQx8a4ElWIoFzuEzqgzQ42pnt+AFbqgAI+rPENtYx8u10DMG+1Uvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779317435; c=relaxed/simple;
	bh=pYtbFn3baahpZdwQMZhpyMJ6KpnVDvvDQPAFsNMUt60=;
	h=To:Subject:From:Message-Id:Date; b=K7SVaMwBd7MdYqPJw1hurCp7tbhZE+oWJEBvemzxmcMOPMUHoI4G7+2o0FJT35FaNmaVKSl+HWWKqOPwdO7XVKTK+iSVh5NG1Zyp6PJ/dwS7MigdMdkh4B2famURiFb3EilHwRERa+Ofx77kEFLODHR8MI8XzKI2IHa5FaTP410=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukT2A19q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukT2A19q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA802C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779317433;
	bh=pYtbFn3baahpZdwQMZhpyMJ6KpnVDvvDQPAFsNMUt60=;
	h=To:Subject:From:Date:From;
	b=ukT2A19qho+k+VomzPvE3RpnR5dZUVPLA6gCZo9Mf4YK/iacycLpFrQclOeU8aq/V
	 kwkyaYuFfLKfKnwy7oHRWW/UXo7bxY38mObINHqIYyyUvo5IYTW6bjH90UDmtd9wWG
	 uTRQzUxeX3R2siDXQyLDZ1WXZpmjqambm44S4FI21JSwhWut+zcMxq8K/+E9wc5/rN
	 NuSXDjvYCZ0UPKZ+WJwGGz7vry5rAuTr1xo/3zido5hbYN0H6/WsPBZCA9U5CrKpZN
	 tetv6MVIo1oG33R9fbH65X+/CbavUmn+R8+P7NY8nrISWJ3hinlJDrsxT7h1D3MYR/
	 4aWWS1JZVKMNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03BCCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931743368.12979.809429791323145507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502641fde1770f4f8035ec66aba13bf565e67a9b4f5765e19be4fea8bb672268
Date: Wed, 20 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779317433
