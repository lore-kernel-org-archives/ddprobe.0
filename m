Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E6DDA9
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775532334; cv=none; b=XviNn3rxfYDtWM6LtjDpCLFQAwEhB8EeyCdNf7qveN3FEodNRq2EjT6LX+/Vn9H/X34XjGhW11hA9+g5DZP4rgmhH2kAbJI4BktznqEBnZQT0EtkxMUbFCbJl3LrhygznMXMe65XTH+baVPKeQEixtS82Kva0Ws4CN88gUFDDqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775532334; c=relaxed/simple;
	bh=uQugGJ+EEJFrWd0FayTXTIlTwnSr+mMYu2bTgDnuI3k=;
	h=To:Subject:From:Message-Id:Date; b=MhT/2bAKBf6K9SV3VzqLgTtKTOioSPxwfZxuC83QZus41hvKlzz5yQfVmrVJCliKVc66lZswTQO9Z4Js5zGLl8mNfDgpWOq2JA6R1MXHM2ICLdoDd28WdGQpA8tx3gFRvMNIEzK/zMhG3gOKndBpsVoLdQCi38q70eUUO1gE51w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcRceUM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcRceUM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEBEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775532333;
	bh=uQugGJ+EEJFrWd0FayTXTIlTwnSr+mMYu2bTgDnuI3k=;
	h=To:Subject:From:Date:From;
	b=ZcRceUM9ZEHpnapknt2rs/dzhucOjEdskJyF+eruLqqTw1UfDanm4NlCZJOTayw1x
	 nnuyfhiBmAI9ALZ27VGdUb0CXxzW8ADrhJXZDrlJOrsDMCBFD325HX4rVxp2GJ09L8
	 QEIm9huRjO3BLYfgkLapoKi4pzGpglx31wduhfe7n2Zi6e1TTA1EGd9t1UvtiRQUQx
	 MPMqJgnX5VUAXnXdAWw3EZ7s5OH4EJislbY+uO0rquQd5vvlTx0RPqsOrj3cVPUsRC
	 mkJgGOPvRpiXF7/TMGT2EmV1zpGbIrHHhPxxpQISendxYronAxorM3RTqXBzP00dMO
	 p2HqVtLrheMgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA67FB5180
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553233368.7147.9906639074427756779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5d1b1f8e6eac79f719f3cf5d020b4e434d0e1c87f1fa00f7c718e495edc022
Date: Tue, 07 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775532333
