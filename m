Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C6C1CEAB2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745474393; cv=none; b=cKZAAaPaJFD8GqQk4Id+oRc2hPgA/hGrSBOuoGcHzs8XmVc52zLW1qaapE3YpoXCqA9EWoEPIYwH6PrZnxsqFWD0GKjKrxhsIsd7yDW7/Rn9K2xLXz7iaW4P3CfhEYMU71HdXvSauLojSuRbpEI5kKFGJeGP1GJHYp6JujEyqYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745474393; c=relaxed/simple;
	bh=4lI0RtO/zaRIGUV84+1mJKiRcDZXoomfkiotasfOtK4=;
	h=To:Subject:From:Message-Id:Date; b=Xa/qNK26ioXt/68PPF3RZ+mbAKY0qAi8DrAOsPOXLdz43fvlUkEBdXn8hMD/MCprpEB5xbgZ9hy4Z6Qw/nt6Qklu8DioZ6jCW4OtD4hctQyItBZ6VwtUj7ZBMPvyfpgLYuE4G2MvgZCwMmig0tkEUueCWWnvtqv/NKczPkq/BJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INz/kyrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INz/kyrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0D9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745474393;
	bh=4lI0RtO/zaRIGUV84+1mJKiRcDZXoomfkiotasfOtK4=;
	h=To:Subject:From:Date:From;
	b=INz/kyrvTWC7JnjJRDPzq0T9frEJ2JWbIoj8zpQvFZErz4RYHhRa3G1apoCQqyzgJ
	 wsKc6FPyFYQrYZDpJjQiKtuJiBEYQQf5azMi2bgzqSgxGlL5ZaKkpWi0X1CcgpwihZ
	 DcqarCPrs7Kw5dtdQwl5b73BV3WZNiyFLEAZFQIQr1zMW8quMmUVs6ZZR6fRQxC9Pq
	 kHoFJVWjXOJ10cCGNu9APkEGbubjj4IZtWod4XcTFvO5NGoSgP56EzNSMIc3DDDdQL
	 TJf1VLeg/KBkbRRYb7ftjUcMZ/t8upqx8V6n8P1j8o5OtFOl62MXrc7XE8QmGqjOUQ
	 WNWkyhFrY5jpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F3C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547439357.31202.5483042411080949245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d032c5661bc0e3d520dcd4289e4c9c39ffb685c94f0fb77f9ae3f247ac9a30
Date: Thu, 24 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745474393
