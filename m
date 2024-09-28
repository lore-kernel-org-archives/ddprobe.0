Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38404125B9
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727513754; cv=none; b=FnlSueWYDqz7tVTUm8CQQXu30MBfnGx6nlwHefKvW8ZNXRHt2x5IUnXcQxvzWjC1tfylIY1NLwe8oli/iBs7xR1WGAIQ1Kxds/OSd16HaDgXDva2dICAxXtVnfmj1G9W/9JKfvvNF2bpp6uH9+epWPTCmRPsJWwnugc45n38CLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727513754; c=relaxed/simple;
	bh=Udk+DDVJD21j1MU5fm1jrW2H0PLTiwmn4/xbC+kAXO0=;
	h=To:Subject:From:Message-Id:Date; b=jSBvQdwJ8XcuEtcGPqoBg9BDWe6/T0mokoM/CWsyaFVJPTOqAHtzbyxGsAOa3IUSeh1TdFNg+A1qmn8ahOkvqGuiPqmoZuylzDrjwxLx8CcLc9UNZ1wukpA7oAL3RfnY/7N58+Sq9nzkq/6ndnbT45NA9fv4APdVIgSBfTuUHgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbr3dKi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbr3dKi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A972DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727513753;
	bh=Udk+DDVJD21j1MU5fm1jrW2H0PLTiwmn4/xbC+kAXO0=;
	h=To:Subject:From:Date:From;
	b=hbr3dKi1wSaXGFSuLOgTIv9Jvw1T84YfVPYYHDyA5pNBYnKn3TbDi/FhAOVWGR2pz
	 tN2b/BFUCYM6tZ8gIGYEwDCvZLQG03oLFqayE+fh2asaK4AWqB6rRqOvDV+kkyCTh4
	 4+O9n4oA8Ypklg22oGyz6fQsFL1oPeO1MiIYaJeG9mNeBRp+4m8BBhbFozE2FBIMDt
	 57HMNtMVVK4mV6XV5U+YCnniggY7hyQm17mYkhoDEBCQHp24NnRXXrFFnqF7/YAFMZ
	 AFF8yjc/dXZt3HbSXvnkG7X9JaBmkYu8WRCe2IDKhx+vddma6LOgOlZXpV/U1j7k5/
	 rvf8DCEU5bfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D39CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751375359.14573.15069444535091483461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83059d74c8172b590c42d0eff7eb66827a0bc1503603e5e7156c8cf3e3b7545
Date: Sat, 28 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727513753
