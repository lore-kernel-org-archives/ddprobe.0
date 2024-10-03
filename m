Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2501ABEDF
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727986554; cv=none; b=q4MxdJ3MDoF/2lBtuyHng1GF1dV5TrTh7mKquHYWPFuMmIp8xuC0eNJXAVlOI31bgcBuHnmalOV9W2/UQt1u4SzbOXY8W00FTR3+WnMEYs5XW8AOQFyTmTGAblKWm8fAVbKr9oEMgL/0v9/awwjkDbjzdhkDXZvjAChO8hvuNEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727986554; c=relaxed/simple;
	bh=5A/lKbvNiyP3W5pmiBXWyZXMYj86kQxiXLo+f73jdHo=;
	h=To:Subject:From:Message-Id:Date; b=H11weJHwAzz9WRNlJGI1zH/5bYFJa+ta+3W7BwfTBAvxrCTUDVfzFQ0KGs0/A8GsytS6chBoo86G3+Cwgys2i5UKKEoLjQs+KYNu8bB1TFDEsejsMZ3dIVqtmScZklseF41t/+8un5qHXH6JPwPkH0JI09BjS/IGSDSU0pj1C2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv3Fw5l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv3Fw5l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7593C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727986553;
	bh=5A/lKbvNiyP3W5pmiBXWyZXMYj86kQxiXLo+f73jdHo=;
	h=To:Subject:From:Date:From;
	b=Dv3Fw5l/iigVa2cb+gNXEZS+g078MDXVDpVSKqKcnsuw4HFt9rkDsb1FHc7gbsLyS
	 lFMWboGYd9kiZ0ArGTOFVXBq0rf/LAs+6IZG//cfxrqGAfu0ZRCoit4Lf2IB1aMHBr
	 jbdw0HrW8l4t6ovzeo1N0hConLtlbEj156YsJ1Sd84hakimzLE8WMT4whR2dpLYteb
	 qdSGV8iJP4DTRLfCD7Mf96VOzpY1kPrqzM3NkMcVwm8PbfWYnAYZVNfS105KkI52lh
	 G7o/U+nCiHaa+9HtLKB8ggJDnNDFU3t7nDSoHA/K6Q4Tu+4SFABqTBkCKJ6b1x0f60
	 yRwZTtUK0SZgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990F8CF34C3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798655361.16147.6906572821405043071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90306e5a2d731a85f5b1356fd3a3c0ea4d0716886fd9917db4d67db6a6089065
Date: Thu, 03 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727986553
