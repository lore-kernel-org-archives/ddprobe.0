Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC881865
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713008963; cv=none; b=t0Z00HYgU5ub9jFp4EKy/9sdXY6UnAF5T92cgMVV7yqJ5ZSBkF0BFH/Y/n1Dnvy8kcy32Rp8bW9Xgerx0N9jSPSuuLCiTM/cJqDa8bKb7bfRPd+AX3nKJNAUJKIJAjLQheZOOiogi/3lJnFFUlbgCjC+57QTHNhQEw2xsbLcwng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713008963; c=relaxed/simple;
	bh=+dHEdpcvRk7BHYCNmEOwCa4VMmJ66F4yZyukM9Vv5Qc=;
	h=To:Subject:From:Message-Id:Date; b=LupX60TMhTo8DTMVGqHtTlKpGHXri5O2GmFezcU04/pxIBJ3utHe4CjDZdx1nGlN2GDG8Of3xwZxaElVVHYazQ8llbhyl9AF9jl/EoEsTeB+6xrXGcfJlDUeMc50fgNGEATszZbdvG21m98S7UnmxJgq+oyfWr1VODn6+QQ+7KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdZ/jsAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdZ/jsAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BB9C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713008962;
	bh=+dHEdpcvRk7BHYCNmEOwCa4VMmJ66F4yZyukM9Vv5Qc=;
	h=To:Subject:From:Date:From;
	b=bdZ/jsAldKjS4PXRxf5JacEUfknKhFh6JPJuMs2Hg5zoCoWoH8erUSS6xPnU5bij3
	 NuxoDBBpjWEF0XYf3LgBpHwdH10nFH/3vHKRe8+GeSu1svBl1RCrphFvjcbHNnP1+E
	 VUeSPTTtzsPnAuy0b5lqgslGnNshd/PumKl4MroAkGdFtuRU6tBcqRAcejYMj3ujd/
	 lv1O9ZKEXeKKF82EcLinzs0ddSmRXVDsqIl3jQZTBCU54k6n1Jrtb4LYxY1ADfpwA+
	 h7/knlnCzJyUZm+cvhKACY7+H7NuJHog3xrlMthcoqPGrbMkz1FY0HkHoJYnHIdijs
	 feGwf602744Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C055DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300896275.13204.6839612500406111879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18102938c5f3df1935d7aa5a9b854ea037c6a467bb060f80d43676271f0b49d
Date: Sat, 13 Apr 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713008962
