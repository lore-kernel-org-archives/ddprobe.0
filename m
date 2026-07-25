Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619B430D3FE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784940034; cv=none; b=foxhJZc6FSlxKldwoKLkIzYsqFau9vLPsTUlfHee319wvluRTLD4F4V5zxQbCCa8auqAmesFXh0CjogyxGkatSVa9DQV3trLowJWV1abvy+B7+wI0BejI36Uy3wghzseZ1s/KlM+UYqMy1uNLIVdOankHY/4SzWV2ftaa5cHcek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784940034; c=relaxed/simple;
	bh=ChgbhasmQFOdVOB0Q8Y+YP/vaWxegGBOHwHVsHkAMTw=;
	h=To:Subject:From:Message-Id:Date; b=dPgzjO8ZwyHe1NfkiFBuuc+Pf5zMhQh3n0mdbQM8P4yUOcLf0F2yVgWsisi+WjPqGYOgMrULsexFVdoDr8lrLAUW6GzU4J1eNoglEgk0CgT82nMGXi9e7cm6SA3AzONSiDSg+DqxFoeFrG7cXz+xd+z2jZ2h0+gTxT5L2VJ8rMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMLHXIv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMLHXIv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5175C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784940033;
	bh=ChgbhasmQFOdVOB0Q8Y+YP/vaWxegGBOHwHVsHkAMTw=;
	h=To:Subject:From:Date:From;
	b=FMLHXIv7Yzgj76zQdZ9yz3o8lbatDNIPgdFjh4CNsUacsOFSPVzwIOYBO+5+ByUHz
	 MxdqmVaHkov60JBSntZH70RP6BBQuuKrz12PICwQY82QocpsO7vRFRlEZhog1ccTUT
	 IaBC6/O2Pke1BayzeStLQOktDL+tQEd9lOpg2+b3DViog1H4rd3H6wZQ2D8kN+JJ9a
	 6yWpGMveHsFt+Anv6bJCee6fiPhGU26mPGtLRg8DGP0OWN0X9VmjEWpI4BRs3XFpoJ
	 XTnZ9RFGhGM/MU38cxssK1asYvQuu0Uj0VYavx+BaUrmmZ4sgSFbhvWASIzR0H87BN
	 fkUZ89ZF++a5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EEC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494003368.13540.268755956200380203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8516e04142b00f0b11f932d9e1fdab722a64593cc48bd3121fe26ba561cd77cd
Date: Sat, 25 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784940033
