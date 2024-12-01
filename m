Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F29318EB1
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733039754; cv=none; b=rXW6INKT+nnX8EbEtIYgKlPnllqkBLdTU0YVYnuc5/d73eaiLY6JJz/AvQj8qIFLfrPuIIWj0IXiTCSLvRAgEhIIHvs/8sYlcRowQ3/xMXB0HW/BEmEwhmUGmMFAULmSmwh7rG1qs4SHpkgLnYbt+doG2c2On7qbDF5cwbUS0V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733039754; c=relaxed/simple;
	bh=kcvoCveD2MppYLEgGJnU20W8WZqo/BBo7S5azMLQ9fc=;
	h=To:Subject:From:Message-Id:Date; b=NKBU5BojbNXeg2pDpaM8gZ3Os+ErNRBp4c+mtNruN5BW3pQrtNFiDeSL9hqAitsqOms4LGT76QABadpehgywVmNaQlaNXfXNXfIA8CElIj72Rtpz7xdizCUbmCDhRu4N5KDft0N1jGMqS8ZBp61QGu1RGSh4T2VeRGbkPyMEYo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsuF92I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsuF92I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB2DC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733039753;
	bh=kcvoCveD2MppYLEgGJnU20W8WZqo/BBo7S5azMLQ9fc=;
	h=To:Subject:From:Date:From;
	b=XsuF92I4l/DuSkNWcNTMJUKj95KNtHBRbhmjzihi2tJvPiv7bIqpur/klG1tUIXzS
	 68Xk2U1UAV8eXz8jpJT5lT/YMtKdItkFGnC3+nKzPnxcL5y31f5TE8T6EnKWlOjn/D
	 PFU7FZZkV+CmlrynVr3Lm7H1iZ7x97owgFy7647V4wQB0LWGPeColosb1u3goozi8G
	 i/sxK7mdh3m9iszvydAd8zHKPl1f5En4E45WmmsRM44un1SI46EPI1iL6g1O7lLp+O
	 Fuz5kKwiTsq0qLG6nFTYtaYH9iR6vqg3dpdDF/iUpXl2SVaaRqV2OHzdrh1Wo6Lk68
	 QEjkn7FtSQfeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77DED7360C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303975364.28524.470098825114162023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb74663fa50c35717f0b886637edba7d74a0d0e98756189ad758e61c159c81f8
Date: Sun, 01 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733039753
