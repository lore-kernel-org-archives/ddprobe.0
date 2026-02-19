Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30175EEB3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771464894; cv=none; b=RfasHyAefDNcdvbCaUJAinsPOp3F43uOe0XVvGIYqq73/Ya6IoaF1Fad/HTzjA0nHb4URUg47Qhq80lNtMgBRnjrOoh7pX6FouHxkoRa117mWgzq0oD9a/D6c13hPrBsIcw5jxZc5vXYyeoWly5DOd1k9SlVObw75Kljh518dXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771464894; c=relaxed/simple;
	bh=c3zPVa6Seo93CUjmukBy6JbBwwz32n0LnNAKfUJnV8s=;
	h=To:Subject:From:Message-Id:Date; b=A2tvo4tIt9lAnlDmToMLy4nKejmUEVXBraEF14vfwClR8SmX4JL26IRXEfbt7TObqffZXbxti6bbRQp6D7kPRMzfcFsZMNU1PSAaWhelWKJ3C/YPiyJVx8qGCBShy5Bx43RLAeq2cauvtOQMweqmMr0STSk0ueMXEmmt0JxPVfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsjVSsVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsjVSsVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B243CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771464893;
	bh=c3zPVa6Seo93CUjmukBy6JbBwwz32n0LnNAKfUJnV8s=;
	h=To:Subject:From:Date:From;
	b=tsjVSsVs22yPi2L/VNA/2WJqKnTmeKsLDWIfJd+XiQPb9oG4kRb7nwqcbNtcEYpQa
	 ZqsZ13gI/ZOq4e/cl0tsc0m/sZDPvOZN8Z87tTyEyFvWnd5wkhJZI3a3R9lIVcWe2L
	 Nu5ZqduXAcvinDYo5PQ3ZTEQNO7CBNrBprg6Qswi9lhaIDgRsdDf7Ikp4Z7//pudnl
	 N488yEotpZY1m3tVXtCeNfL11/cz4AvFG/GEhrL8WYAgwUIElH5KR1XvEuv8AHejSP
	 MyWXzppqRKjQRYUP2GIit6SqeM5r4HEl1NLgK5f4yO9F3kYupWzzM+7kXsGWZlrFrY
	 6zh80PsjIHmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DB6E9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146489361.17344.1643340342414562398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e367a442948dff1cba9c4d1146c40d1429b99648f9f5adde1fc62a537be59067
Date: Thu, 19 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771464893
