Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2112218CC1E
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724925954; cv=none; b=FA98F15CVqsTp0YY1S6jRvrycPIo0npz8/S96P7zPghZ5qP/toklhQ1BW7LdXJKGbnWxYCgix2uLiLTHpyiBeO0ArbOULFK6mLQjFNtlpzM1lb2f3Wh35GsKDXQkEpncv32QDWmoDKeXNm98138r1opg8t2u1MYZhOvM3sfX3Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724925954; c=relaxed/simple;
	bh=sA/bMP+Rixc7qcotkIkBDZx8P+GVcAkcFz8+aP863ik=;
	h=To:Subject:From:Message-Id:Date; b=OkV0rhv5/55LCnPMfKZkSAaiB5qKT2elhTSryUCC86n5VAxLth+kaKwT93Yjnk5YADFyXUbrJ7gzfA2ghscQdtT6oK89bzuMEnH/jHeP1HaEl5RINWSzFUJimUykjX6ZBj1Sc/g1VH6LP+lT5lmBodEtOqKbzkoax3wr2VO7Dd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZg6ZUj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZg6ZUj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3024C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724925953;
	bh=sA/bMP+Rixc7qcotkIkBDZx8P+GVcAkcFz8+aP863ik=;
	h=To:Subject:From:Date:From;
	b=UZg6ZUj2mbvcuP8x8ahDuhCajgiMQrrkZIZbaCDQAJhDe4K1sPk0zXvCWYUzzXsNG
	 nZ4bioSuK1GmtKW55FGj2g4jLurTi4TAz8o3QjBfJuqMI9hvAGa7NqpB51pEn2t9Vb
	 p8jVftIf2iXpt9z0CFW2EjRVPKRDxalaA0cTg86Q528xLGrT5ycavH3CZCMx6dGWuL
	 5884irrFsaudiGaT6Tx5ezRfYZKI3xrQ60XsDEHUFEtJ7VIRSfkuIO/NJCbCMvcM7K
	 ekIrnxgjJQLVXuAXuX8C6zhMMDvX1h2tcV9ZgG3pSiY9rzp0heRt+4d/8Fs+tZiuQ9
	 +LY5pMajrul7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98377C71135
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492595360.15503.14853545592433164787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5653fb0acca34a92efe9b68ddbeabf2167afc85052a77687041c505ede52fb4c
Date: Thu, 29 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724925953
