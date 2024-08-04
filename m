Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5657347B
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722790554; cv=none; b=EOlo/cRygVWjkoCCzr+ObSCFZL0oFhcVGKmHnwvm2L/XoJbWbTszSP4wNOIVodGfoznnZ6ugECAy2itWTkZNgscpTN78hisq75SRpKK/j+TKOrs1WClN/b8110VRhLuuXg/RXmoX2sOq6rC8btIonUVOHwdfSU03IhzljNBk3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722790554; c=relaxed/simple;
	bh=MncgM8bKotXk+Dn3KIW3xWVsuvFW2gK2BSEFSnEfMBE=;
	h=To:Subject:From:Message-Id:Date; b=VGv4YB3GmFmzq+HCdwkmByNJFdP1bq03vStbVJTRPHFbS83ZvCSR90nbx1NlZzf20MrGjpvXQfvmucshSi0kScUKC07ZuvYIXw3ML62K6VOJU9cGSY6mb+emZ9Ey2OtFN/YtnD+T0aReF7KwzGjLsYwYhvqKaBi4DUXTho5RtVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFW8jaFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFW8jaFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08E5C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722790553;
	bh=MncgM8bKotXk+Dn3KIW3xWVsuvFW2gK2BSEFSnEfMBE=;
	h=To:Subject:From:Date:From;
	b=KFW8jaFmiwqov5APxHYkkpObR1AIj4GYPbAqWF9kyybRGr+5AgS0ByjWAgKo50Q17
	 Pl8I6fWx12PLougoifIqBpT/CAsN/LtNv3grGB9R1QrIGturxbUQYckcF0bRzQ1xBj
	 KtY7i0c/f2/eMYR0jR1px4zvq7SlzYnqNJFrUzSi2vaMLxm2nN1vJMPo/bs576s8tb
	 elloNySsmWyKcyBCylfyTh8tOuZIH9oTGJN9YXmvI6mVHK6NP76IEJ5/CKiqLEoabd
	 vuqTsD9FzkXbnPBtfKRwKqyvJ55Tbd1mCMc3Y5sxgbJ8X3m0L1UFaMqaPSByqaBBWV
	 896gYf1JXZAhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3415C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279055365.16256.16664879595633146911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b41f602d63a3e8d98a182acd48f1449307b6a7e1f73efc60d1028e5b07f469
Date: Sun, 04 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722790553
