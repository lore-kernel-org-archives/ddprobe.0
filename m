Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699DE4A18
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714798343; cv=none; b=LqCvlMMOLLW4wzUfyzmPdzxRxMuRWA5CU9NqJ84BczP0JHa5oRou6d+zpCy/zUYgNwPcCBqGYjCgmYUy6S6XLj596/mNIA/sxLjivWnSYBHTWm4MsEnwkEMtN0XkRqMWAOxfIR24udn04HOHwB5kcgo77s4r7Q9M7MV8rACJpWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714798343; c=relaxed/simple;
	bh=Tz0OG8C0gCu2dzfd018yM62Er5J76H7PDCQMHzNUSPk=;
	h=To:Subject:From:Message-Id:Date; b=ic5yqEFqvAOuVuq8ks7tox/JqcblMil1a8QpVXZD5qI6u+D0PCwaccp1ofGrSYo7JztPDJoH0g3bw4cJgCnfAyG/7PteKeoqRVY6bMsF+fPSfrScdxC+aPd5a5+glLv/HSL1KXvIu00pG/MeoGnfdcZ2mXc4OldOEDhD4L985Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLDuYDgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLDuYDgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1A2C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714798342;
	bh=Tz0OG8C0gCu2dzfd018yM62Er5J76H7PDCQMHzNUSPk=;
	h=To:Subject:From:Date:From;
	b=PLDuYDghnybrTyVm6kp07myc/AAeO5hRT4zrfY9Wl0FUADGQC2NzUJvNloK81nhZK
	 NDTjXHGwBWDlFnwUZuidbm4AI/5rkSr2xSRAl9d2b4pEKH15P9huA4vtiNBH3V9XSq
	 Y6UEcqol87j0+PEEHLS4v7yhjK683vK9+TOLhlsx+rhNcZkfnzLazIHUhxmm8spSH8
	 9BFSXaq3MjfedlSyUKlWluGtUClFueis1+mbjRf5ttfXZVqetmQZtDjxCALlX8rj0M
	 WjOXOZX1bl/XjNFoTOFPoEkJZbFsX7T8Z97Tq76h5AlqNOesnLX4obOvYLMgD7Vfmw
	 1ZTZDGPK3SjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C97C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479834277.23623.5513990968173403401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe8a922c2adb62ad331d217d23098e3ab5738f4cd0ff803e6f18d5930896d10
Date: Sat, 04 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714798342
