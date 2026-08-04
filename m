Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FB638F633
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785872434; cv=none; b=PmXkOoqrw6/ugfqH0uoZJdBz54OkKIHYlLCB9lrTwvRVSxuS6Hjqdf0CBQz+ph5YJx+IpMR2H7AsuCqXXEkOjvCswIE2jZAbD++KV3D72zFu115N/rnfNVuKlu8UoIK2fJ36NQv9RoHYfnLvh5ljXMBQ+znHW8ys6Dtoo0ON81s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785872434; c=relaxed/simple;
	bh=aNLz+mHP/4osPIcjNK5ctAZ2xebbezkXsJ88CrVY0bk=;
	h=To:Subject:From:Message-Id:Date; b=eZgv3jimfBY/BWy9/jAs2Ew1ZAsfahos75jDrq6khX8Tl2sm0QZ2msA1woo6uz7yNnuvcXmkG7u2v+mkObew4gQNjU86LcpgDFee9PvYhRcszOlb+HAK/WNy3sOyZYsFcz+diVHlUxyo4HWwn9NrwFC7znAcpiDNxbL4gxczh2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QejzUZKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QejzUZKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE616C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785872433;
	bh=aNLz+mHP/4osPIcjNK5ctAZ2xebbezkXsJ88CrVY0bk=;
	h=To:Subject:From:Date:From;
	b=QejzUZKCUUkqdncpnhfvXtwXzXfNa2v2ikLN59vCkI/SvjJSCWYmJVj8TDEPKXi74
	 E+X1J4jiT9NvNc6r+qyAwPkbYctyAak3Va40DnXAo557OeGRaL6oQUaOfnlG3uRWeJ
	 HVH5NR6spBcVI3ikJ+13VrEOn0xS9PKLGor6/KVtKvZ042O4qxHoowX6cL86p1g9Pm
	 k5quEw+JnQlhyQTxzQt8PG01nNFDlXQO81bchbO2KhLFUXmDMHimcXSEs0a7UsNSqq
	 IFp77tN25CPvUdT8NZGthRwsI9tJmdO2igGjhkccheQaKs2f39xPiOSD5ZzW7IbHb4
	 nV/UUVAXtGuvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F4DC56204
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587243373.13576.5607418772994382275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ea3bb4ee5ce91b6f2fac14ed7133edc089f89cdea203afc72898abf6358086
Date: Tue, 04 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785872433
