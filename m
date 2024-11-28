Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274861C1F1A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732830954; cv=none; b=GtKBcR2w4d19UBwVczn1LV2Su1IxnmUNQbFb2vlBqewf05zMILgVSRQGpYiaVo1d9MYdkf73y0wu2Us18k9hz43oxQll6DaeDfk4Fq2Y6hcQzfCGfOCYOxOvEEb8USuN9OZY2Ta+Fi3zvImvRf1Cn/wk3p0i8KzMak/mUeDzsPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732830954; c=relaxed/simple;
	bh=bDdQJHnvc0ocppb1oBCOSLsNPBqU09gpjASHS8G67L4=;
	h=To:Subject:From:Message-Id:Date; b=bD36+lGkvtnqQplV1taiznCCDOSSGt24Ci0bV0c+B4xSQwooMWtBDfHIgdLn1kX5s/XdgWaHHm1OS+lC8ZXDE1cocZ4YduE+i8hbB0nPYxaipvT7uQCWf6PDRvEcV4bIlcrjxMrhyLS+ZZYP6/uyaaNH2tTlv/OS8nh75dakdv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUzgc1Ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUzgc1Ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F11C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732830953;
	bh=bDdQJHnvc0ocppb1oBCOSLsNPBqU09gpjASHS8G67L4=;
	h=To:Subject:From:Date:From;
	b=sUzgc1AgVMKHz8l1Uy5lMMSYOefYjay5l9gSLdbrP8t+u2DmeMPLne8y0/2E0uGsh
	 Ezx5lIWDRL995qUKyzBpuSLlubJWx25KWzs6FPIkB490eRcEGFeAC/hK6FsQ29hfHJ
	 qkfDCbQwXTtlea5OSdMT+i51MrHIcZSTEKvnnP+oQ0zFJ+Ezohn4ixr6Va1iEi4Iq7
	 v4idWdmpywZpD/ayCr7gqRN0QSU2gfOWBGlYK3jmiIqkKIiZ2blRhowXZO0dJFywSy
	 TvRgzzZSMrL5R+gQQPux3HWK+94Cs9tDbJ6QTXyj271ZWJ3qiUj6oRfoS2BVTOAUpa
	 FK4Mv4Ra7zrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF6BD70DF1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283095362.3449.9165082902386772550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ddbd39e39b36f7483d817444f3e7a26113f673bcfaa458971bcfccf7b1a772
Date: Thu, 28 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732830953
