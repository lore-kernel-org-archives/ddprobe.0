Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AB0202F70
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757105993; cv=none; b=Fendo/7hfKVXRFdQ+tEf/s9dfuEE8feqcG1oLicGQkXhPGdKBlrf92iTf9JCExwo6ZfucET8vX2aATnbLUP5hNySR+hmN7XYKXkk/qwE2crDnDxXg4CRCNxbAqMY7X9f/1jzgolTF07BXKOHGJj5T4DHoT4aGKdAj0NNBywiNwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757105993; c=relaxed/simple;
	bh=6tNt9l5+ZqhE4Wb6OuRh+L9xuIZz7Qbcubgu7u0Zn04=;
	h=To:Subject:From:Message-Id:Date; b=KAcPXNLealADVwB5RO5nu9jrkM0c39f3f82UjHHdidgSgxhq+DZ+mDwJm1cqTb8rRGz+OuBHd4HysKfwPfjXH9xXzTQAMSzYs2Rh0VLmZ5j2Iu90f2kpgw6fIgWNzPSPmSkdbUbfYnVZsG3W6YeYMgqFvZBKkhzG5d+ONLbpySw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhvtGSqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhvtGSqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757105993;
	bh=6tNt9l5+ZqhE4Wb6OuRh+L9xuIZz7Qbcubgu7u0Zn04=;
	h=To:Subject:From:Date:From;
	b=KhvtGSqi+mlSaMNGXsSOWu5K5TiHt1RTjRJWGN0cLOe/Sg6mFRwY9gFm3U07YV146
	 DnxvNWklaFttgWLZgM5/fYzwr88rrN4FeJwHJCQfPMiKEre0jlaZIzhu2OyZpkxCkd
	 aeXpWRYpkfmnGDtBm/8I0F2BTefSqOxIL1wEHxK8qvCDAEQdJOtE/jNc3KnYrB1Hyy
	 t1pxJkMi143YfPlOROUgkWs3W+sC8WAlofR+E+gD/K+TZrEuglRR4FgxZvqzDkZjVp
	 EHUKg3QsbbumUXsupN1wlGPUPg2OLXs+a3eceAcrHL5x+kTAY+w0Fx/KV5zbUhDv54
	 n+rMAaSLXVWMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F949CA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710599358.14748.16093793601458169528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40b1c8d05df3782b6985f542c1077f63e6aeb0e4a2bca3d271cf9345a476f0f
Date: Fri, 05 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757105993
