Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4770E2BEFE8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789462834; cv=none; b=osJMASt6C7+KQl1a7Uzhpt6LfY1yQwMgUN/0W7iuFGnEqByJ1GMTwEvKsGtJpBTBymiNcc2HBXoTIFCvWnr6v3H8DF1KfgEV0WHk7UKjFbQE4AadJi0Vf9SYZrIXb95Vqrkr5fX4an1G1cgeYSm3NWa5NlEOhessg5H3ne2OwHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789462834; c=relaxed/simple;
	bh=C9K4F6stD3jWyuxq6+wRER6UZjC/aaAhDKHeilafnIo=;
	h=To:Subject:From:Message-Id:Date; b=fQ3NrwjZEszTbWihb3JsHyLsSOiCPkSvPgO+UjYzK+C4sjMTNuhA5gxlJFjqPzEGO3V9Ah9jiPAl9COA8t1JrYfzMOtSb5wrS/L6AwgfqTOJfVBaRArAagm7mLQgCgemegrTm9TO6OsbxA0dWLfEZ22GJy31BKwzRuy+9FsmCLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z62X2G5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z62X2G5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC368C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789462833;
	bh=C9K4F6stD3jWyuxq6+wRER6UZjC/aaAhDKHeilafnIo=;
	h=To:Subject:From:Date:From;
	b=Z62X2G5AHm9TaxyvnO1u6aQKDYmi62ETC5R9n9coAgHWSYKFRWIjX09zZxx3/+R8X
	 nNBfcE1TTiviWRBG8lTiv5+rdUSoyCmp+EskmazSGD48YriY83QTYrmzpMqsogmL58
	 g+cTCbnqIbyDgfB7btqzjC7Yvr8akjGaJaPlHVXCoto4tRtdATlcWSZ34ICz7IpBbm
	 wN5mwtUMmHgDd1s58HLUHVrAf6t98dM/tE8gKiSa15JQBnF8R4uTlb+aWM+uQ5WEa+
	 CceUeCl/EhSMvsIyl3a5fPbAoYabaME2DRmHEecFKUJiH+0idH9WflS2bu4ygsZsfr
	 7PqRiX8K/9h1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D29C88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946283368.21004.11031589640176556672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e761486ea9d8644c48483a82b5c5345627fab0054127e0031a5bf43243dc1d
Date: Tue, 15 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789462833
