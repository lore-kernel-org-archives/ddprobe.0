Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA31EE031
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736334354; cv=none; b=WS2FCbMe6U3fhUrG/W/0f/rHhk1lpOSR/4z9/KdfCgtSo4Bezsez7OAEzj9VNHutC3NA+JTN56/9DFZD7LJacu31qe0T2FSIi+RPGCmVdzLvC8ztun49dOmMWFN2jnpmxRF8NKf8vnNbeyODQYkU5uhfSSdoubX+0c6pnGG3C/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736334354; c=relaxed/simple;
	bh=dEBl1TN6S55PE04ZCB5xWw0TmfUEW9TbVObZjDB5FOw=;
	h=To:Subject:From:Message-Id:Date; b=SsYpmZgqgufVBYM2mf+1COtK6l41EVitS4XK0FCWYTMdDwC3qPIysfFxvBug767mt0dQgIDYvNpsWqGIhXX4tDw6Zah8KNcmYKrzM3wkE+Hrf9/21pFokYMpTFDnG8THy2VwfZ7riKMc4k9a74ZgMvJvEaiujF40kq4JDtMXKcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZhU1vqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZhU1vqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA70CC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736334353;
	bh=dEBl1TN6S55PE04ZCB5xWw0TmfUEW9TbVObZjDB5FOw=;
	h=To:Subject:From:Date:From;
	b=eZhU1vqIiqN8KIgPrk8inar1fBjDHF7b6tIwewM5jY55ZtXLwPNYJFlqCzoq64UNN
	 1kbaWvE0BLQZPqnt/3I6/XnFEd30EfFomXCRbRcRNWRqMqok1W7HbkOW2LArz9dqNX
	 hLzFGjtei0byYELi7SOvuXYNS6ajYbTAgcdV+cWScCCsw3xUJt3n3KNBiN1hSLThqa
	 Sw+LtciaKf4qSt8cBp0JWeDsLxRJFPIJkZ9ryogl4Zo7+GgH1jw3yrDVkQ6/RMTP+2
	 +VS7O1NimTxYjv5ggV2HxtmYOjouC66avraJlthYn8XRiYDurE9BRCn5WBnxmcTMt2
	 PPBDfKvQCDQ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24D5E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633435365.1912.13373672113317681826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1fd1ba4549c9e2613ca38e709e7151d8079f595d89b2ef4caaa4757f5a3a16
Date: Wed, 08 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736334353
