Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A553146D4E
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715589743; cv=none; b=DVP9yIkLfUMadunWlp27mJ06Kzls5QPkC68itOmgZ5kG4wAB7ezlj2atDwEfwY0hbF4/PcnkaVzdear2aimTicw4t56vrQWlE9mH2T5rQIb05eFzK+Ea2ZGZQsWuq8HMRlfyxYTHjeDSEkDnfFh8UXo9sHbqXd/IBPhThQ0DpVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715589743; c=relaxed/simple;
	bh=A/xTFvQSCUWcy43wHTOdwPOdE3qjFafQUCJN53NseYM=;
	h=To:Subject:From:Message-Id:Date; b=uiWUK9QhYzYMVhLSYx6OjMgPMXPevFduc23TT6bWdhs1W886NU0qjWJ273PyUIKA6RgIygFYCcp86A9Xe/yb3l+99zbyqlv7j6wf06f5yb3fAHGJR0wyT8N3X3I5KJXOBrGpa9zfnGYs4l1KoHNQE3jP2eDHnc+WyCUwRPeVtFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLRRx6/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLRRx6/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A284C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715589743;
	bh=A/xTFvQSCUWcy43wHTOdwPOdE3qjFafQUCJN53NseYM=;
	h=To:Subject:From:Date:From;
	b=lLRRx6/a4ZUZwGrAsrjjX3XZoBILfw/lpHrtilzheOfff/oYRmcq1DtyATFkGvKDp
	 2hPSZqF9nI60ZZCwPVvZ/yaQ3iOMcKYNtr/lV2muRLNY0G1BTh8BCdRLiyOMQcAsnr
	 pGQo5bI8ajzoJrAF8Td4k3p1eK4UVdA6y/Y14Q3/URZ6gXgQw9C8YJnGTJJKt+ryMO
	 t+WVk5UqM5+1Bgd88qYszQvzZ6WrtgDYu2xf73/1VTL18cNZ6hBiCOb7IA3xT6gFQ+
	 sIVHVlApBhxZ1sVFf6xlJTTbqURgbEbDAoTS/5U8316O3sfvgEFXtsj5IR3vq2h6eg
	 HOuVC24KGythw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1DC8C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558974281.19189.1011976243300525867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcec0f71852af6868624b6698396c51c8a46909305a02e0d1122485c8801d69
Date: Mon, 13 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715589742
