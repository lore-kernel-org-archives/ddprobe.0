Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F3221C177
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733413554; cv=none; b=okC8IUrhljPWefME9sYDYos6daExqIn4VuzmykxQE6Djg5GKyDzyNZtl76D6fWR75k9MmdnO8eFhsVqjdsT6M1uhTVLdnW/rHc+XlYk3/zMAsGDRrxuD28o5vlPL3BTlxTx474YQqZDxvUDzSD5gZk+cWj2oTRi8GXz6ssPyf8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733413554; c=relaxed/simple;
	bh=aS5xsvkzMOjA585Y80HAr0QqJzv9CaCPKLbrx/Fu5dI=;
	h=To:Subject:From:Message-Id:Date; b=AnXX66a4aV0xiTwxsQJH44XklFif+NP2MaV5PiJX+EjI8Y/lmv6Uh6X+1EgMgW1ez0aX5tuXReKnqvlC16SQTBFj/HYs2Ba7ZaHgTas1WQrzDBs/AFa5OKjr5AKedG60lTmV+TvpmyNwPUQ29t3I625VEJt+pPAwyawnVskehFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUqcskD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUqcskD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A6AC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733413553;
	bh=aS5xsvkzMOjA585Y80HAr0QqJzv9CaCPKLbrx/Fu5dI=;
	h=To:Subject:From:Date:From;
	b=LUqcskD+k883yu0aBAHSF8QH+6It/Z2qA7HYaf+J6/8RUWofUttu4da99BG1aK8Xu
	 Iry61u33sEyOCPzlc4yUVX21H9qse7Uq5ZAOcCnCMc6kFHD1lHOc+lFwSDkAUWOJpZ
	 x+eX7RaJC5L+jWnLxda5rEdr6Uv+LyHcLy+TclQJa/nxq/NoRnPmQ/8Jx9BRPBDRiE
	 SvU3l4V+JtKex7jfRWaABzxFiWQZ9gZ2inBYFCe8R/55G6VyFqTpoiKLpL4qgjYADS
	 eJulVLYpZrNzpY4WWAxXwbmSqaOyD6fYHjxtEZtLXnezwHs0RFKsaQc1r1c/a/a76a
	 M6MIzFUtJ2Rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F32CE7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173341355362.21525.8710981924644784763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e12b635b1da4f152a6343253eb769a44789e7bd8572686e2cb9a5ae92da9384
Date: Thu, 05 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733413553
