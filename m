Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E6A3BE642
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790793034; cv=none; b=T+bQHsm9oWoL2GGLrsiByOqG/f+wpKBps1ngUJicPG2ReMvMpmXsnjy1AMYszf7idb0aIm0OpyNlwCQZGoOF4ahS/PEsDpA8oEoUt72JRs9+6ZudK4/mDoreWs+J6t960TI3oToiRErV2tYDej7HxmK9uuI5xCNc9PU1wdD7cOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790793034; c=relaxed/simple;
	bh=tyAdVPuPe2BKQ3O1bo/JLQE53r1DQepQGlVN/Vw6v8Q=;
	h=To:Subject:From:Message-Id:Date; b=op7vcZrRywA7SRyL8jcFlvEoZs21PknsZh5Q/qQ0ljnk5Gsd4PfIgUjxLzui0BqaHatOKnksfdZqIKAkQvcbBXuVukDtzP8VTrlnLBahDsd2yPxVrzEtfg+2saEfj3jrOfYKE7VLyg1wnP719x4vQW665GVhJGL/ilEC9aFXygc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc9xe/rC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc9xe/rC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8A5C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790793033;
	bh=tyAdVPuPe2BKQ3O1bo/JLQE53r1DQepQGlVN/Vw6v8Q=;
	h=To:Subject:From:Date:From;
	b=bc9xe/rCyj8SIjfgPxGqnfFHKyGa4jnTkhwrxLXdRSMZ4xWX3f6DiVAedQME7QDEL
	 3sWaPClSsedzQ5egYcMA85AAGL6FXY9yawwoMXDyaZgwqC5GzoGAeVJImSEKw/BhKC
	 P1fFMYLIXlHMtalSrMU6aTq44JIQlWqBuVFt9qkpM4dzcl0WzDf2UwKrW/D8g5LcEL
	 VKqj21sfGSVWLoQT94Au4r3lI92xyvahvSJtGoumTd9q0gmg46bHRwcW4EPlreD7fn
	 bM1M9/HElPmrYOX+aCn9k8nBMvO72FiP++OQQsfc2563jdpXEEsbn7+GI57Qb9Uio8
	 sLLxjVzNU/wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A976CCA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079303368.32209.8536545943557771831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cab4472c1e471d0ecc976382f7d182269dd842ac0a42b8ad2c2e508a321220
Date: Wed, 30 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790793033
