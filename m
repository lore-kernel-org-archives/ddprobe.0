Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8348039FD4
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715794343; cv=none; b=oiFOH/QxucDDztrYAcuxHmHMzGFbl6dtkHMOyhzBNqSevZHQ/9eTbMO0RUBUxFibC3pNglKqsZ2+Q+G0+PB5HadtsvbDr8c4CeAf5QBxORWG38qb3zE45zuGODRxAJHR6nNgemPqshp49XZ7GFL1jDCgyZYOR5eQHaPOcLQG9L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715794343; c=relaxed/simple;
	bh=fQi7BUYBJKddO/V0F9BEy4z+MhH58Q4RXQXhnbnvwUw=;
	h=To:Subject:From:Message-Id:Date; b=KNmykHsrlF8/WNo0eJijGEjERzE2eTfmlwuBiO14w4VKzuC1cGL52H1l9kiV9dCmchwIjVIVy+Dk48noU2P+nzroBY4YElSM1aUyzbNCNAQ5H3vTsWsGa0c+gY0w1z+mkf2OXqfknuCegQbE2D04fAs7ZTkTtqn8lz0r1dHqigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1lpjLqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1lpjLqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08833C32789
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715794343;
	bh=fQi7BUYBJKddO/V0F9BEy4z+MhH58Q4RXQXhnbnvwUw=;
	h=To:Subject:From:Date:From;
	b=J1lpjLqm8Qk/c0HwoDVp0intrnZ533ss2Mf9xUqyPg6/HYe/35Ixwp00AxbCgGPHA
	 2RIpkTtupt1PlPsBHzJHHhjHtNbuGdPwfV5I/dvV1pGvCmNjMaH/vebysU1n93NfOZ
	 DjndpIFYS2D1PkNZctsAvE8ZfjspDAeTIZVwwSvZTB9NdwVb0oMvYRFxjaMSWt3PbR
	 TPr1if3WILuguAhFzzIfTXkNgDIkHOmfji8nivxRQc+o+7SjaMEx6P5G/bU8EcbPjU
	 6m4VufNUnghwQWuSMuvj2qBn76E/a/BEgohU+mfEgmonvuq1rvy9dtT6o8oVJ9qXX/
	 9NwtOJ7HTJeRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E261DC2BD08
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579434291.2486.17668994902151624876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02cb57b5468145b6fc247c455413ab02213715a0cd9cb3af89e4b8704f96730
Date: Wed, 15 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715794342
