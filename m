Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A23332628
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774250094; cv=none; b=EjfovBgoSwZH6X3rzJXYN+sXTlIE3EJqbyieRDyIkb++7thgdFsCr2dgKUodmXcrQlK9G2WX3uU46P4ZwD7PBKm4HRLsDTMw+sJ+MXQfIQAPotxhTgkXGBukOjcvG+h79b8lYia+P3QpBwStCUkfpd6zJFQcmkorvmH4ErAQIFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774250094; c=relaxed/simple;
	bh=ihLxQMS6N9ywu0rScABEkYkClVjaD3GFsKq/RwlE0Ag=;
	h=To:Subject:From:Message-Id:Date; b=nlkJKa0XyudzvSyc7ajCAFz8BzTOG0f8poi6U0eP68spGoAquoXRupEdPAVg1n8laT8Smr+ihCwR1Gblh3rlMI3c14UMyn42Lju2antFRRO9cRScwNyueJTOCHYMj6mFsw7vigfKCy4cSI7Na5ri0SinxPnwh1E3cqhGamCml3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbJyXE/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbJyXE/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA71EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774250093;
	bh=ihLxQMS6N9ywu0rScABEkYkClVjaD3GFsKq/RwlE0Ag=;
	h=To:Subject:From:Date:From;
	b=DbJyXE/R08Dc8Go5DINYXht0mWNetDrr1TAejiDCLDxXbwzPGwAThh+oDvAaZcEVq
	 hvYB1H0BhXx0IJIUaFM5sZ3XgHDa3sdRS8OdBuA4yHb0A27u/64LKXSfXwTFQO/VE+
	 6NuI2GiVmdID3TcdpKTOJBacwTO727HQIDS+pRwmI2bfTV1WMHXIl/c2kv3HW8dSMi
	 q7kuhilQ7H8knN1/TxXeugFxi6jKoxcR3aF29P+EHwSu73eRo9bTnQgDtubbwz9B1P
	 xx7qWHEk09SuHz05kSK4anAtVsITgWMhjf/8WCWcEN5ag19Ex2OabGFoIIoTinz7/F
	 mPZ/1V8rhJS+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971DFFC72A8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425009358.19420.13373839061421243858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1772ac99c775e5d387d6f0a4ed2209a7c790162b6a19e6b687f8ab1b72195bd7
Date: Mon, 23 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774250093
