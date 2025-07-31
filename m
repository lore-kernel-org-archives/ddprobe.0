Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEE81B87F2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753974594; cv=none; b=TDDqUtd9J9QjzcRSzkVhM++dGpm2CZaCrS4YPcXg2g9BBNjyiBoDhCP5TE7KYsie08Mmg9HkwIOxys07pkCVZbdx3i17MXxjhi/guOyaA1dPfPFcFoRXwLYsEw9SkN+GxB+6bBIG1A6vPzDjbOprq4lJDeCUsf2Z1z0OSWZWLSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753974594; c=relaxed/simple;
	bh=0yf6nqr24qw+y6gtI28EgA93lIhOGuvZVgfonDOs/yc=;
	h=To:Subject:From:Message-Id:Date; b=CLn/M3k55PxFKqAW8L5SZDGwCzvkpA3aIaq00sSy5JN6EgGulPC1ITLvTl9BEUVoF+3K29PIzDgdXMx7xpjV1AQrdPHppryhkRKH2Sdg6WCL9CR+3iXsTlQPxz45M6XOA8MOzubmS7O+ZD7+wH0JKMGzzR3I6ZaZMydZwAw6TSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofQhQWoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofQhQWoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2944C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753974593;
	bh=0yf6nqr24qw+y6gtI28EgA93lIhOGuvZVgfonDOs/yc=;
	h=To:Subject:From:Date:From;
	b=ofQhQWoJfqx5ixOvHZ46k/TLaPpbqnCQzBUn6b0MwHaVmP/H00NQr/dipnMHfjCSP
	 aKPLdQaZdVXnBjE1XKm07c4w07UrWmbR41ZkgwBVr1SR4tciv6B+knUiJlS44Xns+I
	 V3zTLehlcISHCDy9Hf+nCh0BjMH//OP+AIzNim/jN4nmLPABZF1v6bPWgvciZLBKBR
	 durN+vOjbpTyXo63rgVCiaNTMkU4dRFSXul8+YULvWxWvrJV59xpdf1YA3i6V3eW7J
	 YbgpSv7NCSjhl3BxEsPkuHoZ4/V5vWZLE9G70CN+ohHvFfjY05+znZaSQtGzQD4TUF
	 VS10Mvs+YJqVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F35C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397459358.5685.15947777027939511724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12c930e0d3b5179b79c5b4f5bfd6d904e1d5bd5ebb480659786a1aa94930b3c
Date: Thu, 31 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753974593
