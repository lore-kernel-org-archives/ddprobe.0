Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32551153800
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742755794; cv=none; b=QOMc0AF4a+50D2YxZEUoBe7A50/6Akr6S9s32za1+QIJ2UMajwQVxxJVJ5bLRVok3girjFjZ73QPaJampv2fDcxYpHC2C8wY/3z2mynNhjbU9843tDfwPFwO8qfbM7UXl9ENmqiSuEGyH2S7fhnHOierw+wh5SV3PU6RLrEWqOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742755794; c=relaxed/simple;
	bh=tWnU9l7rJ7sI0yb92S58JolbKfo0XGdPvAqdE1vEh0E=;
	h=To:Subject:From:Message-Id:Date; b=pqmV5mt8kPrEmxXcUpI3vBfoYCr1eY7AvfXsNdKpLakgYbDYylcvj3l1QWb6X/OJjIXE56jnfBdnoW0ZBmGxNFTlddYFJgKb2XmTqmtDV/sMfzwosvG1qEW6u+eYR289CoqFqTvJ103zimdzVvBCvairSBWCy7MBVOBShz0Wn/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0bFvFre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0bFvFre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742755793;
	bh=tWnU9l7rJ7sI0yb92S58JolbKfo0XGdPvAqdE1vEh0E=;
	h=To:Subject:From:Date:From;
	b=O0bFvFre26QMHVIrRh3oPTEF1b/Nrg69bzCumbgRHssFadKYflEDOkZsJ/q1t7FuO
	 +kLvOMf0X/m2umk3sbX7TO7n8JLYiVWGpkdKqPg7QOk2S/bCxufszjF+2AdLjxYQBh
	 vRkpyHeBk7vCh/d/ub86Kl4+jPo1AnrwzHKIgUaSEH8B6R1ctIqP5RtonsWBAcNyQy
	 yoNu6dSZ2WInvwec6QFgd1plVkmT7FTCo2fS6EFnLvZX05ljwngOGbw6qYzpQx5pyp
	 gPeBQkq75tYRSE/MRH23SXpqiOzROQJGZUu0SK0/7fFDtwjATvG4iwd7BkR5522WGd
	 EzEeHBDcTqTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994F9C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275579361.30280.14338557465209144570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7cc7b1bd9a32a47c571558390483e821032c17fac9ccbfb2281be6a626c4af
Date: Sun, 23 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742755793
