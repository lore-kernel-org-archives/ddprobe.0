Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9643047A0A9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789044034; cv=none; b=TdSCd4/cCDrDq7EaQmXvaXDg/qWjxZugSiIv1EHKWXjyX91GOTc+cWlwf+x9gT6VJsgUQ08nc9uyCyo+MhRCv6PtU2JoXjfrMly6LXX3IoVt3OlLiZWCA1+J9poRyTsZQ2WMcMRA99H6ZPBUl3dKU+YUIYFGCN+4aGCHINDydQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789044034; c=relaxed/simple;
	bh=eq/nWNdLtafxwfukXvrSQ/2VEnpzETgMsJ69Ea7jTzo=;
	h=To:Subject:From:Message-Id:Date; b=FqBYjPTH3gd5mIJyhMx29rre/69EmJcZEMdAfP3hmNF6w04KXMtd4Gn4Naw2FmsJ5tTQQnd5AuJbLEkKJcj80apGnx3Yccb9+q9xeS9b2AavrTHNF+o+I7qkgPHx6FotOW8h7HtbYTE7TPbEKBYDbxvmsquGj6OIsSy5kQxhaaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjgj8u0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjgj8u0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52AAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789044033;
	bh=eq/nWNdLtafxwfukXvrSQ/2VEnpzETgMsJ69Ea7jTzo=;
	h=To:Subject:From:Date:From;
	b=jjgj8u0MwQSIp2epj9mYU8ybLgzgRfpq2m0jdq4SBAXC4VbVYkE8wB/2dbIKUpUHo
	 x5G9zGx+5Rpxzcjr1GjRAGETV0eA+mqxhJjCramMqAnOTritH0noAud9BgfeGccZB2
	 aEgya+2gH4CgwZdegGlKbY3chMvcfEDIVMaD2Ml/cLFUYvHeKRagtbvU/at50YCWxU
	 7RrzT9E3NeduM/VpakBcUX3EArepGGqQKxft9il/phGXK7alc/clt8NTUNdg6IivHQ
	 y/HnyjJbNsvESuONJfBGGKO+vXR36viUIwH7eCuNZBvPCUkIj7ngZfsQ190267re6P
	 cApsIITqO2+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE58FC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904403369.23483.2527521278090443779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b34cbecc6a2b66700a781ba85187d7a21c9110207bdda22f205a822cda893c5
Date: Thu, 10 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789044033
