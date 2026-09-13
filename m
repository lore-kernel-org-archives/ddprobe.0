Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B232DAFDE
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789285234; cv=none; b=Ikye8kGBjnFXdv3/wR1aYUB30Kiqqdes4nkOfQXVv1LMp+TiQ0mr5b4+uSbO46DGMw3PWElVtl6ZfDsEkUjgvSNCyOb8UjYf21sAvgFpgzmTZ41cVudYSK13taF8LSMVpugWsHTeV5ZzoIRk0tMyTrXGrbri1JCz8fx5ppPti+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789285234; c=relaxed/simple;
	bh=4XZlimBHWHFfIw5J7858IiU80TM5vpC/xAfzLX6JRWg=;
	h=To:Subject:From:Message-Id:Date; b=gCHkVCf302XIDf0x4OM32vscMD/Rx/GaHfVsmmfSgNoVTaDgRj872MI9tKdAcmicjHWcxulUbxyxAMqr/Db1tU36qt7d1QGb8aTflwuF0qYtytFluQi10eTirORTAEhfSaNvkUs5exzvlZUUWywD7LsldB/on4wDq5GrihW9aSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jb98Gyyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jb98Gyyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37A7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789285233;
	bh=4XZlimBHWHFfIw5J7858IiU80TM5vpC/xAfzLX6JRWg=;
	h=To:Subject:From:Date:From;
	b=jb98Gyyos1Wte5P9PJPn6h5m1i303/3pWXNKcb5s1yIkEsZwOZDAo648k9+BqzMJO
	 /gli0l30S3T2xGmDFXRU24rAkzFbqXE+k3q11wyQnCfcUURcKW6MaHcsyZ5fCBVzU0
	 F/dwSq+tBuJmjHbC/9EPDAD0+OLTp7lapAJN2JYs7FK5+he+3wQTzbrvQNE3du8CUE
	 IVlJs9m/9ADDk2msNzu8QxVOQ2ZE8BkADytpGLqCMim6AWdL2A7D4UIqMm9fLCH1+v
	 +7a0548oPOWhZI9fx957YUO/xO2qkesfBdS3cpZd+Fz/ZO8wz7nYSkeeTsDVU2P5ZQ
	 2HSsWZUQlOu6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCFBC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928523368.3784.4697754930102379838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e94a45f7ac4248bfcfe8c6a9111cfc951b4813971ace7cee7ff2bb8333fdade
Date: Sun, 13 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789285233
