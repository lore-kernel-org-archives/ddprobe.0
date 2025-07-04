Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F211328B15
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751618994; cv=none; b=KgHsnZhLOlF9PW9LIfNDo4cuGr5YnGjMYpA8tJLpWcFUDvM8DleEuWuEYFlodKQjRevoiNTYutp0+4GrLsW1j7Vn5luUi7vw8GcA8KX/6hk8qa9gUs0U8j3fU+KfQCrCkD33tQ9PDO2PkRacgmFcXNzMAISNlcL8isxfVzyrIJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751618994; c=relaxed/simple;
	bh=YFlrKOQvPGZRCXvl0oj5Zc45Ig9kKX+mQ5gxmAnWYDY=;
	h=To:Subject:From:Message-Id:Date; b=SB+W2ztdUfy5mRloiPx7v5Kb+5oJ6/NjjfzAYvY+OC+iWvCM8zkr8NaWiHd7qlg58hZIQnFYPEEYwEYLPV2YKRs/DZifEgc9mvgHHEWVo4ZI6LILWb3tmPiDMxuoBlaw4gy3JhemZEejv9+WPZlzIgmGxteZvyeOeOUJiO5kaPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9fHb4DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9fHb4DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A080CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751618993;
	bh=YFlrKOQvPGZRCXvl0oj5Zc45Ig9kKX+mQ5gxmAnWYDY=;
	h=To:Subject:From:Date:From;
	b=Z9fHb4DVY5F5ZNuCMiG7gN60euPVbRKcWq3v1biW8pzOdpee/cYJiuSXeJZyS7Yb8
	 W3Pvh/GYc8g+9Enzib5/+axrdE18Xo12IV2rzRplb8cQGG1+o54gfk9R1j2AP/Mjwc
	 KCLD9RkqILr0hXlQdf3FcrGVR8C4UXoy7QO89GXiNNLARkvRu87i4mx6N+FvttOwyr
	 NLEmLpcJtG3dRpy0rnUnifzS9fFfl4e1F0yyatUs69jstFlt4M3YFMYreIfmv1yRqj
	 cAFFfxQkKkeMfgq214VRpg04A9OKizo7DXyGpGrc9qB6oCul4Km6oUGRGxxvrN8zDI
	 WgSL9+9LFlBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBEDC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161899357.5255.17413186998926625451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3ff92eb5bbaacea68c1f2a583471ef0c3e7a5d465a03954da14f3f9ad9d518
Date: Fri, 04 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751618993
