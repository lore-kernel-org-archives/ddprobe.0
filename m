Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0991DDA3B
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730981154; cv=none; b=rSadJUG5f86dV0ag0DuSHnZUY5wYLVfe25YzPrSCaC+28Td/7aR45M8UZcerud/eNdPzCVS8gfy2RjFJ5EE0pMgMu7rKibIsDIzeqQrdmwT1LbnhYF+MDrk6bpZbXiJreiJAwYJ2maUiL2m1iXUS/Q5zX8OGYGvmsX953U+T3Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730981154; c=relaxed/simple;
	bh=3oWmZVVFbdgNi5AUUGhfYO9ODY25i0QXhWyKcKfDJyQ=;
	h=To:Subject:From:Message-Id:Date; b=rmfqqaY+q0yk45gpJUA3PrHmsBTPcrL2mTL1X7DIKbcyDmbTpo8J6n1hPzepJX3o8CslTDc/pF9E9jie3m/0HpNq7W5Jnk8tTm8OLHthdkA40CxXN41x+wJBGLt4PgIwO+N6EHY4CrZzgbP102+zKQ9MLYar+0yBcqBmOLEKU1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm5ebgnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm5ebgnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDD1C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730981153;
	bh=3oWmZVVFbdgNi5AUUGhfYO9ODY25i0QXhWyKcKfDJyQ=;
	h=To:Subject:From:Date:From;
	b=Vm5ebgnOcCRQBJdfCMMx0GWZMAKVcLj/DqWor7opzAmPcT97dSST7ImVE1KPJaEiy
	 MsDUYFO+10dKBV/fN5eYf++taHXehcQIvQt1f2ePwswV0FbTA1i8qDWxuEqp0bO+zs
	 EGv1CnoIyW7RQ+LbGNKHNjfRDReiRxR7HKCe+Lemrl/N3T7lfAJ4GHqR9NV5mGT7ju
	 BoP9esHrLO8+RcPMHxNEgOZScewsJEQfYyArTuSHoPtbryHZjfeYBvJBPRbYipjilo
	 L6rEZNufbXuHw0Gup6CRNZKtofQwFmtNKjgjIniKeTu0KRVhC9ChQRQNkVmlMl6do0
	 F4dpxP4qOu49A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFCFD43354
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173098115364.31670.8872546392675843378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf9d3e12113a56cf8c776619cae769e2f27c4bd73c0d0970b93ba118a80f637
Date: Thu, 07 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730981153
