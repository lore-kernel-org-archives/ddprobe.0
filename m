Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D99C36196C
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785966034; cv=none; b=lcBzxRN6Y8jKDp1fWuu0fQvLzIvYL/EqyLCFyAkdr06EIjo5RQmj21aoenCZJshDtgVZ0SnQhoraAfHq+0jQNVCCZ5zPdUrHly2CuRYKUn88puXsr8XHwlQ6oS5yt98g8nuLOGp/vPHUdAZKFCDIhwwRZKmpUEotKNvpLTF/6tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785966034; c=relaxed/simple;
	bh=6gqdqdI3Ny3G/Rp53RZ3m028tRv0f6G85TW5sxdGLF0=;
	h=To:Subject:From:Message-Id:Date; b=rSLvnuC0X/9rUoz6PcJgEEUTkFQx87OmjBik7tEO/83t4q6mvV7ZolPI2K4nyiFHpLmsVT8NdFZzfOhbEzCjPKfqRiEdCIHaqIMIoFkluCX3oPjZt9QXiYPunCxLhnpFQqPY8MugNe9HC8gMfaJZbAxK7Eyns4o9AmVAZrlFyCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr1hoHp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr1hoHp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66EC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785966033;
	bh=6gqdqdI3Ny3G/Rp53RZ3m028tRv0f6G85TW5sxdGLF0=;
	h=To:Subject:From:Date:From;
	b=Fr1hoHp+Po8ZsL5I//HlW8Pi2CK1ZivXaQUl94SdNbGX/uougpbnRxvuSSBngsdGm
	 dBExoIKJV4KNUJHF6k+Xz/7q8Zqqmf6mhYrpaCGWmtHxlL2/nKmCRX0zegsUUc9mPB
	 SYBQOF0Tgd4+uGe7cUNZP7vNq/2g+S0wHzDrPDQIt3S5jFkr+dpR0UciqKABluOCAK
	 Vy6Txjl6rD2Ir+zoOn0o0kV7FuGaPszDtWWNoNVsJs0F14FmIEtmY6La7sG5AAWarI
	 TJmRn1UNtAbC5tChtlvtDxckpkNf6jM8BebEtHx4rv5sNzf99A8QS0oJOJ067xEUrH
	 fK0S/o5ZEbBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA1BC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596603369.10523.15136877223946159207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bae7e1d36ae9e32bb5fdba98e3c42d6b401f6ce9984a46e14f997737e4beef
Date: Wed, 05 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785966033
