Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4EB2AE84
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735401354; cv=none; b=hq25fgYR7n3IBu6EoavJPbmIu2GZfx2ASUxJzM5zZmpWQjF+ZFvYrHKuR3SeacWdCnV71WkjH0R7D4xsDwsY+B/h2wjo0G/IoBKTGlyBjvolTO8EUNmgWjWc0vcW4o/HdydLg9qU4QoD1Kp+UE7h4VWmWqVdrzkxzjVOZN+/sRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735401354; c=relaxed/simple;
	bh=BOSDN48dkClCZQrxYviaDgTXGYeYB8u9u8Q9wcYQgwo=;
	h=To:Subject:From:Message-Id:Date; b=BfhIDRRrw1zez0h0kyh6svuKdHHYPzDzIn5GLc7kXokIvfhYnvPTFyWLUlbEjdXBsRsTykzlBHkDtoZmhe6qKGCNOKKzx4Vr6lDlr3npZ0IxXrHc5Egnwcebt2efR0MYYDMJAQvzmJAXVgxryR6laCPYdNU0klWjyXbxacz/H+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4HCExKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4HCExKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD97EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735401353;
	bh=BOSDN48dkClCZQrxYviaDgTXGYeYB8u9u8Q9wcYQgwo=;
	h=To:Subject:From:Date:From;
	b=Q4HCExKHPMk8wHK/xuTsUm9H3acznX4lOy//DIovhKQ8XFVU/fpiyg61raBQykeJK
	 q1BMsbWQ4jWib52qYO16aP7bARDSyG9rcAMfSBKcop6D9w628vHLLLecdLktI6Rh3i
	 veBEwvxF/9bTAghKvfYUhCf0z+tj5dqCHTdHWJu/eUuETWF3DjS1zNC6VVqt+0mzem
	 4uJIVjYisa8+FFPzYZC3DkYLGfartmHR/qXBBQKZyZbTd8C6fRdSkT67JcGZZMbI92
	 weJdZTobZRUAkV4aOzMD9C8WP2L6g+DooWaa6mylSbomkxpr7XH/udTSt8e7AfrBQI
	 lE0a+rxyhPejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9C7E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540135362.5736.15253286158093196383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d899a4ceb39831cd63e2e36883bbf6d119f0fcd463c7ae0cb781395b109cb7f0
Date: Sat, 28 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735401353
