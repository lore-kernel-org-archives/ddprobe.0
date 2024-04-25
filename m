Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9E137140
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714036883; cv=none; b=Q3qrTbE0PtjLvOutuxA4ewKhep1Ac/PnweSOspxi7obHFSb8hwMFtwRUu6mQz2wF5YeV1EZt5W001yKRXtki8UvVIO6Wbb2ZP/RQ0WIKLZCpCSDE/hGkQF091PiGzy+fowHB/0CaubNlcz0G1KFjuxm7Zq1mXytkPfWHt0lE/jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714036883; c=relaxed/simple;
	bh=QFCoYqRFhHntAN7+T2j4OvraD64mOp19pS5s7FsW3jU=;
	h=To:Subject:From:Message-Id:Date; b=brLOTODKLQuySZTjR/pgLKFqp8Ymdx/3sm5VL+F8BG2eFK7jobp8BjD8Cglbw1m3IaRhn/Hj6Au/aavZBLFs+59CzzPNs/1EnpF8DDBNXoj2v5x9Yeskzk6lcJnnmIDNotatMHtTVsSPqJ1PB+dIoVaIZsIahBUP6/fnAQ5eRK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOigODse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOigODse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA685C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714036882;
	bh=QFCoYqRFhHntAN7+T2j4OvraD64mOp19pS5s7FsW3jU=;
	h=To:Subject:From:Date:From;
	b=OOigODsebhJp9IEySbmh94IVF79Z9IFx+ML8P55kV0yPifwsbLc9rBwiRlxlAL2fN
	 3XB2yS123XVTx+D7Zk7tK3iI2sJKtEGhyOPQ4FwtXN/j1+MymJfBnGYCK1kyEv0fxp
	 OQZtbljDzTSHJK7qJl4csSC9T+UcpFlrG6NQztzNNK4nKgqoYOXqh0jr9xTgB/M6ra
	 4JDl5Ep+in3GcpwdZHo9HdLUhMgi/0nMXxW00DuI5UgZPa3p4ppS++BCUcmvS8jLpK
	 kvQYrjEClHu7mAJwcqfZX7O6MXukkN1/NEk9Zze46c5HH+9m2KsbR1SGYMWYKZNdxh
	 SMOnDn1G3Iz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9175C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 09:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403688281.29339.12545755218202564783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ea47afa32485c49dd420b742e6ccec0bed9550395ec26379e88d4c29dff5b6
Date: Thu, 25 Apr 2024 09:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714036882
