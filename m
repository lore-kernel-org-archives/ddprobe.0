Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6953111711
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714845143; cv=none; b=eyhxPo3eeVznf5oxJzMfVmJrMnPbB8dqWeffC7yUC1zPLGKxTg2K0gIXGyK0bzoUHl25vsQe7H+UDJC9yovGIpeUBsSNvvud9nvy0em8FYlIWXi1Tb7sTrHouiKqNqC+Rqplk4FOoCopqw0hJxkXP92XDtVuxlVAFMs9b25NMPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714845143; c=relaxed/simple;
	bh=Yre6HGJVWzNirHrtuL6BMnkjnU1pTVnP/iJZuQ8QZNU=;
	h=To:Subject:From:Message-Id:Date; b=NTXpRwA4HqjWTq7LW7ZHFa6HR1vFTRjl6wWQtz+Hat1ILNVs/EwYNP4fJ6Eek+75EeZlB7F0BgUEMYVHNB1jb4s7FShTyvhdu05Wszmqaq0B5UjjE06HHgFFHOurnbFjIELF708/mZFgoMD3DxwQ1GfoFOt5aR6Pww4RVLSyZBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PslyRVdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PslyRVdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72DEC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714845142;
	bh=Yre6HGJVWzNirHrtuL6BMnkjnU1pTVnP/iJZuQ8QZNU=;
	h=To:Subject:From:Date:From;
	b=PslyRVdpaM037SBzuwPfGjftOuK0ULHtvwtf6QDqrkdiK2M7AEf1/lJoitAA8DdCX
	 1T38/VBAnsOo0ivTZgMsrVeV7LoF3aNFO5hbh28VaibKXEb0EiM8rNi/eJWIc6I3gE
	 ejH2/QVZ20A3VAoBOu7heev7D21iRrWbhFB5pT5WBkr53vm87r9Q1x0afOq3ae/A3L
	 pBIzfAH+ETsIELX52cUohnPxvVRIZRxvVOq5a0J4wKeGW7yipMivAioozYQJ8HJsOq
	 7s7buDTVJCdaby0CPDvJJbK1AFz0j+GdfqSpFjfJB9PNEyfZVIUjsNVNnVprVcytp2
	 Ni/pZ9l7VmWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF459C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484514275.28059.13494119820466771898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189beeff992820ec5b71824ed845c55924e12ec054e920114c650900f90435be
Date: Sat, 04 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714845142
