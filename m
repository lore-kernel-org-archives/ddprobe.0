Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199CE26CE1A
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755790794; cv=none; b=TyV69cT1Qw43S9p6JSzppp0uhDXU/NQNP5Z6rVJPvRAupeqMIYlMt1CqcF01hT2V0Y+yPWzspOY3msuufTob9X1WRAGZZESJIA/Z7fHxWj2L3dxfkeqsq+o0myJPqU9wmkoLgvwOrIbD4XRVy11xh4XzZa6zSWkiurYuthe58TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755790794; c=relaxed/simple;
	bh=ImLu3FzaDKgwGumlJ+p2XE8DFkiUvd2H6sGRqXqKDX4=;
	h=To:Subject:From:Message-Id:Date; b=h6JtshEfBZXuyHQ7xdnHHnF2/5M/WkxfzUzinmrWKroDLe81fXy26CQQl9ITKOoNE0+8+vinMWEeg8eIi+TFBNzVo0tadBFuqWKLYXhHhooY5VjXuVO+9geCTZIuSO2LpPONcOhLtP12z2rlZ42+Dh0CgriMKoKpPYiE3GIXuKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzIsE2az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzIsE2az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0357C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755790793;
	bh=ImLu3FzaDKgwGumlJ+p2XE8DFkiUvd2H6sGRqXqKDX4=;
	h=To:Subject:From:Date:From;
	b=BzIsE2azy5DHgz+4/T9pylEJhWsyNI7b5tjtM58ug0zxWa+R/oByDeuJ16AF/ViWL
	 KPqTj9tUN+dsoLbiHNqN14xPXERdzCIKBJZCNSRV612EnQdYYL9nDQu+Om5N5heNy2
	 2YvbnsE3esHXqOnk3KVbu0nXXCwvnHxQPpC08qBcZ0ghsEQeUrCQRpTOiPe+tMJS+o
	 BOgWaA9nemFHZOyhKudqA9Fua6BNPCgaadrl+5kFlbxCbXV8zQHUS9rG98Cwv2hiBl
	 m1WvbXd5NwazPeDjyj87vPCW5hgVd/mEDPQTufkZ9Q0KmHYZQFaIDlZF600rExqkUk
	 zGYjmPLxdpzRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA7CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579079357.22289.6141078791370260313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34b8478e6fd1a8a7914fc09e3e8519863527aec764b8d30a6617189de41c47a
Date: Thu, 21 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755790793
