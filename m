Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477E33DEAC1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783369114; cv=none; b=ZuIqUJgZ46E1QF7c0KEKCTYXN9n+asCh4q9s3y3ZHLHq/7wYG4NcPKLJ8puRHP1UdkfCrHR9j3xHJCk21YUy6VbYgoakaJRvLAL1nmFasjWBCXrwqqks/FtGND2oR7lh0Vrw+3DeVso7TKG35hIE06oOiTbi8o48ecoiG7fU3SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783369114; c=relaxed/simple;
	bh=Wwf8Iq2ZPV4COjX/AAcwV7R8QKsUkX9orp0Hk0NdJLc=;
	h=To:Subject:From:Message-Id:Date; b=hko+fE7CN32+bwraiihiZsfwS2XlFggnkJrT7YBG903Nu146olOv7StlEWmT2dpZbiFAlOEGCf5tCX1bNn6IudiFP3Z1x3AgPn8O0huL8ikxm04FFcOSJbW4cnMRjxG74su8MflUL1YjmElkgfm7O8bdvyx06tl/M7rj/qzwk6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uom3Rkpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uom3Rkpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33EFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783369113;
	bh=Wwf8Iq2ZPV4COjX/AAcwV7R8QKsUkX9orp0Hk0NdJLc=;
	h=To:Subject:From:Date:From;
	b=Uom3RkpcJESWu41BxzZ26XaWVrPyQuBU9pgT4uZ1ZcvHfPe/YMqEvrsV4yPakzMgf
	 p9IwsZg2WdMh0LonH2tKwJ9HVsbQR2GkcI0hn73DRDsNk5witEZV9pIzljW5DuVIfF
	 PbwP+fP819pjK3afF4oufdl6FolhNgTBjEXJdDIfRyj30Too6/CPToe0yvi4D+8V46
	 XjARaDV6FiYC84G2g8rzChx3X43AqawJkBoRsruMLnXVBLNGsGgVki52IPOYr4Sard
	 gg4KBKDOs4b9HCE/90SoF3+xRFwd4xPrnjjToP8aXdUM08q0TdDUk3TbMVs3uZHCDU
	 HAl1wI/S+w06w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0135C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336911368.822.10779866072020758046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed1fb4945df18e987b71845ec56fbcb8b1d1ae84718d7eaa8fc01da616cc1e0
Date: Mon, 06 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783369113
