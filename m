Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4707A36C0CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781567794; cv=none; b=shjOVocSG2TEAR1JBADSZX3mdxwayHvIVRpyDz2WFxfNE3JSotzE5ULtQ4anCiVjlSKUk8KF9kA2FqJRA51q8h7C1XkDq1WGavKZYd/w/iAklrnfJuHaxxU1UDdIX33v7xphzLdFjKdB0UvNFNOcBi+2m9CA4nmsFzHscGmMBO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781567794; c=relaxed/simple;
	bh=nEwjKWx77eDeJm8Y3tgyecRksDX5LgdD4Ein9DM2eMQ=;
	h=To:Subject:From:Message-Id:Date; b=W5IflKjz7H+rXw+YhzKek2jZ5a6rWEOkM0jZQuB5qXUBsWFbAaQxQf3W64V8T34Dj5LAnQkF55qd267vFCcPVIZRZlu7Jb9Opg3nGf+t0w+Re2asDpnLXhZZizSgjfTQ4X2+ZFGAE9mJNKX0rSfuXUcNq2U1VGxZl+FKPoXUzic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxdw1K04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxdw1K04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63FCC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781567793;
	bh=nEwjKWx77eDeJm8Y3tgyecRksDX5LgdD4Ein9DM2eMQ=;
	h=To:Subject:From:Date:From;
	b=bxdw1K04B6JM91C8mHYMHqWre8goKDckbBahV0ihgcy4TjRqlYNUNB+3BOCsi/qye
	 P3eZGsxXfLAEnRNUFMEG7pRI1wUR5cJM8Pf4Eur9ZsUCWq8ol8fLDlnkisRCXBrEzW
	 Ajv6CVPymmzcIQ093nHGijLRHlDKyKEiWuJveK5NUBGG8qruz2xBDuDPqlppRBUSBr
	 JR3qQXb+lgKhoyof2f+xZ9g24ggsaQRFnzvja0eiY1hbaKT45CrdcyoGYYZrTSYlOb
	 cMBr8I2o0Bve6YnQ6Z7qGHmxVEy09qbJtU3xjhy2jPdptV/Ea9YB2gprkLQeq3PGmQ
	 bRN/s4OowRU3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B599ACD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156779373.12611.7655856470078941081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b68222fd07983d668439a89aabe8c93889eb8f5a3dbf32d2d6ee502308acc68
Date: Mon, 15 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781567793
