Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD0C2F50
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737208554; cv=none; b=US4wiEUP3X0lAiCh1U5gOjiY36/9UGd2fSOhjvlNILcfkT58a9L1ibkDw74mmGcLvJ6LEdjmTTH9OAzbRiqu1O2CQagv52Tcjpi9Z4O7lxA+QrdWdSugg5TvgchiE1wOWrzOA9O6sAiQcBdns3O49wUpx01tdCD/sI4MIJtMAUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737208554; c=relaxed/simple;
	bh=Ei7i2ddzT6gDJ63ax4D0p35uxDCt5A9ivRQhgMwKsq0=;
	h=To:Subject:From:Message-Id:Date; b=BmROfbH/RCTlS9cmv9m6RHksDXsr2DXvVOLKoRC2F07UVQpZ6q9H2UuwpvIcQd95dZWlv4gOmwuo/V3iDfKpvLbwILPGGPzKE60krWwCzS3op4y8wejaxr7EfQeQn3y+3WTpWRkEmykNncVscoUqcy5yYkB3fHmdaY3/cMwAdHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H511kIhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H511kIhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA126C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737208553;
	bh=Ei7i2ddzT6gDJ63ax4D0p35uxDCt5A9ivRQhgMwKsq0=;
	h=To:Subject:From:Date:From;
	b=H511kIhJpwx9B62Gu/EBLUanX7+kW1DL9VR0RcWSc72+VSiybSgcSVTz97ON8gHwJ
	 rCzoyZ2+ahGcyH052+YJpi0kR+eC2B2eTLwqmEN4o7TOUCPggHdV0hhG8sG47Gw5A3
	 cENoNkFfIKMMpyTVhE3DMg0Y2u6Tuxc0W2gRBzVXL4Q7sx6Dg00wvTxOWz2baZJ5va
	 +AGA6tWPQElXvF8QydzyS0xyam+QyVzDJPSDqU8j5QLPxoj1mchslRDaEnAOTN03Oa
	 54KcElzq41/NB6lSefX2fEfysSelZcxKSFMGwHR+CdCIlKyic9yyznliZpPa/U1Lvw
	 5mPsQjDqqfmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D2C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720855360.31193.5328244355945241600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1207c7b0ae3469a560322c5fc630840152996e51d19733b42cff5ce9ff4392
Date: Sat, 18 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737208553
