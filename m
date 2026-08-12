Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5892031ED80
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786540234; cv=none; b=ZE/Bkw98mYknEKbnTfKq+/yIdz+55Uyto9rwVyY7fk7UfpuUcJRB7a0z5NWIiU892BumnPv4Z7R56/64EnD0Xhe7XZjyp0koURRITMCa1iG5r/2wEenf6xoOuqN1Zj20SqLA2jCIAgeS0CFoBhpE5qw6Bv3qYYRA08c/1oHbO1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786540234; c=relaxed/simple;
	bh=5NtovLrOI6ByT3BjuZvUSk0iGCSu1vV8o33mgRV88mc=;
	h=To:Subject:From:Message-Id:Date; b=ZenVp10XBzrdyhH9XnTFQrErDNgK54I3SFgcOX+Q8W0Yz4Dll5Xz8/ysElBn2uNm9+SvHjM7veLrM56IM35ctNlVuxPpCjnQ7KekNbvgiDkx7XUAN9WCbVHX8k747Z9QYa6Q+r884zmXsfR/b4j8i2RUzqTxn24EkPinfYvkhPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSIKYdfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSIKYdfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3376C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786540233;
	bh=5NtovLrOI6ByT3BjuZvUSk0iGCSu1vV8o33mgRV88mc=;
	h=To:Subject:From:Date:From;
	b=oSIKYdfmqb7pkFQggzauNGhCOgSMnvL2xIkqVJEopCUl3sdxY2RoCHRKawPMrOuoS
	 Vff2PIlT9Fh8tBRiQE6j7iI67/G8r7zm65yQq0oQtZp9vGcguM6mpYC+djyNzHSgWK
	 g5dEQjIoRzTiI9ihFud7rLp6jnhMJy1fvfxNmyz66929L/fSdeNkyUdnWU6P2C3yFe
	 Ac/n7C85WnZX+cY5FSBeJm+JHIBK2MGnDcboS7bkMb7I/MlTrd/PtWC1qGAoAEg3/E
	 Tv6LyifmSCPFsDy9fFS+5M0c4DtAXC+YInqXzs2J/jKW64ukxrLOClvBbE2A7wFh/U
	 YJ3kT0vPXspXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F7C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654023369.1654.1808517349172124424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44728e134a2a1d4f3f558a1baaad12b905a8d88e3bf97664a25b32a8d4cbc295
Date: Wed, 12 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786540233
