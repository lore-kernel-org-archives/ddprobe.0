Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5352F3BBCA
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714323743; cv=none; b=lh3uEqGoz6m4DV/TFeNVoeM6UtbEYXIW8nKCXh5CjRGL1RWz9yRrw22+NG69BdaJbKvLy5bns6mYsdLgFzp0sGJP6DZqOerKdibP8x2dsDYveEtD5XEIoT8MNd/LLeV00KdP99TIP+eiNqYXGC0fu5LYyiOaHuNSBXwzq5HsqvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714323743; c=relaxed/simple;
	bh=1hbZrbcpv6lrHyV+hoDZBYtOI8603dMfjOCmTo7s/sw=;
	h=To:Subject:From:Message-Id:Date; b=dYUxIDUbfwIMxrnpEHLRgMvn6oZvOEqcXzmxnTvpGSiJEQyOQ/VaQp+OqN6xq7EbNNj0BsHLPYzAuhRcKCdu2GCLGlx7yyua0A+1xtIKWEtcQIxdCLzQr3K1XIguPGoVpmro5DRAaYWywjPBWQ6t7dIny5tLsfYR8GqYziWCn3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0lixFHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0lixFHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1687C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714323742;
	bh=1hbZrbcpv6lrHyV+hoDZBYtOI8603dMfjOCmTo7s/sw=;
	h=To:Subject:From:Date:From;
	b=n0lixFHMLXtp4c34jCVMFK0dhzbSnQ//6TIryRnGTglYQFrXS4M0EOi33AkeTE80Q
	 GI1IahO3cSe9QfOM69Mx5v4hthBxPptg3+JwUT1oSuH/rBIT+gpUUwwMH6qkodR1XN
	 6ahwMry6VAiubOn4ku63ioRHuHczGQ8wjt7AYONzZoJY0jmGTKad0StkHXsHBWev/d
	 mwMP/7MUaax6c/fr3CMe/1zwqt15g0BtWfpioC1uFRl05fUmAp7IB7y5xKtzgfpq0L
	 RayvhONIaV8VOtighwf8Ya0xgNKGHJJG75k9QWSfC0PRjAtMZH6WdIaSRPse9E7uuc
	 DiO5x3yM5vtiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB63C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432374276.9720.10381842860164124840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6152e3e8cc3187a9fede15caf9550a80fdb4ff9c2fdfcdab08694cf040b1db68
Date: Sun, 28 Apr 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714323742
