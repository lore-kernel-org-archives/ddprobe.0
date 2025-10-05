Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180EB182D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759643394; cv=none; b=b+LsNUQQ0Mwz0TQk2yo2urobhWwrWTxFuKTIZvLxFYzBK1BtMOPO3e+E0ZNc/ZTB6mZLl3qJ0DkJkBUSxbHNWmnOHOwn7q6N59bO0bMLXN+TVWjh99k/261a5fIpD0ELArDOFtsv++/jemrRsDtIOUN4ahnHoTIj6Fpor5k2pXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759643394; c=relaxed/simple;
	bh=pQ04M6n8KYG6fGX3zAKgrvzdFNexf9NatL6waABwMvs=;
	h=To:Subject:From:Message-Id:Date; b=R82Z7AU36LYOdvKiJxnWMBJWwaG7lC+latpnhuGZ1ZX0c7ITNnGJMbKlLU6zzS1VXUvI6uKHsCCSHxwFZgivdWZzm3cBHq9HYPF5fGRT/MVWBYJ1UsZQX+d0Em6Z4aLOdvFQPwezr8pmuc6GeU9h+BnAozbgLxLkm0v5Pz0DMmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOPx8ysy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOPx8ysy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759643393;
	bh=pQ04M6n8KYG6fGX3zAKgrvzdFNexf9NatL6waABwMvs=;
	h=To:Subject:From:Date:From;
	b=oOPx8ysyjrgcG8HbGAaylORJW2U8X8riVGO30jhc+ZMuFv2GcP/tg1f7KNfUt0STV
	 guZeiAra1qYqaqwPNex3FybLkAmfu8pNBW5XOC283TuB4GUp5ROBmKxkhNB/NaO2uG
	 qLLAJkVmB1wleUmS6PJO3q9LrAUSHisq4hglOoO8vlf2BAtjm3sZozxCr8XuxiSlA5
	 WedVvEnmUEKEDcwdOSfuOJv2jNLQLohIJrc8pXySb/1V4+nSeJGWNV7CxcnxyDdgtt
	 PmAyOe0/ku5kiJ4Ae9/KxOdXYXXvPY4k8KjPiljoJGNQA1/qhKEZjBw//koQHqCcvs
	 7SMs75+QvtqiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94761CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964339357.12500.1289941242370358340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccdc0dbfd447cec8c5138d2e654beab24162ad40c459c951511d7386a5e0b1d
Date: Sun, 05 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759643393
