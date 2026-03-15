Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B3C371D01
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773609894; cv=none; b=tnAoMZQf7UAnPo0B1KIoaKwli1Ww5dqSO9PQ/EvUyyu6c4Pm0R8W0eGJwngeaaoCDcR+VPl6pVZtaWR5+ak9pBuY8dMVnwvDownmy7ArSokjfG7g3rI+J2OsMZUslH7agdKxLg8HKRQzsE8Kp6FmnluTDsTDEPzNAr9yR1UwcuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773609894; c=relaxed/simple;
	bh=Ok4qSIAFd1zVjwIc6AUgl4tHrIC6Je3utUQKcYO2W50=;
	h=To:Subject:From:Message-Id:Date; b=lY6M3dY1O49DsOgDE5+EaMePvc41xLbgNJoTMCPC+/AwpwbI2YbX70o4R+63YbCDdd0xyIdFukS1DWuh6bB69e61iQx5EeSbUCTxbnnkOWuKN86dTeeDUEoTfQrbTDynbbudPdn9Q7gRR6UOR2MB9ZoPoldBeR+IiRsKDkm06+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHyOnpy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHyOnpy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0166C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773609893;
	bh=Ok4qSIAFd1zVjwIc6AUgl4tHrIC6Je3utUQKcYO2W50=;
	h=To:Subject:From:Date:From;
	b=fHyOnpy3y+beMkfTtv9owIdh7L8eGA+3zxSmppnYKYu3QD7teFeeHCOrkbprbkVT/
	 JvHZNcIezukAUjxWObK88J+7sFRb3ZKu6mvNGhDa8n4nBrwxWekb/RQUTZh62C50u2
	 cYa92WhRu+CiGDMPSyBEkDHmjaTwhNjvvz7mJD2Mu0QBe1fnQxRTKsLZv33XR8E4RA
	 t54PhPr/kC2W4So36rnHmBCjfWZyEOeDUFPL6kVxgA/9fgr0hnWvNDzlF1N1YOJww6
	 7YuWWcrbLwE/qRmKCZKkr8NzKj1fvJUcgznm1xNkX1nk+d/TLXUKgCqv3s5Iiby09J
	 31mpZTnsnZ0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB2F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360989357.1271.16233370916394828884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbd52128e940d461fb6d68b915f373c4ced5c1922a6ff968ee989a1e25b6b75
Date: Sun, 15 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773609893
