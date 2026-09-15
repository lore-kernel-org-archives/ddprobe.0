Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A73C23643F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789436434; cv=none; b=fXH4XdVh3waUZJ7PSkg8XgHQdCaNl3fsBPoZo5mCXkX38lX2j2tBq9hL0anUNfBUh1zCEohxyfg2GL/FBGVvDaARO78nkleRTw8Mo30l0mlJfvyizBayDPY0iOncr0HJ2aBJE+Ghtgb+bcev/k4szPgak8bsXGr1zekxlYDEI5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789436434; c=relaxed/simple;
	bh=1hFvWozIu8WKil8JSNgURPHvFmnF7BSyUrWHRlL5v0w=;
	h=To:Subject:From:Message-Id:Date; b=s2xnWPxUVO5ZEcJpZdZNfk+zTZ/T3OY7TsmFmwW6BOfRxb0kInjMsNKMQdIpQMw/BKcvikk6dkFc7IRafET9zCOoBLbYyH9jIqjz+oW+2QOrTdxdYwMveVY2ruX+Jq0215rpp+9a0fVuHEgi7Pc1UwQMpyyOWsXP8ltXbiUJpw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnxKPgTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnxKPgTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18A6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789436433;
	bh=1hFvWozIu8WKil8JSNgURPHvFmnF7BSyUrWHRlL5v0w=;
	h=To:Subject:From:Date:From;
	b=bnxKPgTPisLrdCMz5kX9opjYClppxMQpDlC6TcCfhpsbebHJxCDhvxvFmYCU7ORk9
	 VfRzUEf4OeLXYyeQazxG4GiGEk2rdaEJAwIqL9pO5NxaYlqsTLd6tDGNUFaRECPYaA
	 CSlaZeC2mJbxgaBZ5YYyz9j2pe6B1O1ZlMNNEAf0PxT+SbaZAnatV9bkQ0xYrTFDZu
	 06aOLwBwzoura0BOLGNzi7mJpzJo2jDXjSArThxjdJ6coTD93yN364BZ0SieRNXJ7v
	 7TMY0gLzHeCT2qgHx8ujYYbn0ZPjIa4zzNumuIFo0Dgft1hsJcbJfW7xltKUdFwAFV
	 uAKjENIxWvczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE99C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943643368.22198.9839924130993039205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b408f26f49ec94a32e7b05f7394db4c4e922106be3108e75a2c24f82e3073e
Date: Tue, 15 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789436433
