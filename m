Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100EE1684A8
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726571754; cv=none; b=SdJwUgXyLUzE44p9Tba8QTSGFSYmkr3FzODOtw0Z/Fgu6PNcem0cqL9ej1H8NlsILaLsA3iPOEk1Zpnaz+ludi4Qsa9L1zBq9hDBiuHVxa6YV5FhKspM8k4lvujfcoGZOE+C1LkFjmI+WTkQtjHKQ9ciDNQ5K5K8qqWbHGKj8QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726571754; c=relaxed/simple;
	bh=e++yuNrLcnLnxNte1AchgzgDnqcuDYs1UzRsSrVJnO0=;
	h=To:Subject:From:Message-Id:Date; b=kYdNLsIGjdWgYyv0MaRMBTpKPulRHQh3sbODl7od4jiI7Q7eBcIpyuKKerSPKLP1OVXmlB6jbY2drb/P/W5SmaFFXhkgMmdOHSyE2RnRLvrM0pEJIwGhY2ExCDa864x5yA59ZelN4QlPMoikMZF0oT4Ln7kaOT5UHUqVv6qlsxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoXFbcsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoXFbcsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D2C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726571753;
	bh=e++yuNrLcnLnxNte1AchgzgDnqcuDYs1UzRsSrVJnO0=;
	h=To:Subject:From:Date:From;
	b=OoXFbcsEd6+Cc4LdWyXVVZiJfUrifeiVSdIETs6IXCDu/doFHLlx00gsEFH2M8DM3
	 qbgegur3Zr+v+i9A54ZUrBiJ+1qy4u5B3YEg5DWKBhVw1v+r5uho1lxTjpWq+9IxbT
	 lyhlOWlWYBXn6e3VhCUUuA/4ERe1ZVjjRoTKCNp2ZeE9GPe6HFr2nrSgLUwvYhoG+Q
	 +j+l2wzNTyAo8oVe377Ck1k2mo98i234y1jV5ZDaa8vRCpuA3DbjDVLcvvDpmJxyke
	 Q5l4+Nv1lICwm8iwRAVSv84zgAXIfThdGpXbufeyYfX53gDsvpsAszJnYtcmj4D26M
	 iWr942umcxGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C67C36010
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657175358.6020.5677546999846389534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1428998047e4b2ceb02a9b857fe1ee8c621a4a1cb61104f937debb598f4bda
Date: Tue, 17 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726571753
