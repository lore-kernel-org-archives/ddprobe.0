Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA5D205E25
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754966394; cv=none; b=cWpEwwXOOQeSVx4MF0BQIuXK43gQ8hGPc1NuuibaI7kOW4W6RyR2qvUjlfPttGjibnJEboH14cim2W1nM/a3hFkBloHUzlOlq+Ne5q58bTuwc5O2ocSqJqy14HTtkS1QVmlWXZ0w7ELwjfssCbEbhrqit1Ai4/hISCj3AoQfhvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754966394; c=relaxed/simple;
	bh=ujCXHKcGl/k4ZXrF2eMotxnnWL+a5IV6OampnWkABWA=;
	h=To:Subject:From:Message-Id:Date; b=OWtv5lXyNrbOzbKXQyPTSP+bxhit8IPjnanzVRB+l2+sStmn6Kl03anxReK3YTdgDB1WApyFd4APeuvAxjS3LX/Rub6pDHDuA7G5YxPzcAg6/kIrr/h/k/6+jl5clZhdLtPhKDiPu3m6bIv09059ZOYfVHdUW7PgplvD5vC13Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYKpzywR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYKpzywR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E41C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754966393;
	bh=ujCXHKcGl/k4ZXrF2eMotxnnWL+a5IV6OampnWkABWA=;
	h=To:Subject:From:Date:From;
	b=gYKpzywRl8uxQBqQIZ5/4RPNyuj6lQVg6pf7ypBSlpicFFT04TLH3t37l+OpAZ/b/
	 /0LvO1MWGm3Q8/EFkfeCX4SDSrm11DaUxbdwkCHG5E3HPYtTExUAIIKREOcSAPLIrr
	 fpvPjkca/0ick1ITzX7SGCC6dPdcOsP5my0W2CeB35mbR6fL2h10X1dzka2Si2lXu4
	 Cw5VmbdvJjrGuK+iDZ/DKqa9bGUddoup7F+9FRPyEihFkC8DhqFvNfl0DJuEM6Y0zy
	 StxIVsZm+DtzHzyR/Z0iPNhaKfyxnsIiYFzzkM7s6VJOW4lO+xhJyO8o5JaFUSoiMT
	 uCRC5qxfQzemg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED14CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496639357.18425.452224648504328662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c91827908c6f2651872512546234869974b97106beba86b141a6981c0071afa
Date: Tue, 12 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754966393
