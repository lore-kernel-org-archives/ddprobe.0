Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C842376
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750550994; cv=none; b=sytTSDPzSNY9pdhOgH5424mjK5zm4q/T1tIA2B0RQTtu+qzirD0wF0qlOQZxlWNi3GYkIv6qf/ld97lrdG6BvGaU7GmTCvhDIL6GwOKugdMp2t1aDCUQSIRoenhjAirkW89k0H9NI0B9VtRiiz3jhM+TKxvpa16WHDtMAcYX150=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750550994; c=relaxed/simple;
	bh=ab/fwMPi7R8VRcvJ5ccquaVXpNNYnQGw8iduCV/pBkI=;
	h=To:Subject:From:Message-Id:Date; b=lTHBk4Do89sNY+YRCmrQ21eQmS5Jg0//KM1VT+m6ZTEP4xRWwXc5Usf/O4+9sz8z2MPz1CxZLoYJBie/q6WFNwZ5iYMAW11+e8V1FXKrtt3WPeF6P3/0wCNcKccPwqcKIqyKlZk+pxxv1kVc6EoYP++DftX/G73OO5Zhv/eKpvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbqqTTDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbqqTTDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F33C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750550993;
	bh=ab/fwMPi7R8VRcvJ5ccquaVXpNNYnQGw8iduCV/pBkI=;
	h=To:Subject:From:Date:From;
	b=YbqqTTDtETbnEEIsEsqbtHb8CEJVKDXooW09bO3dkj1VuPl69Al6x17bAoA8Cn27E
	 HyREOKOfDk61KvYYA3coba5EVwq66PtnDUbqUCLtCYw9ksHJ5SXeNSHXqg55jW8WXP
	 u0YIUbz0jI+1i6S/NuxPQcidDWALJUSV6WOC4nT9RRrvwbrhn0Hjf+xMxFUjdYmvQb
	 XoO2jjnwz7yHrbc7rhJe2hkkMASzwkJ89OZGLHEcn+tlMhzFL8KLjp587W7V2kvDIF
	 d4axAzgtqlk6sY5yyqR9Wer7OhT7RYs8Zhvn7fYgF0pPZvtYcAIvBp/WCGWAWwN2oc
	 h6UpguDLzUb4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92307C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055099357.7781.12194314722329187198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be82960533e9dadde139a64bee0be9a4a197703752dacb0e399e16a8ac3e21a
Date: Sun, 22 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750550993
