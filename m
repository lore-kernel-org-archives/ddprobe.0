Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118A227A465
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770246834; cv=none; b=aRecFLA+O2mOLbeVgZUI4QncBZqdCM1I2s8A2M6JaC6sfODrhsREjxlqTbMajGRD7ENfVQnqqdDfdstuDL9BrWJiTOpKwgtgNoaqTDzhuBmJ15F33C6aLZY8VxcvA7FnHhTyKtG0b3ODjs9ilY/OJXUalhtXR1VGlIH5Jt09SfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770246834; c=relaxed/simple;
	bh=5Lc+YIPkI+WTTyrGZpWB5FIlcdO9fsDcBZR/q3yKpFk=;
	h=To:Subject:From:Message-Id:Date; b=HP5qiPGYnzMUX+nY9lGHBHkEBp/Hpii0z56MgyE/Jtn2eIbGgTUgHa1foUHvjZJHUzhIXkpfn3U8LHEBoVOshXh60dIFvwKfAZX6QKDZnu5MiwOjsi5DGHH/cMJwVBh4mkDxfcnsw3YM2oRKhV0CaR74L8l6pqLxa72zijvdQJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8/43I07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8/43I07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2650C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770246833;
	bh=5Lc+YIPkI+WTTyrGZpWB5FIlcdO9fsDcBZR/q3yKpFk=;
	h=To:Subject:From:Date:From;
	b=l8/43I07tOCWSfAmJOtSV1Tts7qDc6YQVAiovFNcCEAoCIlTS6GKPkDGDzMU5OjOT
	 kyJw8syCrfm+T62dSjKBNLaa87mnbjKkRpWrx2gtFgCS7TZJAoZk2Uaq5KCN5Jv5Ia
	 LSg9dm4RIVJLH1eM2pWT4S6u1arHMtJAZIqowjS6frnGD5nq+WBZNG99YkH/Q/edgE
	 rLJqrOqTgAInWeKq0HYW+luLxtK06CaZbdYo3mpBrrVxUQ2JqxeDHAC1tvTAZ2wTz5
	 C2LM4FZXNBYpJD+MubCdhlo2E82TBI15g9w232/UPBav6IWkbJKDDb/VbR8hyJPvG7
	 lQlO0cKZfy/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9861FEA794C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024683358.16344.15928595003123448574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221d93b96f27bf796c4501a1b3e4356fec485230102dcbbe5ba769d5c150f2f0
Date: Wed, 04 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770246833
