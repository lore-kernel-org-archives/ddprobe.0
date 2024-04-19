Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6069D63E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 06:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713506963; cv=none; b=Dypk3gvjn0Av6Hidu6b6ZEpSwVRqgN/1yM8PneI8q7KAi9cp9oUhJzp0u2P2ojKp+jMnC/Oiu2oQpMSmxK4TYo2KWqMQaIRJsLkPTjg36Zrzfqavo0EWNjCeuy84fshm/erBff3438g1zZ/t5SljYt1B0SemQtOwjZEzpvl8IPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713506963; c=relaxed/simple;
	bh=X9mvgassgkzkM9RlobOKvrkiKbUsI1rF8U9U9DsE6vk=;
	h=To:Subject:From:Message-Id:Date; b=WZUB9Kdloj8sTNZNSdETXVNvDz5juRuJCYSs+2XttuiFJQFcrUEZU+HzWwredatZ/dp0lSiIKPRngOk+506jpavlHVh3iGNVg/4TTb6hBomL/nDI1AkpYceVToBCnb8fFUPP2EWDVM9jluAm3Km2NM8fG2RaYoYM/UgqEIj5T80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNIpUfUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNIpUfUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA57C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713506962;
	bh=X9mvgassgkzkM9RlobOKvrkiKbUsI1rF8U9U9DsE6vk=;
	h=To:Subject:From:Date:From;
	b=mNIpUfUAbDLcrvU2xvq/ntiBEysBXuIieMw0zESkiuiBhYNTqVTxpgctTH4ofzN8X
	 3aNaANcSeEWgS7f7sdw/PRRSCnlRQosTygoE5RZU0RU9P/88Or1kSTgo2ffY7MIh3K
	 ofPkswRUwoSyYn4O8lCYEv7AA2Kxe3mM9JZqMGm01hhB92HaCTINY7lTvfYesc5Pvz
	 9x+cB7opLOxTJqZpR3/jpo0FWRUv0SqradQd6ZFC00mVQJqOWzQJdVqTltrBRZ30+2
	 bf/xRFsbkbSx9LQO358u6KpJHquFF64OlgYURPGjn4P+dXRplBhpcy8eS/gJa7SurT
	 LYemoHnRK4vbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98F6C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 06:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350696275.4007.3442067623274261634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86aeb3e86b8637371723d1c87bee7b4dcb7286384b4488aaec645851e5db2c89
Date: Fri, 19 Apr 2024 06:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713506962
