Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EF3199949
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747196394; cv=none; b=gBu4s9FoX4WbglNX2sUud6mT2a59A2D0K8twTu5ARlXweaJwf3u1TvV1SVYTYVgu4KCq9hSY+rtSUrBolJNxIB96PJrrXlbEf1FIzHnBqTSk0Cuy+4sc9mZ2DpngvqkvPa1Qi2pyGOhwBEWFE2QAs6CskDqaX+hYRH0sR/FV/BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747196394; c=relaxed/simple;
	bh=Lm1SuwpJFmdaOfYoODjTb+UXx0i5zFnIauxdztWt0aw=;
	h=To:Subject:From:Message-Id:Date; b=N7jyX15QeLg4tGsqPCwG0cVvjib53f9QLVlP1hlHT1qxTmH19pjQQ6kFmmM3KG3eWQadfY/28nhEVHfpuxTC97kOvy1BV3h5zlfDOiK72XvtSWkqa6fl6yQ0f50i+97oTU6WOZ/o8Vbq8CNz+wXuyLDFA1RAoChC9l123HJIb+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA6GCOZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA6GCOZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF9DC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747196393;
	bh=Lm1SuwpJFmdaOfYoODjTb+UXx0i5zFnIauxdztWt0aw=;
	h=To:Subject:From:Date:From;
	b=CA6GCOZjMUlhMX0hRhT48lWxPDJ9mqu7ewfUx11RI33IayC20I18giF5SAzjoYIi9
	 16Nbnu28CD8otkkP8ej3I9EJe8fYSSksHpcG5NAZEQ7AQjKyIwj4H9iWc49Hzbgs6C
	 UjoI5+ZbwERImWapJQjeyL0oDTGq6G5T0dxr58t4gzr9Bd2cqaXnTfnF+zzTD+K71D
	 cYF388z6WK7azPQen1JJEwanSdLFcOgrKWyNjYfuOM+LDYzqR6YXRousOy+9M58q1v
	 x6ijzUCN3sLy3V7DHoqjmMosXJ0h27p4VnOvb0drnHOVryFznV8+KwU8G9EgTy24vT
	 zSRHfIro/HCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B65C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719639359.10880.7644566815223217739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9044cc83d11472aa5351ca05ce50f7eab7aae8bdeb6b07dd79ab22671231fb47
Date: Wed, 14 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747196393
