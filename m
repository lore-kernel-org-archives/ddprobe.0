Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D713DB65E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776268654; cv=none; b=Tk45G45hMnixjTJJYpJd9cb8z+trQagEGiAu3xOrg+NCOruauCXrxhh6c36jea2f6I0x8+HZ9/9Ug6n6UunoDw9rMlEgXhQN+3Ft0LXCocv/b2UZWeNiMidih/XiPJCRqbKkYooOmO8ubT8TY/FhMYHPF+ZM/Ikjvi0/Jylk7v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776268654; c=relaxed/simple;
	bh=hfxtkp/SreDL93VJtTDOr1gDOYuQnWBUS1fweeo4UHQ=;
	h=To:Subject:From:Message-Id:Date; b=TYTPAygtbWGwOeA9BOX1EIZuJGsLg8nP4Wd1vrmZBD4OY0ZR0Ezkyay1RbhNdh2poRI2m3uiv89NT0Nq60/poWEMF2W7kJ8AE8ET53CbqFJ9YI1rh9LhaSECrpI1jiKt47zNuVzX4r3EmV9yAA0OebMfX4n/eOHSdaYWD10JODU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N49/KGQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N49/KGQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E65C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776268653;
	bh=hfxtkp/SreDL93VJtTDOr1gDOYuQnWBUS1fweeo4UHQ=;
	h=To:Subject:From:Date:From;
	b=N49/KGQ/kl1tTS3GMI9PJFN/cABx3afBEdKl5YT6SqAVn83jWpgNimhvO/jv766Cq
	 7338VDGhwsFdBBm1nF2QtThhiV5wXYQQAWh7RbRO3V9CecrRMFpZuiA7BVq3gMralZ
	 9c//3CrkjxdPmGqqJBQXLHV47gnBBodSuJd14GeqZBcF/kJ1VWtRRJ+3J6lTgEOfI7
	 n718hOuE8MEjNsU9nVmARPGalbpBZGcbiasJfXkCPc0mfz4wz5CrIlUR/Vy0ALPlqi
	 NDai7AOAhvt+pFnhWMYv9VdJkwqh8f1tfQIldALJFa/B6nU9HYxsDC9XQBRspm86Sv
	 o9nvFLrq38kyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFECF43853
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626865368.323.963267834987965275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90134813959a88690d20f20f6d34e4ac2daa72068547b4f33b30c72a04c9548e
Date: Wed, 15 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776268653
