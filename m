Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5132868A5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755107994; cv=none; b=AATq/BrBpKjqZVddtdoi1iOue0fuKR1QP0asoOlYXWZh6Vh0ebly0a/O1hRtChEvRYcKLIQUaTomOikLD5BvAu9F6Havnc9lpgp0BBLB5JiF6iHLXwOgG+xTPGE473PnYAADjSH/pArS/dIo9nxjHndW359VolhQOxHDBe8Nv2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755107994; c=relaxed/simple;
	bh=b1kobqAQ2zsigJg9MEw1/MAIHkVfxI0h6EsfinVw/oM=;
	h=To:Subject:From:Message-Id:Date; b=CmsGLGYapuDJ2lClPuNIL6nTlDUxEE4etPwScx3B66YmOGey7iKf3tJPSwSjd9PybQA+u9Uhp6K8wSqHcI/pNy5sh7TTvdvRyZ/dBhtpR2Kvmv1dpSHd9tQu/CaQz2taVGsvd1mQXJeXfddQQGYEI6f7OoKBR5g1/sHvT3VM3Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0FK3qw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0FK3qw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755107993;
	bh=b1kobqAQ2zsigJg9MEw1/MAIHkVfxI0h6EsfinVw/oM=;
	h=To:Subject:From:Date:From;
	b=P0FK3qw0iU5tVuXbAvTfzGobtJJj+x9x+mHkw72HXZ/TcN8dSQ7J58ge9+wvprWvX
	 vQcYcJKL1FvCThkWcQGvD3ci2imv7GTfPgvYtJ8Shc91aHEEla/luAJbmoCrC1jFte
	 BWZ3YEgqP2ENvzbca8ds3lcz081VB/Y9l5VNCCDUUlzySO94wBrahQLcoPYp9bkCaV
	 AkHDcmVg3Nv91dJF9Pv/iVHgMjkLZsnMTxu5i7oOraf55OKZzZQYQ5d4dB6zmjJREo
	 j7bIEf0KeGHreCZFO30IBW2x05xX1ELgfqQ+sDLs4bj0G1GXIAD8MoXj6pTfeVcvH5
	 DOTHgwGY8LZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A3C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510799357.29478.16676115868172710291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e0a79a41adc228e6e1ba9f2fe0f1f4c0e33fa37e6c4f7dff51d6e4f9dd7971
Date: Wed, 13 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755107993
