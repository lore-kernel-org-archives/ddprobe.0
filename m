Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330162F28FC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781181994; cv=none; b=NnffyIzqqVP7qyLQ2NSB/rD7EmFXMNlJAlFOSbIVNCofRnwkZYD5ZNjQEyXekawIsjngfrcdVzLn2ASP3E858Mo9gxWDINLPsCesm4yjo1FMuj9TNqElqDy4m3lHj6UFXR42WneGtS2EvTUDkLBDqRsEcNsW1jnkba1GTTtBmfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781181994; c=relaxed/simple;
	bh=hPgvxpVxBO1+YA+91XP1lnG9obw+OIRORNoo4EP0kg8=;
	h=To:Subject:From:Message-Id:Date; b=fS9G9fULGtDZsHdQkRkfs6+u1ejMm2lkJbiD/dRXEhWcTE5NAbXcl+EGw0bNeHKceHI3U+qIEWjbvXHsiIs7KDHXanpuFkd4e3yVsa9ctdVJ0NYOiLYplA7KOTvbMw5vq4p44t8k+71qFtwGX9t06BF8ZhI4f7i28M5Aty49GN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAyYrzNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAyYrzNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA46C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781181993;
	bh=hPgvxpVxBO1+YA+91XP1lnG9obw+OIRORNoo4EP0kg8=;
	h=To:Subject:From:Date:From;
	b=QAyYrzNdwbpv8JCFcsTUzsHURJtccDBhBtPsC74Qvzl1FsRnrlDC/jHQbTf5qf2pA
	 Dz8uflJtTOrQSYNL8lDkqumCloJyUlON3smDjt+dlBp3FP744fQ13hR4mrjKTdSdSq
	 DIjwew3o2Fz73R1i9FCMYgr1rZOdo3XFdD6QKkXIRLLo0VfMGbBQEIyaWdnq7EBS+K
	 gLjSusBu8u99/Jr2yz1nUbhpipztTvAcQEcg85EateEjLZqvQvAEiqqyQj1r0b/xMX
	 K23mJng4SbI43ioOuq5VhtcbGD7Z9wVNIZ9ZhczlJntLLC+KFi0O7F5XXlsC02Zu50
	 gXmPFoAZM2B9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D52CD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118199372.14255.5459233215272735493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7895491dd63655e7f297da256f62a24bd5d182dfd61dab01cc7583a887fede
Date: Thu, 11 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781181993
