Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064FF2ED87F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781794; cv=none; b=NzvBO2HxuWigvaP1QrAh7AnMwFansOo86BEqqo8o7U6L875Qw9bJVEvxNSmG6u58GvipoKam9k5qhsoFzoZCyOQFiGhA6piG/eznp27wuvJCoR2KnchL89j8FQj9FFy+gZKp0dOjVrZlLFHuzw9mRI5Vxwt5rVF6V54fQkvPbYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781794; c=relaxed/simple;
	bh=hwRBUTwQ4aV/cY5dF/ktP3dFIFysO9B0WC8mtjU3Zz4=;
	h=To:Subject:From:Message-Id:Date; b=CHLncHs10GBjHMcx97l943r5HPgajsabbIosSv/16Ku1qSrbQv/iz7f26uF+NMpdoo24vQsBeOa3eY51KDC+vQyWVo69/gKWoTrppimS91Li9cwPfcKhfI8YRNQXBxo+1tQ3T4MflSF2tjQjDibrNfQwCxbwOV7LuIYjFCO1h4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peZ8Bljq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peZ8Bljq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F66AC113CF
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758781793;
	bh=hwRBUTwQ4aV/cY5dF/ktP3dFIFysO9B0WC8mtjU3Zz4=;
	h=To:Subject:From:Date:From;
	b=peZ8BljquCK3qfX+rcO7CcPPjfCtDFW8t1Qear41GDAG3EnD3/xSJRX3ZaGUNqxN+
	 nq12xvN6+qOQI+IXsTHVJrBb+k48xDTR22leyE9ygsaPCMd0XTOa1uSU1Qfw00TnCh
	 2wBFUmlJDA3CR95wvFP09NixhtR08g2JzeCOHdU3xH+DERmdGsOF2vFpJmk6Illn8T
	 0BGjyMiRCOJGzco46OZwPgjXWiLHLUBJ8ZxZ2VKOH7l+6hxc+T7Udku6P81tOQzw7Z
	 b66ItdWQts+KtSFcoOKoRo7ODKME0BdeskmNP8gq9D+JZJfUuv9R4UdHsmCFWmwWff
	 XmF0Bk6GNj5Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91553CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878179358.9787.5097695503480670196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2628be8c4ed39749eb495005dcabf0da7da7a6ffc140d9460dc1e58f86729aa
Date: Thu, 25 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758781793
