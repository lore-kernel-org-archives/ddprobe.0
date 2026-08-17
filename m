Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4C83C73CC
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786957234; cv=none; b=pVw1KP+K0CbGpPltUxT/rc/zhVJ6wXzDWDyQfqwBohmLVoIhsi4EhZb3ifz11moNNTbMUcpl6m7lMAdRI38ovj3BtfzT6uh7zz8Gtj8jwVsiYv1PSzX5E1mzs3v/epHRct9Gtk5r1HtQYF5m65R4WcI16psID9901mxgWRvfAgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786957234; c=relaxed/simple;
	bh=x2cJnKZcEF0X8GWQwOIpPZoqQoRsxb73YGCDVyjuqZE=;
	h=To:Subject:From:Message-Id:Date; b=cxy0o6ftLf6Wiq3bL96eiNaFACB2C8qCs7M/dEYJEcUdOJnrH8YY+DWIKerSP0CAcoOw+msklU6vnRfKVE1wFjBlgWL465kJNM7MQCNya04hnmZaQ+m/5MgZf2Aj0yT1ls9JbsvZcytpCBj7Urd8gru1EjGtoR7VAErMSNsFRPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euKnkee6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euKnkee6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9D2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786957233;
	bh=x2cJnKZcEF0X8GWQwOIpPZoqQoRsxb73YGCDVyjuqZE=;
	h=To:Subject:From:Date:From;
	b=euKnkee65EzxyWtaWpPC8KbxbwbZK9tlyzXVqOvaK2yJaJVspv2ADhGPFH9Y5SuUD
	 1juXVUlEPq0TLXG5t47whEpISfvZU6rdxZmHfkGBk9KGxmJwp6j7cwNJ/gkHsIWdMs
	 RzgVqcBvCEgdoyv7XqlG/KFFQKxMxbC4uK5+lRYikGQ6ei1f2fNNPtE1dYNvopeOet
	 RS/r6XvlnoNtZZlIVl2WRJZ/54s1iVfELD7BY82I5CcB/OAlx5J1A8zmfvFgVSqKuS
	 LbUD2jBcAT2gKhNFX1Ts5Ws5TBwymPZvszfF4uI1Gs+qA4h3ZgI36gsuCbuRyl+6+O
	 6hhERW/jlsD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55C0C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695723373.22907.9227071843502889935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347be2fe1689bd0fa09bf226c9bdba845daa5d09d8e935ce82e8f700cb8fb849
Date: Mon, 17 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786957233
