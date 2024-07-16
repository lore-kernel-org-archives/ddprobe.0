Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69441F501
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721117123; cv=none; b=WRKyGhBf3+RxVC33orXw6Kz5/ctW1+RQg93hx7eoYAT7s/dEqlSUsPoqBsWh38aARq7VotdxoQlaQSw2ZdZ34DiKRXe/pUl+YYyEzekyZJYptCUWR5y0p+jN9H6/TurGqXEnBwfYvhsAF4BVysFENMuHYAz4g0YwYHs2RUi8yDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721117123; c=relaxed/simple;
	bh=PwLoBF7lPxTJpmZVwSfMgZC7FkAXWz5SYgqgsH9sDdw=;
	h=To:Subject:From:Message-Id:Date; b=Ej3XXioSOnwIZ6SQMsOJlmhlGheeBARGBGKtCnWkW18t3pAJZQG8o4xu3G4jLariKwY06O+YgoG6Qe7QaM6TwCmsm6Zyskc+ae9u2xGKRolpu50hoyEV0UgGJ362ik28+tYxGgMNhUWY5uhzyNytusncv1CAFBFDzIklCxt7lXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8RSUn/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8RSUn/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4592C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721117122;
	bh=PwLoBF7lPxTJpmZVwSfMgZC7FkAXWz5SYgqgsH9sDdw=;
	h=To:Subject:From:Date:From;
	b=F8RSUn/LVUfVNL/AxxY5Gwe4p3yOt6Epc5BtVHiUeLiOxV6FRzYgwit18GiY80Ftw
	 Mzgg4Nkk7FjxH03tTK8Dg0L+b1RzhUgT0WbCLPRjFALZMZXh1vy7UTLCQ7gQdY9GWQ
	 Hb38hfTUpdp1Q7fpK97rMelOcO5PfpNzI0BR0sO8kgm7YsyjhI5Rf9t44D5CVx88+x
	 QYfiiJI0sSQj3dOgVQ+Mi4kQfnTeCMhhB9n95ntQO0ZxC1yj4IPMlaIVYXPQc0dlZC
	 h1R4swWBs3hxyLGtBa9plPhFHJ1jWSvk1mxXDwNtZvi3aMBH6K+8MziKjF7pPRbhUI
	 tWPMeNMuubiug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC235C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111712282.30371.2846947273203218245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5af7698f69e059c97b876e3b7494a32df3dc7447dc59b4d2647cd711326fe89
Date: Tue, 16 Jul 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721117122
