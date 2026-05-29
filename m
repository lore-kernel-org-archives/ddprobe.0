Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC9543D4EC
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780084954; cv=none; b=EivU3ktFdhMFUkxePTOMGwdLyppUhcu0y4pU8BaOiNe5GDr4vAdG+mSIy/LnU57fRyWx45PdOjXnk77TM7J0L7cuBPav0FL3u7SKvB3eH1yqqAK/Nm8Eg7j2SuXRA3Ylke+9eUsVsY8f0D9iJhmnwKyyqjpDLg3TPqlEKbFBNOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780084954; c=relaxed/simple;
	bh=08BVYAuUdMIERzLkPMSELlnsy/WCVXDKcwOCwxCdahs=;
	h=To:Subject:From:Message-Id:Date; b=emwPD5ul89CcwM/Qvf9OTRyM26jVnks4HGEuKzJ4MY5IIJXOP9CcezLVIu6DtLXWTBJ/kd0qfklkJyCwzHTN+wOoqmPSD87MRDIZ3oL9iz4TRg+A37Hh5NzSC+hMgBzDZA5OsX+J11qy/B1IU++EXf3vPKjYrZftiz24NI0UFZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpOuoyhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpOuoyhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22873C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780084954;
	bh=08BVYAuUdMIERzLkPMSELlnsy/WCVXDKcwOCwxCdahs=;
	h=To:Subject:From:Date:From;
	b=PpOuoyhJNpuMUxQFJpekSjh3AOhynndQ4IeM2lS1UiykLCEocWIVyjx/l0z4VR+lg
	 8n14vLapGTyCSgwvFm8Q1mhac8GN+jp7pDEUaz4vwG49OxIg/Je8oi+oHg3UE/MpHs
	 6+a7h5RAQ48vyUCF8B4Cr9UKb75doh1NlNJWi2nU2P8oD0OW95ZM9WHuBNQwJWSdIS
	 dRhuO0ciXDT55qViKQfeJAmz78sWP5xqklV+/dDAK9f2927xYNK0q+Utc7SJqlNkwM
	 M/Yhc9AqXQe1f6yTZLLGMMN/dQFI40Sc63QBIVV2Q45599mfhg/kWabQhHqPPe38an
	 f6NbeRSODLP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAE7CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008495387.28591.5695605192121336243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d73072f2ebff1a0549d1c1aff5dbd3d63b23ba80e2949e9e3efa0532ed43d61
Date: Fri, 29 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780084953
