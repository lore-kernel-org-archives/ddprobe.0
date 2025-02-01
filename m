Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F636182
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738439754; cv=none; b=nhzEcmdPxcXZfycpQBBYXmQqbItUBDpvSfpN/CCilV8iEjwINC0kpRJIo5ENL5PEEq3x9NVV8zkuVRMQrYBSDtRAdOOymS0LoDvKKx2pU7C3i40vZte8AW92GZJke7NJhxK4vhhzQEmgaei+IkNXkxYUDi8eZThT2gOni73FEII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738439754; c=relaxed/simple;
	bh=FxKnYl2zLrOmvEJ9b0MD9PhsvL3+96+2csdiTbJWTx4=;
	h=To:Subject:From:Message-Id:Date; b=aCIitKIPOT6axeZTENOsNwFYg0BLKO8sv21Dpq1b1NfEvd5oXtwezJ83v7iG7vH+sm8jWy8fVVwCpnIAaRq93vx6pOfVDjtjHVudlv1Fsjfm3pP5132TyjBxaClHDiNGSrWq8UUEnl3mtQfhZxIGsWl8viACedTvHl56EeCl02g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV8fDxq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV8fDxq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2759C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738439753;
	bh=FxKnYl2zLrOmvEJ9b0MD9PhsvL3+96+2csdiTbJWTx4=;
	h=To:Subject:From:Date:From;
	b=KV8fDxq75MxHiESM6piVwLH5SmVehzKkEVLxaFYz9YwmWNpVN5PomtnZT/fw/m5Yo
	 V7oYlV2XLXURSOVDgdaiR15Qb326o+pLYbmtZqOCNmfbun5druSU3MpGTRAw2kAECa
	 XaMpfvRGbkev6dh+uoc8MzAFANNd5wI5SZD9CErZEJRN/rkLtKebY7sJ02pWRVsObF
	 YxleO134VVT9RCe9NCkPTbC+vU1mZ4KjjFFxT6rMnPh8np+zu9RWFNp1aqxNMY/4a4
	 gos0zbb/E1NPK32M5g6hvxXzOZdzClIYn3tYkpalOK8a1H7M3RyoSCuPG8Ttl+Q9Z3
	 KND6apxONEXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6A1C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843975362.19111.6179974074119804604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82095df003f11e89aee276d71257554881e34a111e2fc2610291d2d371888319
Date: Sat, 01 Feb 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738439753
