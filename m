Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED72561A7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760111394; cv=none; b=kmwITrpk/70WPyrRhW9xjHwm7No75576kIaWisYDk5YpVU+OOZhCk7+YCI6SxUgSnTF0RaprNkTRhpjQmHXHjqavCvx40cUS2OQvpn2WlJHFOobK0CRC+AJ4VReaeItgCXJwHRg9wiHzx5bi0YWNvGXGe1IonVI/0NuuKcW9kPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760111394; c=relaxed/simple;
	bh=020AcleVKCZb8HzSZqZgodSU5veGzb/UQ7ninlLcjqY=;
	h=To:Subject:From:Message-Id:Date; b=Wgqjd7gUwqel/i1GhiH+1xr3y+6bv/TO992Hm/J+7qvY0LiqvqkpYBN+miG5qPwXe8jCG08aDjVdR1Mr4/eR0nr6dOduRW/h/kqO+I07c0lgi7LQC+3hUHtNs6eVgmCMtosVEgpz2VyUUwv+aiLok12YsOR2wldG0LIDG4Xtx00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWQBV+VX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWQBV+VX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6303C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760111393;
	bh=020AcleVKCZb8HzSZqZgodSU5veGzb/UQ7ninlLcjqY=;
	h=To:Subject:From:Date:From;
	b=RWQBV+VXaueF9+GhajwdlqHjrPZ4MOwJyzQ8hw/lNCLP0ETrrEFABwJmyuwvnHOui
	 HVoGQ7loZgdXFar610K+IsHxHfX2nEhIAjm5MFeEv+9dRf5dTgewS80DRD+CBGQ4m6
	 xBosdh00YqGs8tc7pcIi3bV756NQZ/SCT2gzW5ZJDH3EITG6PYgl/NuLxA4DrXvBld
	 Asl7qQKVTJok0LC3kZ/9JPIZXZ4YHW/gUQyLsISdK2h7kMwP1YQta+Ttnlt9KlUaTG
	 vfB1YshaLINl4Esvf2gtwbDenCnqfRe14cTCjbCrpg04k5WH+mmw1lhcCfY4nTG4Fu
	 UF0fNRCoqsjzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93286CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011139358.11848.1307120526107276915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63953ddb4084ecdcaa99727cab808eec40365a97a960b88f0ab621a78cbf6e4
Date: Fri, 10 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760111393
