Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A9E1755C
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714933943; cv=none; b=CALrmGEC+QSliWRfaXP1cvaaAlu2/FnC2ajpGMZxWJQth1xlK+kdNA5jj5aQ1NbM3zdPZ/tdYLA1LtU28JrHCrHedU8jY+1NYk+s/GuAtAPYwAcYm7Vrmae5zPU+30bYvpIR9J0rEI18eNN6w4hJ4mka4zF95iWmc3iS0mvDWq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714933943; c=relaxed/simple;
	bh=apzNsyde5QYlETWjV1dea8wDcF88Hp9wMzkjqbTwwmM=;
	h=To:Subject:From:Message-Id:Date; b=YeinSmp/6MYHsMkGPN06ZSJGeBmIYuYQzX/lCYioE9k/rnGGQRza0UchfIKTha8zTFJtXWi3cNL45HRB+XJqnrXo9/jMW6yVuG0Q5pIT3smoJalwyjcc/IDUlmNrOk8hERSNxZI3RyYiWnEXzbbY1rBu5sXc7pRhKViWEHQntVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNMqgBby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNMqgBby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93EFC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714933942;
	bh=apzNsyde5QYlETWjV1dea8wDcF88Hp9wMzkjqbTwwmM=;
	h=To:Subject:From:Date:From;
	b=jNMqgBbyvzBpupaAgaxzoMBEJ6WwESVA+UTSNx3yOX+gg5mrsi8gOYT8OpSUZqFQM
	 a3Swf1LAiatcqBtto6f6IVZdou0ch7nuT56ZRuUHIoTSKXpTzRpKvTnw6+dMUgPxwC
	 nzF52P6CCbevShagrjBxyB8wSeGcgWqk5bwgcAsGsXwDxMq0l3i+5YoMuM7nLAoUl1
	 EKbrId0HCLxwt/MlaVJqPAnshggeK+3ItwRczYwj0wYy44t9ZJl3xLen7xCqBsCiP4
	 6UGESfN4I+YZi8ZQTdBz4bpX8kFbdJgtY6Ri/j6LgtbSquEcP5P10Ktxp7h9A9I4dU
	 vUwRa/wgZH/zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F2BC04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493394279.16793.5934963555769864780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ec319d2593681d86ebb679c6adfe07d97ea678f1d1c6cdf8b96c6308cff5a8
Date: Sun, 05 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714933942
