Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B023647F787
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789599634; cv=none; b=BNmQhwTS6FK9rEOmo6pWukQz8mv9EGxe+e6QegmZR4Lz9THHLRApNXvnM1W16rCQ+Ztmn2L2hsFfBDqqf2NDorBsiCeYfY2zgJ+At4/sefV6dMbvK37IlvmnuBqufs8390oB9UUUaWJgEsHFtBMxIGXS85CWQ+e0KQhJHb7U7G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789599634; c=relaxed/simple;
	bh=mKliL/VTEwkS125nAh43yvCHsy2VAzR8YCqdKLIuc8w=;
	h=To:Subject:From:Message-Id:Date; b=b1qL1p1GeNqY7Uq+wSKA7CkDjbeXxDH+f/deMCcmxHNqLgYIBtPX4PKljH78fkEbZyK+xk4PoH/Uf0in/v/k4EfFWtEObK4z+iYF3XbS6U4lf7hAVSwjF3Er/RJFcm68A0kQB9Jt9ggyJn/nQQ0u6QgfwrSHJcF07/H7F2xaWr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jC5a/35u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jC5a/35u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F6DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789599633;
	bh=mKliL/VTEwkS125nAh43yvCHsy2VAzR8YCqdKLIuc8w=;
	h=To:Subject:From:Date:From;
	b=jC5a/35uz8OIZqqRYdBTGro34tySM4hjzxs5zAK82rTULD3WZYx5IZ5IT64BXFu6H
	 67XoWb1wsrra8HDJWaan/Fv4TWbf1937XLy1P5P8ag8M0dS5laF+aLMyz9Db0gNOoC
	 SGY7ZWdfdpNA2Bse1ehhl6LFgnRVWSfMzjpGnuhuesrIG6YbWi5ED2A+XXVsim9imK
	 gE5jUVk76xayC67R0OGgo+y4OszUJULKgs3grxVcscsjc9s5n1qy4s9WEMuV08JT44
	 qlVmTukzQ/f0GGV1k2pwI+lhhXo2usUWdaEBqyE06FUlT2HE+O3kDCIiWlhPOTrkc7
	 e+Ql40KffJgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82B2C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959963374.26883.2028365738748442610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbe6ac3911d6367d13c1825ae3c50cc70ec8630872f348baf5197c661e4088d
Date: Wed, 16 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789599633
