Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CC939A061
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789290634; cv=none; b=H1Nokri/3IxVvzNgg60K7CMqFLrPLHHbzJVtSSZFgSKbmVN9GsE8faQhOnBs8+5h/FVgPbqTWBov76wUg/RmywDl5daev8XzVohBUS5gokAGVGZPc8FfW3CzzUSpctHHh12/395pKiMJg0v0RDhdzeJouQY1Wfz182b8v/yNoIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789290634; c=relaxed/simple;
	bh=9+1zZfE5uQq2nZ6royB7dWg7dPLJEEUSRcUP/Kl3lVk=;
	h=To:Subject:From:Message-Id:Date; b=YqNFiLsLiEJCpychdv9eRLspEEDjhi7eSlnBK9Mh20QCBX2IqjSz0pQdcaiExo3UhdzC4epA6g7HwA8W6jPlyXNuiQvM6HT3WepYViURQgK11RXMWZdcbkQJQ+w26IAIjL6YNr0dRuNRFMTSFEyd3JiTpdlEw8ODF8UUMo5K/zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+GlXGe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+GlXGe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDBCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789290633;
	bh=9+1zZfE5uQq2nZ6royB7dWg7dPLJEEUSRcUP/Kl3lVk=;
	h=To:Subject:From:Date:From;
	b=d+GlXGe/Do+N4LhN5Hmu9h8jYEQlNNtd3SMDar4jrqr7oQVgmpc1zUg2JmPOFXDlX
	 6s8nfWbmigfGWDZ+OwLOYviRd+Q5usbbuBJ+NhWCGG+T+KYFjcDGa+AqSCp+AZupiB
	 Mqh3Ux+EP7o4extw9zeV5CfmWYMT4YHlW/5MoeeQCN3VRdIz3BB+NwwqemPRumb4+Q
	 h9P4O1znpQzeXK6uHMM7WG80pGgy9XQkjHD36pnxY7D2FI24vrQHd71237kH6/ZhoV
	 UVOuxi/bqtuRfD0rh6trYLZ8vk0pDVLdp0IqA3hcPzj7Hll3AUKhPHrEK30hNHtFPm
	 I52P952KsZUXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58FC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929063368.4065.8345571002552053583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a349cc67f41bba5b8d5642e2a6d0c1d8790f6263a34c2c735a59e8c8df4ce73d
Date: Sun, 13 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789290633
