Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD363BCD24
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780046554; cv=none; b=KTSEN1XH4Ix8vxGl5k3VTpZ+Hapc8CXWfgnbbbLYWRLH/uFlw9D7uSLkJppp0wow3bvKtfaFOy382cWd1rVDmM1mMR2wr7OpIjfV1GysNF1647sXZFrqICiswbcL9pU/AvGCOoFxmMZMpKxa+Z/Roifbb6l6Bvr0PTZBrG0WML0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780046554; c=relaxed/simple;
	bh=9fr6csXuxDE3sLRJa0EFMKio/3hjhlytRwihltFMxnk=;
	h=To:Subject:From:Message-Id:Date; b=Yzxy4yKjPuks/if4fplfxBMkLAuzN3HA26t1eKmSFBrt1K1zlqAYArLUeCHzIybcdY2wVvR6IieTJaNxMtTzdXUJgYPf42eZb86ktkcwv+jB9FwYe+a1fedslFqbDhecojXckNizYf3Dw2ETOQ0qwdrkfRoba3GcqBXV1D8EUjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSfQwSZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSfQwSZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3473C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780046553;
	bh=9fr6csXuxDE3sLRJa0EFMKio/3hjhlytRwihltFMxnk=;
	h=To:Subject:From:Date:From;
	b=pSfQwSZfC3Re5sgfBzFd+AXj3f5y8V19VGPDaoFjTHh4w8ZBQ4+/f4NJI2Ml+44lM
	 x9QLJ4qK1amIdQnxdRxorzyac1MNl280mxnIbxvgURzR45tyWwow3tJasjhDl1QhSb
	 KE+W/qHwtl2uJhtbc+NGSS5Q4CZjggqlTuBQHRGeKu/p4ytTolAQevD9ZezaVb4NJg
	 mU4SSnD7vbXMmMiSnShksxJ7khlzjaReMpSD5af0FnZFGN/SOZd5ypHPuPtJweC8mP
	 HfWkHDzNO79SrJaO/VA1rJgnv6NyCBn50X2H704OtXmPKhKhDVrJQnDlurMU/hbkX5
	 7wk6IOAzgd3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB43CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004655369.30547.360297407418866831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d04f4fc40dfedc165f3ffe83eea818b16d1ea9cfb642b150b3b9394ace900a5
Date: Fri, 29 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780046553
