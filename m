Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AED11185
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747624795; cv=none; b=ihaf8LxwcYA2tzZI74KXkHinlQAwnDVrK0OKp5OGxON4WVsZ/5z61oDmEkXkCYMK8oD4GhBVfZ/fj4VC+JMNsVfhX/uoMuFclWhv6fBIEJRb2e9MnJb/VdA4ALyfjtQl/ZZ345k6x9xALWjY9J/aAVdYbB+Z994lRVeHUyNVm3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747624795; c=relaxed/simple;
	bh=b4GC1s+qM/yRLMJX30cNeS6wvpHSHMouP6uvaqrL4vY=;
	h=To:Subject:From:Message-Id:Date; b=h+WEG/lXPQc+qRq+tWGxN8UDRzIIgZ65ck25Z+Mf/73/p6Rw6JFaooi1hWqsmvrRVGzXsEuzjbsBYnnLRjGye84Jpqdil2+L9YO9nRhOR7fkpImksbZl9O0lMN5oHfPTzeULOd69fh14yYN6ZGFsAVRyTcFjjGpWTZtFGyPb8Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSC8U1X/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSC8U1X/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1679C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747624793;
	bh=b4GC1s+qM/yRLMJX30cNeS6wvpHSHMouP6uvaqrL4vY=;
	h=To:Subject:From:Date:From;
	b=mSC8U1X/ajZVUmjDb4cua1didPPWEu/db9ehYS4PjepN2c86BcXJWal20dB72wx3J
	 0WSgQgcvq9GBq7qxj7xo9hDzeX2A1hjOenLRsdI77G2B55M8pBoZXd9/oCYb6Ni2Gi
	 BuLIlhC1QlhvpR9G3KUBo9V0DCh8yviUJXSqpbslvjp76Z/XEiEx14utffQ2f2wa7m
	 9cWTrGzluTxl0gYkcRHuIK9A56PGtF0oPV0K6chygdecjxsrdNPhd9PlXxg2OLdzlW
	 3Z276q6dYgzLYc/+Fs6bnzgsQqHz5Lj1HfRPcV886ErGSndnjn8A3mymVtDCVfeTN6
	 xstSnHhPeOXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBAC3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762479357.1607.5511530493961592303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7deb96d998ea0497a07c2d994b5d1e2007fe7b17f41089e2cfd744f79b955938
Date: Mon, 19 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747624793
