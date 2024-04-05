Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E675E171E5F
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712340497; cv=none; b=K5v1SQwhfsqGF2pVJsMHlhxpVjfqX0G5mu2KW9KNDzHdqRFnGu2SNH5x1jjcBdvR6GwxeVzDVnMfKhujiusGVi0C4y7fHw6mW7eCyPRXj19DB1i8oYpKdzQra3oO1VekFIzUEN6P8erpCRsbCslnl7qTcsWHvMS9kTeIn2jVRes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712340497; c=relaxed/simple;
	bh=CPyN02KCTaT9mRFwjCyieDc36S7h0b7ZFWjbBaNVcrk=;
	h=To:Subject:From:Message-Id:Date; b=tO3pf1OWSIOI4No3YdP56bs3MPoyulSBad1rkehLjS6rmdGf8ibhUvPs8nerqIW70zOwRSN8Z5YAdScwFOCljnm2qzMSp3zpmyt8V1IUGz5vlM0nX6mq1zCE8TwbszX+rNCLOhfwynn7IMK0UMckPzPED61qOoosR857gUdKvpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk6YJZBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk6YJZBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA79C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712340496;
	bh=CPyN02KCTaT9mRFwjCyieDc36S7h0b7ZFWjbBaNVcrk=;
	h=To:Subject:From:Date:From;
	b=Lk6YJZBj5/YDThpx6GkKRpQCP7rv/NH4i8LwVVzTDjAgQ6eSAhdGpvf2i6mlLnrkb
	 KEv78q2PEuxDmlmT2pgDULhOg54/dmYY+bzSUJLfegszAYB2njvTgEB3yd2Mu/NRhx
	 IzFjUBwAscLrmgmtmfAol/rRArRT7sE05VvL/LHavDUC9nGDUoVrRsAypK9D4LBHMl
	 51NYalwep6vxHfBSXYQfo84OQ4EqFqh1QeibK2K2EvXajoPbwLAKcxI7Crd51tZlrc
	 zNmZpB4xvbKdltaXBvZFDhHRVNFI6VxSJ7LZBfbXzsPlHrarkAlTwmFDu43ZVjk9tJ
	 XpeWBe6LYgyaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6038FCD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171234049638.22486.645570203892304695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4550a95e0065512e381203abf5e42c51246091336b660af830e81bb880f4a68c
Date: Fri, 05 Apr 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712340496
