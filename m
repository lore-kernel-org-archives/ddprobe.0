Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D1639
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754242794; cv=none; b=BOpI4r3qB5pVlgkv/aKdi0RvjYaYcYnSdaMD9RBVWhEDZmaIHxA47U59n3NtndzG1by4UFWTFnBFDFAo1Lxvk2y14zXu9b/RgyM0fL2C1DBa0BhoCml1wiYeMVMH1FOpenWLnS4OIr2y4e4Glmo0vdGm1Ivb4Rijr73KXGyLe+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754242794; c=relaxed/simple;
	bh=jY2pGJ5tq3zSM7Z3YZXOOHhRKkvHrkTcDBTMVao51sE=;
	h=To:Subject:From:Message-Id:Date; b=Sz9o1woOx/II/XF4h6RxpnxzwWMwUM77Mv7qM2bBeSnCM8yr6He+Jr0B4oNO+7zx4rspGHXjJCKlZpWjhjWmlEvNZFQ8TTNe0OLgWqjCmV9pw52P2b1DwsMP4ywu0by6GL2DAGcc649XO09Ris1uXEm9iEyF/ERMQcwlMsKLDtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjzU4/UP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjzU4/UP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754242793;
	bh=jY2pGJ5tq3zSM7Z3YZXOOHhRKkvHrkTcDBTMVao51sE=;
	h=To:Subject:From:Date:From;
	b=LjzU4/UPMtLYdTtvZvqNRc0k46Gbrr3fTm2Nt0lHeAZhZjhfIc3ErHpGDbq7LsyRH
	 T3852QXDcxOLk3UDKi04laRxJv69X0xyU1j3nyMYeeVhS/znBCspEZlWPBmo+QLWUx
	 wJ9ohY/ZRst7NDxwQ18pUFBTyvxiXBxK42afBFNWsPg5j5MOCv2bdlghmLCyoHiG13
	 5PwhGqNVssepQSfkwV07vbKAGuu25Pc8Y7fU0rpyz9dPAITIv8CdnD01h+OBcTGAI0
	 qx+obyeNRtjKcW1h2PkwIQ4DQniHWkjNSCLey421UutFdefSR8uidhL/zRB2lEO3KF
	 SXN+uuA4Jwe6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B65C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424279357.23496.6962093890688732000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8ff212ebb5162c1acd83ea62f9d4a8191e2edb1a37934e309e284f20504d45
Date: Sun, 03 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754242793
