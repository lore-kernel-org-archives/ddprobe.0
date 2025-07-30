Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D2156F3C
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753835394; cv=none; b=pEWwUemteDOz6bSzqwfZ4NbE/7u5JKm1DGk4QBw31gg05nGKUChlf8JAVrONp+rvqT2UHuMnkpEz4Ty3HQ31dVQkGDncjUDkQu98bgo3moHjSIBK/ffxjDl34lKHEFnAsQcRrfcfu8Gd53Fj7t+1Vv7Hd8qoqKQ/KtgewlymgtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753835394; c=relaxed/simple;
	bh=UJjO2wlXuz+nFOknLF2420t8zkJY6h/XMqP/aBwf3y8=;
	h=To:Subject:From:Message-Id:Date; b=M7PvrmUUz2FBWXhvFtYRO4QL8XixrPKocIk3jFHiWCq4Ylcqh3mXjdfVruTG6nvG/s6SLkjK+kc3fOe14VtuMRVCKNmKrnmxdhVSO9Sso3Q5aaT3KAoo8FQhUwX93z6jGp7e8PZQ9ef3SCvzCfytPclozaw2ZbputFd6mH+gM7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K18Nkb2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K18Nkb2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB66C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753835393;
	bh=UJjO2wlXuz+nFOknLF2420t8zkJY6h/XMqP/aBwf3y8=;
	h=To:Subject:From:Date:From;
	b=K18Nkb2bBvZzC1upBGbipwC4XtD0zkv0y+tCICuBMCLmNO0b1TcKsZcZVgTHxv4Ge
	 cm3uebtHyRQKZPkTEaqvXJI527Hr4eNhV5huot94Hw6TKzs14Mmtszgy10em6ZGZW6
	 Kjn7en2lEUidi0XNxH6cPkwUeeMvB0DwjNjifn+pIoQPAND3bijTrZa3OrSySz3fW3
	 VIV34v+jS/3JL8OB2IxQBwkiQpQWCo9oXPbJMvmZV2smJw9W1Ox/5Pu7LHAyVCrdKq
	 hC/rgEuMJQgI/6KvZQ2vuVG6SzwTfz+t1ULu/fpxoydVtdewU9VwqN5ImAb/zOb3S/
	 udJBkiJhmL9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCCC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383539361.32095.17854665883175768993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53269f7265f39538bbf8d64ba51a5872225ef50ce3cb8e275e3aa744803a0a33
Date: Wed, 30 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753835393
