Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CD421C9EA
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753724994; cv=none; b=ZPMSTszxbvvKqnB9jdm0/d9bp7Oigrfeh068UL8nfnd2NWSWbB8Fx6DnYvJezjuOiOhtHYrzSwFS0HytmP06Fuqtf3Eu7BmuYeG0xZUJWTIjHwa6P1Ahe8y4pIUGBE7xn9fNIIPk6o5uaZcaLHYHAteLoELeIn+y8yhUMo0Y+lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753724994; c=relaxed/simple;
	bh=XFehdMLztxRX3icqQ42rDIi7jgquAVYmvIAxZe83uMQ=;
	h=To:Subject:From:Message-Id:Date; b=kZ0IE7ymNyGXnbeMIK52MwMqA8VVqAetkqoFlG++/B9qaeV4J5D8Na9sFTwYn70sLyPFiagS4VpBCJJIYG9p3dtnLvb+kqz9PylNtir4pwZ3Oz42g82llR721qQQJdklKF3f2NmoFDn+bims6QheQ72CwT+t8qeyfRBrzJSTqcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhwmDsU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhwmDsU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2669C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753724993;
	bh=XFehdMLztxRX3icqQ42rDIi7jgquAVYmvIAxZe83uMQ=;
	h=To:Subject:From:Date:From;
	b=FhwmDsU578zvA1U6ffChuS4UT/uJJzqXftqYqVX3s3gu4MmqfcWltST2Mlxuw3GmM
	 s+napzkvig2xCiSsW+4yE5Qh8u3w2E0VSVpCy8yatBIur3TpeEgov8ePapjzFcxyMS
	 w/a9hS4jAVLFgWpLnR+J3b9mkYoPkrKQEIU0DmPWV4sXaAs9dAoN65S47wq7YFGePN
	 VSyW922DnWXniwNzAnMLvMM39VEe7watywD5ttx3s5z1B9sl+pF38oSfg/e0L5dmbu
	 eUmlQwgRFO0rMpN8MUt3fk8RQmP9IvJsxNhBpoiHBd2eJvdEDC2NwMd6Pz9y+sq/3S
	 OG+C9EZIKHB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F201C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372499357.2197.14429220414079243917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c9d746d038e256529f7f0edae9cf535098f0f7825b204657bb01bee84df6cf
Date: Mon, 28 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753724993
