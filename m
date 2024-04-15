Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A85082D93
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713215363; cv=none; b=sxxfUJPdFrwwSzkyzZU2xeQFVyQSAmmAevfG96rCuziZenXz0PM0zr1CQc9jgCnCTt8s7MOkbY8Ifz1CKX/F6J6E7g4tnwCHPad6J9D/4xHAQdyFWBB2TuYxwfh5GKZnPtqXwAI+wDnbn2CyvJhxlNoWicrei0G8IRMly9W3GNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713215363; c=relaxed/simple;
	bh=IqKTpal9SrO4WMigIB9VAmUAuqe3UDiuecIBsUlVIGQ=;
	h=To:Subject:From:Message-Id:Date; b=TfBSdAxp3iwqQK2lfVzw5qUw2VXnKI510Ta1aie4sXrZuxzxl2cflCdfcp3T9aSIt0THv5JyMhgfTAIGKOfGRMzjQlQTBeAfwv64aGIWkSAy/6awiSH7Bvj3aNGXI56rU1w96ZGP2/1ZNdIu7esknywojlmQLwOK1fJ/wAYkXug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xd/t3hva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xd/t3hva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9555C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713215362;
	bh=IqKTpal9SrO4WMigIB9VAmUAuqe3UDiuecIBsUlVIGQ=;
	h=To:Subject:From:Date:From;
	b=Xd/t3hvag0t6Av93sYr9PDdvw5+AMTTY2380DvUOsPIsJhEENm9B9ZA4I8AusoM+6
	 xH4v1yjaMoa9mt+Vsvljziz4CwISTPdJaGBHneqSdMABjRIre1d4H7g4OiY0387K/B
	 Xz9rij+Yj43ubMJMUv/dkb0m3QFso88AsLYOB6UWsGH5uVta9Ad+XoTwky+l7pwkQ6
	 X61POZl/RaJAsXd3Ks1I2lazswhJKvUO4JhHD6JpG55oF0yMtIipt+qdHk01apSq4j
	 IjRUxcJGCY0y8Gt5ktmDyr7jfMPf0rD7nBVMpWD1/w53QJ4EphHLJc9q6hVA8pLkOC
	 gzwLFH1tVWUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D41C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321536281.19287.7462772988873679665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448c0ac8396a128cb4378ad05e5757e72696252722303f7afd477657a32d4cb8
Date: Mon, 15 Apr 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713215362
