Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F703CC9F3
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777966654; cv=none; b=FMsykm1krqqBA9OVFkaRDb1N76A3RV/xuGimBkeKmpHgzzWpLVkvbszzqlo7zDUj0I+e/XcrLmxnJ42I9yuH0SOEGO0mZrnKiIXblcY0GOGc/ZECsdcGjduOwdqQ3XdSSnIwC0UhjNSKYUVsBQqkB5ZLC9SUfvpVctIkUOtu4+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777966654; c=relaxed/simple;
	bh=Lh1m9CQurMjVr2QOUCSqTVDtxDwlRM2zMnI9iTbwK1s=;
	h=To:Subject:From:Message-Id:Date; b=kksVKha6IWLcbuxfcdkQt07Z2zaWrkR7EBXf/LCtTZclBsvuo2XTZrmJS0D+bbiqqyolUmtBgp/65DeNKm1LwceqHKTqWZO3ldmDXHr9Gb2nMiQEwq2JsKSb+USLDDQDAOQvvDV0fm0dxGQN+C1l4BkoXor49uD6CZKhQwh2/ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fV44K/96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fV44K/96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B838CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777966653;
	bh=Lh1m9CQurMjVr2QOUCSqTVDtxDwlRM2zMnI9iTbwK1s=;
	h=To:Subject:From:Date:From;
	b=fV44K/96xKZ2E7ovaCYNQlXDS/9cq/NxyJ/CV+oxYwfrKXyjtaLO4DgoHGPT8HKuG
	 TeLFT/akY1kR+UHHbHu1Sbde+OfEPIv8kUC+x2YYO7OMJcA+OTUs3mHLDXwngQZE3m
	 4GNyufXcqMaE2Xs0fXQgDWH/OE10vXmjDgVtSkd2GXuEoECvP75WgKgZGOdDuLXcVJ
	 5eLqYs1NlLxXzaUH8jNoMxYq8gmDUZ6FQvXnbPmj1UwNJt57kP0dp744h5y0xqvsUd
	 p+ZbhpVLsqnZ+0A36K26PP3PtPKrSG8J2tZ4PJDN7/Q1q8Nt07eOwngfgv9TP3QUdc
	 e6Sklst7T+yzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC1CD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796665368.21761.12868004604652679453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c57927dd0314dbcba88f10e4a9db827f1a3b5d5ce29e204db241cb75f49956
Date: Tue, 05 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777966653
