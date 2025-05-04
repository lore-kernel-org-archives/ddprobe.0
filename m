Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF504C83
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746347394; cv=none; b=DlFY9sLJGHcbjpjfITTLtVjSBf+FkAQXYdjdDZJuAPAHywCDqLEMdwQwoYsU0i0xEMc32WYaRBuBtVZr/iYpt6PJ3YSA58fy+06zy9a/aYqF8C6BhtBFgDlupJi5FNIoIjCu62gB1N/UJX3GNMu7Rwc8U3mXJyEDgXMPXtP2QqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746347394; c=relaxed/simple;
	bh=CQ1WMaSqAQwxs8Dm+uhqqznnj6kfRZ7FwM6DpYVFZXI=;
	h=To:Subject:From:Message-Id:Date; b=KVKBKL0aqYVecaUZ1IsV/+pUopjwnQuOQAxeInwz1OrRDyHJhTo/V55+qCbnVKmVZGM83qk20QqcDbGs7uHNac9LUkgvGV16kibypNT4XiZms3FiwYe7YUiA/N8c+UkKpvTQgtQ9bJq3kM2XZA7l8T0f+mk4nNi7Qx6lpAETSGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEwtDdjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEwtDdjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAC5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746347393;
	bh=CQ1WMaSqAQwxs8Dm+uhqqznnj6kfRZ7FwM6DpYVFZXI=;
	h=To:Subject:From:Date:From;
	b=kEwtDdjwYCLPPooY2fPZwUwHhONNnpv7vP4AcYrCvnEwT5mvCqVqV8bi9QcNrYOyW
	 BczjUnnVOoG0yODQUHTSzSex8WdFNaXzJ7dQaoolMGkmfhg4yLRO8P6kEZrTH4omkv
	 usGLzqdLrnfdxj0aQ/8TqFMnhbPyHczi9/mpPneel66t61Vgu2XivqHOOJu8ngytnj
	 2AiN2ioxoNB7PKWdkG1f4LvZVf1b51HB+LqL7ZGb6MfB9ZcJBSC6p8Ik+pXYgI7Kt0
	 zEOHRXcHa5/m3raTTVjB9NJVl6F7UgkCGBzyT+iZRMzJNR8PMMKF+1eVDPpEXqQ+bF
	 bgOQ+wQETFWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E372C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634739357.28745.1030321623919485420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd956cb490c6942069c14f99876790a7f0339f7bd771dc08878cb00391976bb7
Date: Sun, 04 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746347393
