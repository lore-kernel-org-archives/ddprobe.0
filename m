Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00AF5476F8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788880235; cv=none; b=Nj2pc/pNnxi6cKZNnaga+2mY+oaiT/wjGz5wRuCCmHzglKlP3gJUxLFiXJNbkjCdqZUYOB+UPMHH0G61vWbgzsFKIfhckih0J/1ntigXEdgrEOkzGWZKnVf1UZTO1c4mXU5h2bmpd1qF4zWLtEAqgerTun1kpXQRlnDQAE1pBSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788880235; c=relaxed/simple;
	bh=qbQ57HhPVQh7g4tY77mi/1/geYbOJkwoGxtVtAo7gt4=;
	h=To:Subject:From:Message-Id:Date; b=b/fhe4V19HRId43vA5iKLvOyHhkuoyqc6uznh43RYO1dcggPg7jxvWItDCd3l5PxHdcCdi7z4XZCDIZ6Rxj4UJ8vBpF5VpYoVqX+DUEAdWjdV5AWofqKz83q2gmJvTQ7z32YGRETRo4PFcZ4xI1DyYdm4JkPeyQjD5wsF4OwH0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2SC71st; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2SC71st"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D674FC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788880233;
	bh=qbQ57HhPVQh7g4tY77mi/1/geYbOJkwoGxtVtAo7gt4=;
	h=To:Subject:From:Date:From;
	b=c2SC71stvfi/agBcAWnpRH2vkc2ip/lFc9YKapwkP39oHXc/KOYSh2Rj+TDRL9xRa
	 gqOYlkqQDAzW6h6mkvGfIBRmklMokzqmYRaDhFokR7Ed2nRRl2fwbwu94JiU60trqN
	 r7KYyHis9uTngpIRPoktps84/5V9FEceVd3fDJioZO9A+6W0p04Jv3GVkplcwlGqK4
	 ECToXdWO+95F4fKywbmGW545/qC4Nq5BIanlZPGB+S4DdWdc6uw1x/n40R/KoIPOCt
	 oOn8FxvX5TwC/OWfzKUqfQzc8zCtIMj0MJklBE97nZDYb/Ajiw1lMn/nJKS6IobAU0
	 NtqIRkh82V3oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD7FC79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888023370.3863.1815665285375229606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674f4ebf7ea7123609149101a34b9b43caec4781b2e75196fa34b718a1dcb146
Date: Tue, 08 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788880233
