Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592CD27B340
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784768374; cv=none; b=A2sEDO71Xw2CaVp2mHToL+fdo+31+5kRULXhCKDxBu5zSxPFyXU2wlnRmaYFycs9iVI+5Imzvb/V+IfRgr+uGvHofR5JkIHaNplQH9ijAomIZtV3RplCNfkSim0ICNMN3pNzYpXluy1PVryE94rzA2nLV3euwIvfO+YOmX5I+rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784768374; c=relaxed/simple;
	bh=bey4ON6jOeDSYpKd8TEhPPHDIYzAZKcvsGl+i3koqdE=;
	h=To:Subject:From:Message-Id:Date; b=FP9M96I9SrIRq/OTtgLwuJMOtLSy5x6f0h6IxG3VD2kaZsQ7whvfyewyykRof1NqaSemLZw0aG/2s/JlvoV/Jl/jaMFEtH2xSgBD+nN1S4Imm2EyJ9VU8ZOFYR8Hur9R3vzryWwliTt4MjVB2QhrS/kKPlqruclUDIuJ7fTTmKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QguGep3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QguGep3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D691EC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784768373;
	bh=bey4ON6jOeDSYpKd8TEhPPHDIYzAZKcvsGl+i3koqdE=;
	h=To:Subject:From:Date:From;
	b=QguGep3HzI7BXtTjBkvk69SLLqzGDkuahwqhDpnr7HalbqpNUswNg+2UiXuib5PL1
	 dRzgE9uiytR4WOnpEDPwY3G2f4x89NnY1I/IAard9nrxirIOE02t4wd9bVByAconO0
	 a1qENOcNB0ASc53g5MhbAlVxwViXEQHRRAqKlvlAKKVef6/b1U4W1EkgMnI5SHkt2t
	 0dKgdA7j/YYlNg7o5qtyS5dglOl1DCFDcNqwFw//kgCgNhyXu4GYRrqeTcTE/5Lvig
	 JQ8yZ4VzfjFgp5nlg6MEjGs05D2goEUJ/xXJlnMp7NroWhWozs35XNrtoyGrAVAn+J
	 yFxGTCBDMkNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1056C44532
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476837369.30742.7728848163392180674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392c049dd1481ffca29b77772b5626998cd30b2e34911acd92e628e852712cdb
Date: Thu, 23 Jul 2026 00:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784768373
