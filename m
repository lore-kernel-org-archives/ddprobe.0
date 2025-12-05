Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFCB2D94B4
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764975774; cv=none; b=gYNH2tJTZt7+IpJPo6EV5hyUw+0DtAuB/t759dIayVAPT4nkJZ09UBX8uJxyr3D/o4b1b6bRQQyAhiQFc2G5C0My/i78Kmw4xLVx7HaZ8GfHBrKXUtM9oiW+HnUWF0nLKqmou+FeIXH+vHsnIZcZmySwN03yGgf21D7u4HAgEbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764975774; c=relaxed/simple;
	bh=qZfKI3ZANy5VQEHGbwtNYITUDSQ8fK745zEBES80Ph8=;
	h=To:Subject:From:Message-Id:Date; b=PsTq68UyifatmMFeNGdR9FomihkJNRujIUKcWrFhWQWb3TV6fp1E7ZWjbiJbsgxny2sDtE7qBgvN5LawTUzMX/nR+Ox8M9XzYgn+0V61SRZu28D6A498hRq/jP/vt4oWxJznpgg9QrJKA5+VcY1q8h2L/N5kRzBPfgYV7MTAMco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaVXi8Je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaVXi8Je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764975773;
	bh=qZfKI3ZANy5VQEHGbwtNYITUDSQ8fK745zEBES80Ph8=;
	h=To:Subject:From:Date:From;
	b=EaVXi8JeKFDm5uOPOxDPgf+wt7ojkUPttqJ+l5Muyauy9bQcRkoAyGYe4BcIrpiRH
	 vnYK4g0pcsTwJqJsqWrbicFYyZcQNlvivYQspuFMjRVrH34nVrcoP9L33r4fiRhYGT
	 m7l9u5syYNRjrRLggH4g9LyQSfPaA8arNn78mNe8nJmfwG0itJxMXppDCfsHPMbqFF
	 pJtpIEB2RegjzlF1YdjW8QOy7pVRT9ueLKXow1CiW2Ht3wGN2GAV4ApcnhedEhsaGv
	 TxcohYWQliPZxZjnuT0YeHRxfUNutrslF0M7nY52WM//8x9BmHospJO5ZVXrGeJDZt
	 tvpa+6O2vkOQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA6D374B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497577358.10963.901668382494062725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650cb4429ce5e501b465e4172f09cc5292c54e0b81f80c53e2977ecfb3226241
Date: Fri, 05 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764975773
