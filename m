Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1781CAA92
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758535794; cv=none; b=G1z5RzLnOXMuzmZV578Ws/Iv4iR5rWp1acCzAR48qo9uxXLRnOMRsyCHn9PPFzJtrUTtgzhOJpvHf2Vy+CZ/HVQpLUo/gfTkzDkyLACJ09VzTsYgJG+petP+Pk4vMp0IdNgZdUTvK0gzn6oH/AsLSqb5RkL7Jm3xthCnbjOyjTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758535794; c=relaxed/simple;
	bh=k2t/HVawgffYPLUzcci+82a+W87A5/oLzdeNaOe0vI0=;
	h=To:Subject:From:Message-Id:Date; b=dSny7X6g+AhE6BwrF++TjuzxmsT2rB16oEuR4ssk/uy7sFTeNT2L/SaltRSLQN22q1Zx/sjBOd2QOzo1h0RMfj2pyUjQO4P52q/VQHuoc8pB3nPi7wTz3Kzv+75Yzb8tMbwVTWBWgkJpB+Vc4t9VtDeVBE3szJ/zxNpsfb9BTxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ+I6cBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ+I6cBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B7AC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758535793;
	bh=k2t/HVawgffYPLUzcci+82a+W87A5/oLzdeNaOe0vI0=;
	h=To:Subject:From:Date:From;
	b=kJ+I6cBiqTOkX6BUVZ3zjGl81JpZ9v1tYDKmBYnWmGIQr8yMTXsQG4gSwcdAOs+Uo
	 bBA/zbC0Rv36KRq+MSwqXGtli3TsdxcM/tvkrTO984p2ibd6cgtyb5jtJI33IoRylZ
	 YrSd2PvkS1I67qh4+F+phbStMhNyZm3F2dlkuyIeHKtzyAA5DsLcr7ySy7YMqEL2jI
	 VBKklpSpCyhn6Gi1EkRCzBD91eZhNbDpUp8tM2gsWSd/Jh8B6k7L3Y9ZVvmVO0ecJJ
	 thfU4cO5G/r2tbBtDKtm3ec6uZ2L+seTpOB/r3Wc+cBizIog4kHY65SsQv2ejnDj3r
	 vsymsp/2quwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93ECAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853579357.7963.11295728921046574683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481c78181b5d62eba20154f89202860fe3c3307f508942a9c1fab3c7f7bfc69e
Date: Mon, 22 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758535793
