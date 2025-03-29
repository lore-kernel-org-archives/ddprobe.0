Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF8D29A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743256195; cv=none; b=UDPbpTdWDCNop55cC5oCQmha70QFsidbGFVbrlX43BPT3HZXJlPh3787B77jNYgYJHUItIQhOdAGttdLv6mIIGukVq/0ffSbi5Tezuoug/SEDnlDrC5lea/qA3RfCssxRgG7Z9N3/g9CxJePPRZjZIJwtPkZrOhOsHKu7kgkjyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743256195; c=relaxed/simple;
	bh=1B41SzG85BQuWUwLxUX+LZgBjin/MqxSU0EF+11OzXQ=;
	h=To:Subject:From:Message-Id:Date; b=tvi6lXsU2jjWIJgX44mf5mCUpLo18ypoMpF97psmuMlAcc4HEtDatjBorkwoJn2/OuThLEE/oKzuTQFjsi3aTSkdtDO5qDSkBbPsoCRufqFLrusRm0YdhGKQULD8aDwZmTODvNn7P+OJ4KnUA7VbGi84AxWzsePHZC8l5v9ZfS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADjR+JiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADjR+JiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71D4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743256193;
	bh=1B41SzG85BQuWUwLxUX+LZgBjin/MqxSU0EF+11OzXQ=;
	h=To:Subject:From:Date:From;
	b=ADjR+JiAzpu0/dxbMm47xsF8EpEPJDYYX5VECsL6XAsfOOmoqImcoJgc/sKrI5kdM
	 D5TqlYW4Ezu2afI3MmHVVkVLPS4oxP+9575gbGUt6yamHcrFP9tXm0UlcElh3RQPvQ
	 fGMkf5DdnZ8HcIj7oYjCjyuwRuH30kBkJdicu2ULFEc3eVemvMOVHiO2ZEWEWbdq4L
	 Huh1NGHxADMsjBWFVCfixhtnpKKTQid7k0Pvx163y2Ompy27GO3p5AmYqnWhNMyhaj
	 f897AJ8fhnKsSIAVFLIgZxZqCtbDEfxY31obbUNVUleitIr8m1OGYUhucu91oaZfBs
	 oFnNiNjPpIvvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3735C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325619363.25284.11715092267293293567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a841255e1d70a5e82b79f2e198af8f10400fb084c4fe151b5ad16b048c175318
Date: Sat, 29 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743256193
