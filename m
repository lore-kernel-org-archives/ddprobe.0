Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281D9390212
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777495654; cv=none; b=lzl0pU+kfACZGuU0MI33jo+v6sGdOKNSJupMA6FefqzggOPLQ2R6jDHv6msMIATlFzRUqPicDEVihcFbVND/kcYpKCfRXcsLmrNwyIUEKg1Dj3qkD4+Ec5qzLc/A11439kceVs7uui5xMFXq1OpxJFvB8QXXHnmGyBvXE3pVN4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777495654; c=relaxed/simple;
	bh=xgFEQaEAelIve7daxHLaG2rCPd0StFQ4h0hlASHl7NY=;
	h=To:Subject:From:Message-Id:Date; b=RBPz5zUKoYjrLHJa2E+0iyFWZ/CGJft4dyYzW3jvwngh5nwxZLNdLP7bc6BFs9Vcswqocxnpla3L5iSRoMQKGWoPLSo6ekuBM/HcjzZ3GauQViz4U1EH0+SHt5aUIoz9mWmMNWbNLvBW+25bx0BzmSQs1r3MS/Mn4O+00xU5jRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CM2zw+ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CM2zw+ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCD6C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777495653;
	bh=xgFEQaEAelIve7daxHLaG2rCPd0StFQ4h0hlASHl7NY=;
	h=To:Subject:From:Date:From;
	b=CM2zw+urKVKOw+WC4sD233lR2U3EOk0Ma1RlssdxMt6za9RBHBh90o7saav6zExXs
	 g9IwErIs4yazIttNpSurDHyLtDPMCzYXbQ4RWJEC174NmO253HWnd6QQBGw1TS29Uq
	 Kpsxxy3vRo/v0UdeleH5i2f/86OzqhdW85xV+Yi4Pdsw8ZUjXzfvFJad9vuMMaBWRd
	 nmoGPMS/KshtTplxoKhXtywOfT/9eukNqeRk0QSZiiAZLG9pvuVu6UUBHiYWD/u30T
	 biLCO7gwfQgbOehLyJiTd9tei2je9RawH5Q8/T2RtWSfU1naI4YtvjZ5DqnRSYdTev
	 jili9QnyccT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABACCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749565368.929.13743135825177805806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a352343b4e5bfcb457a0c66aaeb88e493565c15a44e7149897aace3342ccea26
Date: Wed, 29 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777495653
