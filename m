Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BE9523784
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791906034; cv=none; b=NePvrwbo2S47kv9BHW0LK3iIi12gP7zVtjvv3raoWwrctTumKqTwKDP9gSEXvbMLHVf9nUhXqDBVMRA7yk+Js9UaWHceXmfIANIt6GZ9S7K2/irUlrEixuvqx9abR7b1xLIvH86gxvOtvuHIwztu6zqcRNOPSxMrCF8fp8yzpTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791906034; c=relaxed/simple;
	bh=KBExtEt23UOXfTy+uMXD+D08jzDDgndkdDhzCcmvTXQ=;
	h=To:Subject:From:Message-Id:Date; b=nqJdaSWmbmGBar9Otl6DbU+Gbs84UvYuCqZaLvCHawhiNmrTQI+B5z/vdwkzoFcPSYjpkQ1Z+nkRvj4iVISiVyAmSQbysDBUwgXLZHiKSIlNgw9fvCsK0M2T4MCEzVLwekY6kEKJUrBYOZpZJaLrMacj/zl0/P+FWXrqF72ocBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvkiOjJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvkiOjJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C6CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791906033;
	bh=KBExtEt23UOXfTy+uMXD+D08jzDDgndkdDhzCcmvTXQ=;
	h=To:Subject:From:Date:From;
	b=lvkiOjJcAYl1pvts7UzVanSMvzYQTeYER6y3jJBOqtUFtalmmOHRBZuUDaYiQoilm
	 KBBQHEw6tivydu7DVNFtxXSeEGxrE+CXuCIaNVlTtPd6X9k8ks/rUrfwvKePxCiT0l
	 0R+paThRc53ixUgXAvf7TNIOu8URqkhSY48JjPfh9O7+dvJ/rgIBEThyeeMRHLdU/V
	 cjBbi3IIB63uQCHzMho9RdHhkpZrS5clN1BfkPj1Ti2WvzM1IHlSTAp33w60h1SbqI
	 MM5Qj5KkLo8iFDwVZUJ3XiOtm6tI01dT2s1d6uN2/6SLtUxewy0Q3DSWRE8PxAv3le
	 vHpR4ECld1k3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDFCC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190603370.14976.12575330241781894747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be896a125ec95e09d99fa7e329548d81592c6bae17c59a680020cf194d97d38a
Date: Tue, 13 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791906033
