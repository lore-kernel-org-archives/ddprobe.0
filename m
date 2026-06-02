Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7791B87C0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780430074; cv=none; b=RCivckHBJFr2jLrpeZtETqozWJ/pMhzdpzVpAi6ry1Fp3gSYiBpPerC8JxoTiVsPrBuehCObIvjx6rstMkrfQctpZzu3EsWfeB1+ZSGvwPD0fABoYshIJgiSVcGIfKMBmnytqGzyvdddiGiEI590NbNXtEBM1i8AhP8CeJLlWec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780430074; c=relaxed/simple;
	bh=Xe8men8bKTQm1EUKaBlbB6IwqOSGmLqdmnnrT8exI/c=;
	h=To:Subject:From:Message-Id:Date; b=XslmaVCoqEt9hVzImPBE6LevguuKWqEWBG3dAT46BHMsME1jz42baADkBJBe9faejklPEOFUehw9ApZlf7xo3TUVEg5l1zJIp6Rry47K8fxM/5ZzZTY4RHWVXGQLsmET6dfljsIyzyPL14PSamNoV5HuSsoHXwR/n94e2A9tLu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIamy6zZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIamy6zZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E58C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780430073;
	bh=Xe8men8bKTQm1EUKaBlbB6IwqOSGmLqdmnnrT8exI/c=;
	h=To:Subject:From:Date:From;
	b=lIamy6zZAynda5/V+1st4z7y/DMHQIZaTidIKT1qJHVkM72eIr5+CbuzHdTvuo0wl
	 Ym3ssf14QFerrEQBuF3iaSzggzPj6x8+AsomMnOR/ZF0IAwjYby2WBJd2u1r61xN9t
	 RQw+qFxpTqVF2U4IH1NqNmG8WDZJ35I8rovxESPjngvUdzbDCeperwhc3YiM/PmdWZ
	 /efWheBQobRFnYyrYLHpQXF4e1FF25Xgaw002K4KdPPZlf0tV81yZ/+u8ExO+JbJyS
	 GkykuoKPunfSj0SJJtXaRz8f1xzYuF1+2KDqr6DH48tCpLLYLBYO58rCWBYDp60H/X
	 B+MF+ax9eaEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DECD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043007368.30470.11007912286447502958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce5bca58205bd3907b0786dce210114f753b3c5ce541c19bbe1bbf0ed531aa6
Date: Tue, 02 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780430073
