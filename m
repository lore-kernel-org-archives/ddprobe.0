Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2859E20C469
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748553595; cv=none; b=hoyYVjF6RgDEPzoWKUDBZEFymvOz0aDcmbNUGV8bgR3jN6tGp1AVdFSHnHF67JbH96EYFJpAorSDexoO9HyS9N+C/oIzX/34JfIVPiRQczazeYZ2zyr5hoxVDID+mkt9mhOeS88C5xIRZlOE+fv+ZFVSDqcSZbM1su6DyK0+kuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748553595; c=relaxed/simple;
	bh=edrFOIG5RNTb0gx7y/E+2pSMvgcIkizLwNjt/6MhdR8=;
	h=To:Subject:From:Message-Id:Date; b=TiqBL8MuzZAS1t3w4AsC0AULWn5Hxf+2Vntc8UJb6/olaa5gFUI+iTeyTOKoN+SOxFF1rqsll5NC9xGeLz0gceR1hxY/E8wVOIS1t8GrQtZSZyxiutk4Ui2uqnco2Zwb8xSPwVJhOIea1puBm5WLXjCCvgs6ZRpQXV/qiDxURaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0+hQrf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0+hQrf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08D9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748553593;
	bh=edrFOIG5RNTb0gx7y/E+2pSMvgcIkizLwNjt/6MhdR8=;
	h=To:Subject:From:Date:From;
	b=J0+hQrf+mDibtyWgARylDXv0HCvML/s14D6vpiWcWPnpRGQBrrAy66Unm1LCYS6rK
	 5SSI1vI1Zdhgi/sfL04csD+XrUG3cETdjFuRC4zuEadx+LA7lC4AVSuLE107HLY0Lm
	 gGrv2Qxz2wHY0YKAZhQ1GKw5o6Ud2w6S8qtsjHoADyGSAMgglhX8+6KAqFmLlwtKdt
	 AcMf7aNX2fwS73SA9CStRN/fZX6vwnwz0aiWm/30+lFpGgp3Yv2KAhEYdP/EZ9xBYN
	 4azL/HApZfhhHdlLVCX9HJW3iHDol4zv+hW7+pbaw7XU+PiGGGFbYVuiVxO5aepDLE
	 0M1Wx/SJAwBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3EC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855359357.300.7434669962538686458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e7c0ea3b5884860efdcea1be82efa9b5d90fcccad7e7d7b3adada8e085681e
Date: Thu, 29 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748553593
