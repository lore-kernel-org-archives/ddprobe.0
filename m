Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B18383C6E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790491234; cv=none; b=bI/AbvE14/N+D92y4akPMgC6KL+62j88Sky7lmrBmLOlokMjaYIX5ntQoBw0joDZbf8p40+6JO9pOEZ+E6CVqMeI79OG5tp680xgMp5ITZC40pDnokQl0JNUogRKLtOKK62KHviD+kwVsGIFnsKsosv6iwRJb5MbmwsyrJwMNj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790491234; c=relaxed/simple;
	bh=0c8vBMRYWsaEhL1nZ2o3SLD5Cz5npAPsqO33A4cqnDE=;
	h=To:Subject:From:Message-Id:Date; b=Ic0TRVYyHWefW2cn/8ONySZhOIsfJExrS/3+PzZDEKTJArhdCFxsXtFUhaVfXTCMrNeo9oGOZ15JqcmQvH7gkFBJvr5HCAptScPze9cbWgHo8NI8HUAlWtomYSUqdzB+Cvefv3ZOQi9EbqDFlphrK4azlQJcMzavB6wseiWneic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9srq/h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9srq/h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD13C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790491233;
	bh=0c8vBMRYWsaEhL1nZ2o3SLD5Cz5npAPsqO33A4cqnDE=;
	h=To:Subject:From:Date:From;
	b=M9srq/h/01+TKR33SHYvl9ka5LRM5o+hXuvSoVIkrtpOqccoUTwtrSO/CunhwoUvf
	 cR+cfTA4SgQZDWxfks4+8c16iqv09VKMDGm7czHrwN77mcTCO26HlyrBrZpFtr6eh9
	 5Zin6iqIea7hcs7urIO4xKEXIl0NTfIKRCcSkK9Sswi2o6wr25GwS3IFYv+XwiyXoP
	 3GugUchQUVuEJidYo3usBt8Y9Q5EvPmexxHSs+brMoR0b/7W1ZmLS3tguUTaupDWes
	 I7wAWhymp6DXy8TsK1iFfag11sMb96QSfGadoVXoE5WTZYEbzVWxtwuqL9/01S3nrw
	 Kh+dyx45ZLgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FC2C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049123371.10521.10143220346550075457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a0d59b9df8b09af6e142e5b5571b70d96f10c75bcac5bdb9b5fb659b655749
Date: Sun, 27 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790491233
