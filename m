Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D921FBED
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718161103; cv=none; b=WW8GK5RRrQbbj90ems3BVDDFI+7/PeGqTjpfQWil51uIfbzDslPeKcRAYQlOcSEizmphXeOT34Nf+MbNN7UgqwElCJ8OilEvUw9R0tOhwuNN5hXOZPo/NknewItmBR+87mY3ad0Okeu94inbYJvkAxzD8Qo/fsiX6AD/Mk0WKbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718161103; c=relaxed/simple;
	bh=iYpM13/5Du5ZlVPJaBmCnxkHBgXGRKprQl8Oar+8K+M=;
	h=To:Subject:From:Message-Id:Date; b=UXoCFgpYKs4yKUqXYqk2sPLgz9h+5cw8eUiQY+Ib14dBafLmPBuRCCsJsgdy2yfA5HXQOTMoEW7o0VXrn/pxQp4XvCXEvhDGyWGpeYr6WMiEbpkPO0DYqJL3BFuM5Jr9yN8hWzQ1NPaGMDrSXLfIBufhgqwwy8m20fngsTrHwTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxYFhLT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxYFhLT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77C8C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718161102;
	bh=iYpM13/5Du5ZlVPJaBmCnxkHBgXGRKprQl8Oar+8K+M=;
	h=To:Subject:From:Date:From;
	b=XxYFhLT/3ewGXAvMFNc8z2Z5T2Ln1HvGYGUQu/QqIAentfiJYubHIS/V6XzVCpku9
	 6NBnBF8obKPgzbxoNKf2lIuUD+yqNxCCYECqFHmzC+Vc/qBeb3sQ5njaXk4il2KtTf
	 4yvGONiReiHXmHikGZz0ZWv4jxoXzViaYD3EfxaJSlwCo6qmhsDE1yyJ+9WMNHSO7t
	 HBU+PKFHMgaz9Ebxh6vEywxboYfxEuHtTrFr7tbZhtiENg7nv6pc7gU6oOrj2Jad/Q
	 AgmH1895H54hwlvEKlFvDTdj6JFA+bTeLZNq/b84DtrrcEwcQPwcuIUqvtoAFAKzsi
	 mt9/YoSpNP96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF444C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816110277.10809.7353270088063567948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757488ecf1265f7b421b224628aa619bb41163c64fbcfc403e03b27f304b7caf
Date: Wed, 12 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718161102
