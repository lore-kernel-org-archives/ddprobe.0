Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8E425485E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744147195; cv=none; b=fCOHJDiHriEhe9Ic6VfKQo/OBWJB0l3/cgrQK5XDBC+lJJil6JLGpqZw6H9Rx8wvjwhcxVQP6nRAMk1jTeviccGjWe/T1m/Z/xDVISwdiFbyAMzzhTsWX7L2yo6izEnOeICEMeai9+kfOQUNh/iXd62bczKACaan93ImLDKIkNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744147195; c=relaxed/simple;
	bh=JzOJnd1yKK9ia3tfCCzqp6/rv914U0ryLxbudrgbJyc=;
	h=To:Subject:From:Message-Id:Date; b=eftXQ+NqFG7a3qb6xKDNKkY2ECT0prqPIrnZYV408U7K4dG+Y6MtfWgHXvtcVe6ePCrLmnsA55iOA5bOVwzLRH/zk01wLYuXRl5sPQCr4GPJcl5bxnQZ2f8WvAqskjdzyW8QggKXwUWRgt9wXJ78Qc3uZKMVbHI3uJH4MeZQ4FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGY7q7i+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGY7q7i+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F25C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744147193;
	bh=JzOJnd1yKK9ia3tfCCzqp6/rv914U0ryLxbudrgbJyc=;
	h=To:Subject:From:Date:From;
	b=MGY7q7i+Z0uOWYYLu3Nb8FtPuOe9EIlZyhriv2mgTfuVJK/px5yAZ4bs3O5LWh72L
	 IdCLEUDiJFK06xtFJOBw0XiJMiKVbLiG9v/oLpkjWVLpYoKW8Jms4M/Kdvh8L8vOKC
	 LSi4pcPj66uGKK/pRp535AE024bhYQiZdKBCIz22U8Gsr/LIsbAvgIiitD3QhqwL9V
	 rIT2h04CQU+V2XjwDI2M5NtLhW4nAcJ7sYk5gYAhSD1zZ2xUzD4W5J0JVSbxWEPJky
	 bt8CRdEXgG/y7cMpW9qvcEe11szPZ5KNU71XaifHOiH9pws91HB1yrJk+0Ipi9OU5U
	 TRaGNMxy4lnLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E5C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414719358.19733.17882041620875870579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d7e29df79fe6ac2eaeca3ab80535892e29fa2cd03f32e80e11d0512d43be24
Date: Tue, 08 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744147193
