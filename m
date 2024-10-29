Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC622040B8
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730203553; cv=none; b=Il9ndn4EutxC9uVQP8j8PkaUI8W6uy+EdkCkt2YX2c5FT9G1QUuvesbnJQUYVZNGg+KIj7Ix1w+iGE/NO214uGPRs88/nkyb4LAuhDDeHj+IVdVxj0Q3SxFcWwz3989mcFllDmks2Md++BalaZ/iUg9GmYmZ00t310KpZRwZRyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730203553; c=relaxed/simple;
	bh=Pw6PKgNZrvanL2nRNvGiEycob+sY1bXpbn5loyaOgHg=;
	h=To:Subject:From:Message-Id:Date; b=b/HHXhiLJP20T2PdGMbjP7/apue6mRNb3OTGIx6HIsmatZsB0/UQuK6ItGfIOQHRWc7G1RLz6BZ/8PyrH+wejHoRikfy7aMoMFVFwLx9mUgw/l1OxF8Gt8SC5M1y+pigDLCYoiKJCYV1hkaPRIxxIiAsP5rUoJ29WID5e7JM+F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oejsuAv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oejsuAv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A95C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730203553;
	bh=Pw6PKgNZrvanL2nRNvGiEycob+sY1bXpbn5loyaOgHg=;
	h=To:Subject:From:Date:From;
	b=oejsuAv+NRP0yc4OQw97iVM6jHDV6QNQRvcE5K71T/dnXrQ2a+ZVOo+hlAhUPdjdD
	 to4nb+KUu5NZzXg2sKOUPSgEixbjcS54beFQ8F8/O8aOTCmUlZNE8K4/NvNwXnpBFS
	 fQcqJ4M7oHUhphT63dOE75xJIBUcsHUOnPQhZ8P5sgzkQe6Ec1RXh2GfblVJFlNej/
	 fPcpmLA2bEooeWyWmE7D/9ZRedy8nsZ2qRljcD10vyg4KLGL/Wa+zsJf7lISukQiHv
	 IVTd6Ld8/Vg2T1TKVPYRj0IHd7V1IH6WJKMuKD5qhd0JnBPwb97OInwvDClCoFCvSo
	 L0HwUNjsS/LYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF12D2AB2B
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173020355364.22830.17039161578503839777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c842c07f96ccbef60387a2fcea11e857f9be2ec2765915fb614d39b197cf18
Date: Tue, 29 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730203553
