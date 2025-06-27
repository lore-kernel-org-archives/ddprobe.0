Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1366A2E92B6
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751036394; cv=none; b=C/Um6JH3/I14SMJ8peTyy+oAwwq1H/CxkMgxAReqzuBHoFGm2qud3bkA/agv2R2Z0cTQuxWGN+yAe9szqL+pYrr7fw5IBu2rDU5JvfMNEZtwnFQvIz+lEEHNO2OR2R6/UzWFbQvwMfZ16vMp/fSYI5bWgfFaMH4etYM7R8g4P+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751036394; c=relaxed/simple;
	bh=XFxy1uKgYIxuCJYTc06wy4bFqHNPK8bXRp4lOOm1ECA=;
	h=To:Subject:From:Message-Id:Date; b=JZ0i+aXnmGCx3mTz/8Z1D1aPYwemBbcqduGVLdb6rTAj0DoYMtBRQsC17+2c7G+bga0M0zVnFTSKu7BT8CDKin2n6CRHfqJHzd8tNKS8HifVPhCnu8wqhCTMkGSaoQwBzYBKjtMpa0qsFPtGaL4GMJmK4jhRp6OFYLoGqizfLds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do95g+S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do95g+S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9959CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751036393;
	bh=XFxy1uKgYIxuCJYTc06wy4bFqHNPK8bXRp4lOOm1ECA=;
	h=To:Subject:From:Date:From;
	b=do95g+S1wOL0iQFCT1O/1jlfsOahYFdiLbiiaZ8n9maKOnM3s2JES6qNPR4rbeE07
	 MeXnQ9rnfERkDDDwXE4U6LLc7rmJNASOBEtMI3RTVnFvm970Jui66JqTRLQJ7W3+ZU
	 jloInFUyK+nRX9gnM3NshNdSH5zRqxKe8S4Zancg+TlsEPrFiTJWQCru/7p6Fh6eaH
	 Zb/4mlFN9wfCTutei1NK1toRW0HS/s/qsyaB58i7z1HQ/AhClgZiOuYVXQSWsZbZRU
	 kpXtMEFAQRsRwh4CnCud215dc0bj4PDiILjDDWd2UXKLdQ+QtHtWxSdiobb3NnrHtJ
	 nzJPAxotF9HAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BFC7EE39
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103639359.4351.8154998082018422072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9c68985ae56dac05c98c9bb6f95afff35c7b83709f214b22784ebc71f49d1d
Date: Fri, 27 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751036393
