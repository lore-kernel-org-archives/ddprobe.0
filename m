Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342E12F7471
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765447974; cv=none; b=KR4I0DxtJ2vo1aR879+nSv4hju21GnHYVA+i5t9n/zvYZQ2A42KL42Hw/3vLhydOgUbvWUWPp3JXrpGTcD1fwCzA1v4NzsZ2TT+D1JjwhJpFOq2+VEBRwNdGCPMZtz+Aoo2cE2d5kwYfgMDPFUbrV9fTWGl0FgnpgZc64gdNchw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765447974; c=relaxed/simple;
	bh=BYjj8eHfH9yGtr8SV2CZgdtX0Ib07ZGGVPVIWhnBPu8=;
	h=To:Subject:From:Message-Id:Date; b=E/c+P7Fv56HNwdMFzdzKNnut+XjqIkWRrPowukFmzRk0+qNUUdxLc26j03IArPv/e2Xyt3vhDaBC69KqsO/JUX51Rkbbni4xnoRJCo6mbF2kLyKg/SZx9sKy+N2TAkf2cl6idKYSzTbJ2j8puLDbzQOR+SGdCyAD6MRZryBbqxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+bHJ61y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+bHJ61y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A20C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765447973;
	bh=BYjj8eHfH9yGtr8SV2CZgdtX0Ib07ZGGVPVIWhnBPu8=;
	h=To:Subject:From:Date:From;
	b=e+bHJ61yR4U+dHXp03caqDmqnYzMUDXpybIMYx1Lf9wcf67ZhomQcQqu/iKa2HtJ8
	 JVBOG5qWnH79ZASy9xdQuNO3ggD0ZHMq/SVg5G0IhHQ63Xnfg0anvmJTRzSQhgNNFn
	 GY1eciMLY4NFDrMy8409ihZ1lE9bPQZcxDw3/0Wi4TYYS6ngVhe3YVVB9GhBicm32w
	 oDiZlXGvTrqK3z+3hIVRGqVA8gw3A12XE8hL+mMdy90ucHy27duLyqI2uIVAqkrGVs
	 MSnyfczOs3lEvufgcSzaKMavITI2rAn0NhSert+yExk5amdMr9rWKqC87Xok3JliCf
	 MuVZOw+otBMEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF9D41C17
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544797358.3741.5868246193887537581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54f3a3f97188b305b4568e99e68c63108291f5aa38951d4ae4c84f97408b72c
Date: Thu, 11 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765447973
