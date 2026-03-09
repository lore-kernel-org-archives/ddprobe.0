Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6857FBAC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773030294; cv=none; b=ZBF1m7p2wuarI1QpomdJyP0RKF9TOFdYFjiwiM/m8ykvg5tVY562A1K9Vcbbc6DEziCDroIzHckszsFX18jrcbEgCifTYPMBf38R5qewjlmswz8B5786SG0nqLe8iu1E2YqXJoWj8Git3wuef0jCwt9zMaZ8Pa79Zps3ovJyhoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773030294; c=relaxed/simple;
	bh=RVaqnlnIoObpo8bl+oPl6BtW+7txusSLf1cZL9+xYr4=;
	h=To:Subject:From:Message-Id:Date; b=BE+NvYeFaE+2W+pUKPMAlUAGtROkKzeqc2vf049iHx64YQHFjJZx4OBgsMLgkM8jXkNfAV0veJRN+0Y4Wl2ou0aUf1Zp+38dR6jw2D+hOfO8/EcFDLQUMG1D4HbNlwPnWVApmdKoWsRRHmY1lcb3ZPOoL6F5Sz7Qzi3EdIwiLmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNW9W01k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNW9W01k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C175EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773030293;
	bh=RVaqnlnIoObpo8bl+oPl6BtW+7txusSLf1cZL9+xYr4=;
	h=To:Subject:From:Date:From;
	b=gNW9W01kNpFJKpikWtHLsKiN6Hbyvbuu7ArCNVeA2QgrIwPK16iGMQmDs2mj3oDDl
	 OI+lwECINleVBlNeIItDX3wPgJN1QZgqESpS/MAyh2wTxCuYhkK8/brWRAyiVlaOke
	 8AEAMRqLpft5uvxabJDKIH+ZVjj8jj1i0RKIiWk8milSgbYGvfTzkkgEgUrKmkmson
	 olwHVdciNKPX0Gdq+jOUxJDOpXb2NIoqts0a3oocrQ6gClJ1hgDgEe92g2HTh+HQhu
	 95cTSVvWXqT5z9iKYOnxFF9eLE7Dur8qvLSD+ap/Zt6TnPs93TjJ1WFabx3+fftCh4
	 rRU/R/jds/rFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1452EA8552
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303029363.23104.1758684500729456439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7178f8eb9c8e69bb82a97c62729cc0ad30a54ae622c2272de5c4565338ba8d2e
Date: Mon, 09 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773030293
