Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9602B3E1D08
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786741234; cv=none; b=G52riHkujy0p9FhQ6uGE8TZurdqFAW1zQhGHOy8yEBzKDAkEN87zSbMhs/pDOb0Jc9CEsDfh3he61A75PXcsBKVcYht0Gzyd/Lgdx3x779sYvHKXnYCtoIGTveoDqMEBSKkGQH/Ea6M46YoTiCLJA5dIumutHgb2mEIPK3W477w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786741234; c=relaxed/simple;
	bh=ouDhIsT7i1VeAqQEtPwuWeKspPFBvh+JGb4skPgg3Ms=;
	h=To:Subject:From:Message-Id:Date; b=LveknAeKCqmwUifqyLq9Eg9DMh9E+FuBcswM6NRkGgHCiHRg5Pv5OCbpzxZAFPLaNBh3iAbqdcKcEwhUbGvv3aqOdwJAJedlsEDIvsa/j+9SfG5QHl36Utr8fp7zEHvZzhK6zx4kRpZwLDgGiDoIk5A81IqhokPW2brSE7ZfljU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxvu25a7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxvu25a7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F02C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786741233;
	bh=ouDhIsT7i1VeAqQEtPwuWeKspPFBvh+JGb4skPgg3Ms=;
	h=To:Subject:From:Date:From;
	b=cxvu25a7pLKHSwCV0u//dM9hZut7R80i29qjmR5pybKQtZ0f7C+WwxgygLmXalTpS
	 0I2ZNjmU3xqk7V3vVB90eWUjazQv8acT3ourJpc5Llc1Oz9SdxIdkzLCXDoAB4iys0
	 dxaRTnIgsDAJjYEM2Q3FH9aFQZy/GMflLQliWnIdasO3VeXsELV85iuUnpxmRpcQY/
	 g25NlAQtDxc/UhryKEArbh8UPzSo63NgHAj5VhWEh0aLq+Rtg/rw0aQTJaJ7AD8Gj2
	 EQ0HYjnLqujCZk6bST6bdkCt0YvgPxrTjwT1quv+62mU5sgsXQ1YAJWufKv97UkkZ7
	 P1kfHq6kwucdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD38DC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674123368.23243.12375846637429540080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa15f4f0638b29b1827837de2d6c215f04b60418f128824d8befdfce2d5424a
Date: Fri, 14 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786741233
