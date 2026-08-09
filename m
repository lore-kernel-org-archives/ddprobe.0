Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9AB355048
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786269034; cv=none; b=U7k3Ib3F3ugS9ibWIQOrUSMHk81UYYdIPymLOTG5tsCQCwkBYbghku3RbX7Rx9/k2gJ+uXKys8++bm9PM0yOWjz9nExeJYjWVAxD2pIBWYoqYlcwke9MfdJUPE8iXGwr1NESgx+sL+1cx7y/j75rbEJt4EyRFm2wio/Dxh3074w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786269034; c=relaxed/simple;
	bh=zHvorEiyRqqevZt9ybyEDhVhF8re2b0WYnd00X6lpwo=;
	h=To:Subject:From:Message-Id:Date; b=Ph3X7uyHBfT1Tuk5+sBaJtU9MRkJoNaby0Vd2ZPRkdLNKu+DE5hu4oUpdlMa5dagLtdxperjQTlGAqzpegxJPp+/Ob1ebPzH7sDEbhZizMN6Cd3U4p5XXJ3SfmBgXt3ffnUfp3vxMBcR20Pu6s3nMtb6borIeD89FUHrUvAGw40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDpGVta/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDpGVta/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDE8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786269033;
	bh=zHvorEiyRqqevZt9ybyEDhVhF8re2b0WYnd00X6lpwo=;
	h=To:Subject:From:Date:From;
	b=SDpGVta/eCy8nw1vNMb2pPV1vpDJer0mNpn6NtvAT+2kH1UFkpnKYRR33c3v3EtIL
	 ygziiA58fSCybgOWOX4t+1hhL2HifrGOZC1jdpRXCZ18NuPoWaKGlf9Ztr+xY7mwpm
	 LoXUq4LG7cjFlWqrLSXeAv32uKm1dwsfDVC84CAaZabQFEPO3gsH8Wk/ANw7UODZTz
	 6SIACKvMPT2KpDzNxSTmYHi1MwM7vU1eJWxTn6Xlvc9MCFgGjckVi6btgHfT5s8Qoe
	 s2zJ2mlLB+zJQk4B6/F7cNUd/OGrmLMvsPb1zwmXsNv7Pb3KYMQ9GxLxR0CwHI/VSq
	 ci0Fb2aGvx5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B86C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626903368.17036.7105524130719842183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a95f33b95d230b67828f2a6172243a2d113776f663957afdef26cfbf74e49b
Date: Sun, 09 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786269033
