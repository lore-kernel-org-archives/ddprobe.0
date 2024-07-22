Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F37F1C6A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721680554; cv=none; b=Ra9bZGUq+34MS84WvJrZx+Ao7BDD7gD6DD0KP0Q0rn9h+8B3FSB9/rLhjVLGkJZWE0gpbBzoE3aF0I8Gaxq0beVuM6A/Ika8LtTtfCZk4bZPrbkqkWCaq3mpcU0y8JUQRDW1E2fcSrkyzqDlfT7lQxlkkCgWh8IMVqTNMYgCV4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721680554; c=relaxed/simple;
	bh=+j1K7CtNN+GjIuaYYcTyeST+0PbhkD/iS0BO+dcH9iA=;
	h=To:Subject:From:Message-Id:Date; b=LJElT/bV7t65SFc9JKhHUk30ZaX2curG5whLgopNU7yM1d11TCfDZkKOKG7kMTFmc8BU1orOBGZZS/KilHhl1laoNiQh08u8XmfUdeEDm0z656FNzNaNs42tXXtEg+GR128w+m6cP7PSUWFtCGkebBngZzkUCvBHJv8aekQtwdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd9BeZYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd9BeZYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D74C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721680553;
	bh=+j1K7CtNN+GjIuaYYcTyeST+0PbhkD/iS0BO+dcH9iA=;
	h=To:Subject:From:Date:From;
	b=Rd9BeZYdHFZIDuTzIHymLkw/a2c1Bm+KpyZ7RuARierSoV5AC+HAhRqk2gQMqwMY3
	 TH4le82j+s/oNTs6UwPXZ7VD1kTvvMmlV4Cxk5+78Dt/sFc3fsOL+qnCzgqpX4YU4P
	 jeyF187ECTqNenhFeP6S1I86Hc/rgFGxxBqOB1od+fmezeSO2PjVM6nhyI8VdTueQ8
	 cMZJrCBHWN44TD3XLnF6GNACpWNKaHX7SvCYe07LuehmRkYxFo9UBualBwnvJ1MeD3
	 lI+Tn58+p8dGVJ4zYUDM6m2b/eAyRQi+t4iD28FPMOglfC2hgft05oTVjkJ7ax6XA6
	 8JsBPQvEUgqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A789C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168055362.5097.9222550636376464782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b630c1f0729d12f83c60b15fa2ce5fb9ed633628073baab39ab7fdd2d0f75b
Date: Mon, 22 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721680553
