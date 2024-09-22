Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA3FC2E3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727024154; cv=none; b=eNIgDrN7FixPpeD1vl/U/4Eyt/RDf4xDywKYCQz0goa15NKPfvrm1uRGfd29zZrhsCVdkLaHtceQ9Du1AT2nYSBM/1XGE2Gn3XC0bCy649rqlYusJaclRQYDt0qVKC7HCHjuxax0aFc1a24Za44P7RlJy1WnbHjQJ+8lImLHTg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727024154; c=relaxed/simple;
	bh=EBxAhAa2XVo5Brqv+6vACOmHOU5TypRhgXgGHbepQfw=;
	h=To:Subject:From:Message-Id:Date; b=MycH2gQdnCJgBfRjwbC12CjqmOT/BiAzxqbZJHGyKqYNTE393gy8sCPD1iT9NLN851Cd7I9uIGq0JsgueYFt0TytXDh7//ilUzDEX/p+TdDBW4BwTuVBgVFtEDQAY5NEPigbnrwrAEvAdDzNZYF7YaDvISORT/uQslK50dH1enE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3NY2DUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3NY2DUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE95BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727024153;
	bh=EBxAhAa2XVo5Brqv+6vACOmHOU5TypRhgXgGHbepQfw=;
	h=To:Subject:From:Date:From;
	b=Y3NY2DUriFfPs7bHTWjxknFYeKAgRcU0i3LVgI2+Gi/Ft1fEkCdA1zz6XZivXQGfT
	 DiujPEvIZ0Uia6WFOK5Toz/w00pBDyiEE65BrR7LGdXVaTa0LghbRcSUSOlpow7PqY
	 QuERNzq67OnCnJFr1HZytOdtqpDxZr6us3oeBQ5wfA9HY68AeowutARkdE9KVhgBKY
	 TjJVYIBMnC1fpYnMe6S9PkZfNlx0GNw6TbK47i06pH2j1fjrPoDFDfD4nACzHV48m7
	 cW40FpWupdnsOUjjQMvBp8LoPOBfQovK2bYChKOEELjuwllVQmmyNqZOWA5CbOcSeT
	 6b1UUCQBPoTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7DECF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702415368.27358.7756696045878727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a0d8fe0a480c753864ac3d94e270885e6684ba0c24aea6a433e26727d3a707
Date: Sun, 22 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727024153
