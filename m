Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3E71B0439
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754703594; cv=none; b=nS0MPwplhRLd1lGwQDCxybczpgPAlicfc+4frfRwFjl3zl5W8uU1C2dZL8wCPWhppRyRJz4vREpB6nwZ9RSTFIoa5JGA240aKr0lwLgasnhY33g1RMAq1nChxTWrA5DLFCGNAU09uXKknLESHPF93PmImg9EFXUzApvKdH6BxNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754703594; c=relaxed/simple;
	bh=koX/AMkLHG89cYO+FtnEJYoAMmEjhBkqgX0ZEF7dsj8=;
	h=To:Subject:From:Message-Id:Date; b=CT+dsJCydtZknApyoHTIbBm4bSnN9SLXaG2nJLEcFELEW7zJcDpksFyzec/fWSpqyTXQRZhelyYQWK6FMxFwodsqrHegAyhuZXuo4eBdkt8/EWOpib7tgBvsZjMV5/0yBqkIHJh4wCJYMqrUP9cmZex4UvqKcBfMmYK29MmRgKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQbQs4bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQbQs4bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0942C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754703593;
	bh=koX/AMkLHG89cYO+FtnEJYoAMmEjhBkqgX0ZEF7dsj8=;
	h=To:Subject:From:Date:From;
	b=oQbQs4bbbMmxznITOL0XSCiat6zFrat+3Qqg08KJg71TOlL8cPFkKFouN02JEITWg
	 3Up4bk4eHqpgnh9h5MLICbAlHpaIjiwG/z5Rd3IMxiaG+FziiF4nds10fsrV3Qf++a
	 yeHUyp+MnXP2aCCFF8MKjRK5IJu9q6dGCQOe+GuJlTRO+4TwFvMGl6+9RmU6BImK3T
	 krvYCFydoGaZDoWZGgM0g3GexbHnsxqwOSZ4YZyOheLc9a02Uz3tzM4atp+Ijemxsq
	 sW9JkY2DWGyVjPH4T48LmMYzyjgBqDmBUPW90l+4kWp8fiHzfsDRX/0qjs1fDkqo25
	 Lfjrnwe1ES0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40CC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470359357.16287.17922626728511391949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7bc9f0e2fda5d0247a6ccf23a276e8e27d908e20e44e87010286438e83682a3
Date: Sat, 09 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754703593
