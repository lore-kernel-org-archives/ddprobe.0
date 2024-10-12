Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD501FDD
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728696954; cv=none; b=HKtPIHTXNBZbPpFpt+186jr7q68+fXKd5ziKkNWsDXN6L5VyIQ6mOl8hlpG4zBB5cDKiZhnlmRo/zmMVDWdOlZVqkKRRFM8eQWXj1wsG1H7Eboa9ItbXIlDQBwaepZaM4b38ZOdzsQ/r27SxfqgdaMtLbO3zvvkGH4RAtNHEcsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728696954; c=relaxed/simple;
	bh=X1ab00sqGJmIuR14CSCHq2FuoxlCCcMr69jX+IzsktQ=;
	h=To:Subject:From:Message-Id:Date; b=hcCRFrv3vpb1L6l9W1UPOK9d+E8E01t0VgcR37Xm9t/f/EKJ/ufkTohVy8p9k3VjpkFmfVlKCXJr4DTfayhrC4cE397HjXotrN8kUSivYpIw6H4gV28Ui19J4m3MpokQZplrljeDFvH+xVBr9ICNgJi/uyHjWppYG78NwEazkNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiKhz9Pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiKhz9Pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B642CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728696953;
	bh=X1ab00sqGJmIuR14CSCHq2FuoxlCCcMr69jX+IzsktQ=;
	h=To:Subject:From:Date:From;
	b=PiKhz9Pz8/5hbYq+TW/RfIkmQq9P9NExmmnIBsBG/PuVP1FytRnhwPeDbPFOHHe1F
	 O3N/I+ousFhQ9tuV8R/vGwI/r6SZK+6mjz9CGbA0obenqp0vQ36Xfgi0nZ/rvBdiEg
	 IWMutplaM+MfA+yEWwMUF7jku9MQTmMNKCzwO1cp+ZrPy7Wz6phv9leyRe1uE8pjs7
	 SPb45I957EGH9dqXDhjxxSGbVJgHr85scILFKJi1zHYAZznB/UMRiNl/1oXmpN2iDZ
	 DbYGDn41M+BZPJ4+GIHcjhV3nX4MXK4YSCK6ImQ6dkzsFA97dJqpX5cQr/y/oEcxFo
	 nxr8lsghP9CWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7140D0EE1C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869695365.483.866200389310109342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3de82ce00d8f83750666c4064a7dcfbed3a79f6a0f00ca765c07b5b8b0dc21
Date: Sat, 12 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728696953
