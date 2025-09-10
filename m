Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147A813AD1C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757466595; cv=none; b=aUwV8q6cx4liECLWD8qQ3phaRSrp7Lu9N+9U2qeTiKoRLfvHvUrXdbWR4Vh2aoepapQVS5ue3ak4FUP70MhPYInc1qXoE/FD7nLTtWmnOhOu8lmkk69/+g/UawmBV9PP0ocWC6G1nEOFGzqsAJqmwFMUARgHbt4bC+W9k8fjgOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757466595; c=relaxed/simple;
	bh=vMYQq331PE379l/SODT5KNaW85JwPkvncC1xaql+MuY=;
	h=To:Subject:From:Message-Id:Date; b=UdYpZWxk9VaF8onEQGOyMRy/m1yRByFHASff0P6ernHRfN09iwr6RWriGJRJ87n/96e0ixMyp/hWjvNMGga7qLHocOg/INNg7tkoxf+GGR35BZBroECr/CH0PGHLVdKVu0MsZ5lgoYGs8L4hZ3fGB4guPKHkVuOh6iNsZ4u8evI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY2vNqci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY2vNqci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6382C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757466593;
	bh=vMYQq331PE379l/SODT5KNaW85JwPkvncC1xaql+MuY=;
	h=To:Subject:From:Date:From;
	b=JY2vNqciuS7Lqh4TYtef3MXuqaR5ZDdeXIz2VKYkJrkgZ7y/to250UaAwCCc3UKVQ
	 iyX6/MM0KIKAwz4QSHohgCgCufMvMdw/ScdJI/Ph0xLeJi51mvDj/0zJVSCSkGAd8y
	 sWds4wOYNqUcoUNceZ4Dph9JaCiEnAy8alf3xGSHBhBXZ4Vbo2YE4iecoasHjnB+2z
	 rc6ej0Hj1HodFWV7sOBFZxGEfNhmGujxPRiGBug8dzfEt7k4gkFjoSAou2KrhhB6mB
	 nvH6lAeS4rcmStyg6dHm2FxGjGD2h/+BzgrZa/ZWFKUEp2dFy2rJZLkyoq+MtZcQvo
	 ur8b3AxJWFaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F38CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746659358.23502.11362048622817049015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7798d0af594743d6415e3796b9fb9360c072d922bd27e0ea4f9dea78494794bb
Date: Wed, 10 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757466593
