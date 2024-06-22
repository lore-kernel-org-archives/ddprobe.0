Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3E933F6
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719055943; cv=none; b=GRlJ0A3PC/vBU23e1KNihttZpEMjzsVmR/aAEXoZi1XcRC5pv43hFejDJo6FH2ylhpxGOViSa7DcQ8Y/K2wcCdjyMua02g0RD1AJlRrLJmEEsnx5umw01lf4lj5SibksgUgNT5h9fdaAcLGb9ylXtzkcFrchgCUpYdiB7IIMkng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719055943; c=relaxed/simple;
	bh=JkERKLQ0Fy9CAG4AabTb8U7U4T9w3xt+I8GVxL2XrCg=;
	h=To:Subject:From:Message-Id:Date; b=He/ESVEWYj8wfpIZL4sNxwAuz3pbAabc7ufK5cWVjMt9QCyGsVEHKwBl1z7S3M0zow8y+GOGSZeMLBNGAqoOhT9kEeTBewUge0s/lxIpybrPS7J6e0Q+Dc5k25HafCdbWwmD/lcDWZQAIOB5QbhLHvt/bN4uTk0pbTLk5BD7b+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEIS6ExQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEIS6ExQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE00EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719055943;
	bh=JkERKLQ0Fy9CAG4AabTb8U7U4T9w3xt+I8GVxL2XrCg=;
	h=To:Subject:From:Date:From;
	b=DEIS6ExQDO2uL/d0awQIKLJlydyutdgTz9JqFi5m3GfUdMXF2ZR5HgdeTSBS9brT8
	 OGB3dZ6Tu4L3U9bXDPJBHLy2L6OfX5K2WRUR7cOkEpZvBlc68aKlX9+UBNg9582m1P
	 ynqGhqIsdy08NfoFMmr6WtMjWqUGnizU3CHNqasdrPBBPQX+OuW+EvU3F0huVoHh8Y
	 q06MneX1BuAAcF2Q2UBTBgIBjqY+Nheb53hoaDcpuoODhcbmFrO8nVQ/S1PStLoTq0
	 7kbXScF/Ii2ZD0kTt1EoUPkFcg+bF07i9VMM0AJ1ITZOQwgiayidjKoH5gOW8hy4OR
	 ZrCtmDNsKOfSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39BDC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905594277.4959.13600142996780896688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a7c3c216adc920df48acb99111bac6aa20ebd585c07f4a7416562bd989fb91
Date: Sat, 22 Jun 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719055942
