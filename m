Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C82F7404E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756584594; cv=none; b=HC1rLZ54VCMw3fjdkOFqdcQY60uQgKcqkrAuYosUTr8AJIei8a4SE0cL5Dz/b7lPyRZzbX5KmvBRF4ryDUQk/tL+sa9GuDf9Kk+6MK9Bh3LjqliLCAqrbyC3KhM5Gn9ffv6RyU8v1OvzjWTcI9GsHQrkJfBaJj7NGQfQn/voH4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756584594; c=relaxed/simple;
	bh=L2dCSgOaQZ/19ndQm4BCfyulWi4aVjvWHw+bmwmGiHo=;
	h=To:Subject:From:Message-Id:Date; b=TzWrQAt3W4iJIw1RNQq0z64zm9zLVcbBidTCK9dkT93b62E5nPgm0JCr/cu4gjOMb0NyKZcJ12zTogmvB9JpsHqCZNN8V20La4+EwLxAyjbWY0UD2CNEdsN7RYmw/mWu4vyVmbZ8CN8nRcE+NAl4dr3sNaKpdYT5KjGFdghaWRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5VVLeFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5VVLeFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E09C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756584593;
	bh=L2dCSgOaQZ/19ndQm4BCfyulWi4aVjvWHw+bmwmGiHo=;
	h=To:Subject:From:Date:From;
	b=a5VVLeFwYNXR+LX7OM8s85Ec3XeeZ5ZFCDQM3L3ccbbdf3bdZzEE7nRlah88/e38a
	 4JtjtH24L0riv0DfUOgrCX02L1BWw1CIXS2klz8/d0CKMRJwZJ+ZtrCYXDGPV43k/D
	 8WCauIEHX1xrgodjkFVpzShlnq0e4bhrEV34J+In6A8HHzCleXoX0aCayN7sIGuK71
	 8iMllebyqKq/44LNneVstskW3XxJgJ/K+H1MfKta9w04R2S/54j2yXaXJlyDrdJ3O2
	 7Kpu25LBRBzSx5apaM1vGxMDayoOaGXNT56rs+5QhaEHgcp8Qcym5xMFZCTa6SrxGs
	 deZNMDC47PZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113ACA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658459357.21426.13742374859076309120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f44dcb52b862d707cfec4ba9e1b4b3fac5b244e66173c2f2bf44ca1513b7af4
Date: Sat, 30 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756584593
