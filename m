Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BC917727
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719279203; cv=none; b=lsViQ/Kghsb66R5/btYCrDEVg4q57uoXCj8iAC8n7Pe4xLMzz42TYleTS6HzOsZdCpF0PaIJ2reOrFBxNWJNFbOese/E4w7LZKD40DQJBQr+IQqlTdNTrHN3xpsc9sV5zgKNHQNzLLoI4q2J45BBJ8GAo6hKpDpthwRZLvWhJj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719279203; c=relaxed/simple;
	bh=LW26jgQVXxZCO91rVCySGr5SmFJE+DL5hARplsa3V/U=;
	h=To:Subject:From:Message-Id:Date; b=Cv0OZvidEe3J7OaJp4JDyBovfCMnYyJddw7m1R4gdc7GrzsDQJdR0DpjD05YM0dOW1Is4FztxVZOKtV+d0SRXAL5BI/15fnpTYPVNZBI90ek7IYFx1wfF0HCrlRqDac8q9L2Kgj5ExISKlggjfgi6y2vBm3WnnXRaObfyGOpnks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUdCFFKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUdCFFKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FA9C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719279202;
	bh=LW26jgQVXxZCO91rVCySGr5SmFJE+DL5hARplsa3V/U=;
	h=To:Subject:From:Date:From;
	b=gUdCFFKYVpKVUqwPgt4vUI3SgjRDVo7ZToBkGzVYA10kEsM2VtK7rKDQy9wfgSUUO
	 8feEncHy1RWeHqRPipZyiIvUw+nRE3o+lhSqfy7Rt76X/agFcSwbGvjlfuiobb8eqb
	 Wb8pPRrPVOJNhh8IjHlaCMHlN3HeqZbVASE6wv0Zt8W3aUbTzNhraTgmWcj9nMqpcL
	 oYH4AKJzsOC7bSWzPvDe7UleIlwGtLxZRAwPGWZ3/z/iEC0qbu0LTFrbwPPOgIyNAX
	 o/MtCkeII7yjdr1kYp1NBMmQ4sRUP2D5dOvvhfDShQKPZoaLwC9AM3JSoNHo2kMvkW
	 GU1FIxWDKaitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D58C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927920277.3844.6530529276026093565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42463f0b570f771cc96ec057d5bafe40286854ea78ef5ceb9858f900cb67da9c
Date: Tue, 25 Jun 2024 01:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719279202
