Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6471438396
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720288583; cv=none; b=ih5Rq/L2WE0dmi/WxluS3l8JitvvbCWm71uoIJEg76Qmm5WqYeVGc+1jn9KCk/2q9Es8nx01QAcOgMc43K4P3zjZL6y5zk12A0Bf5sf6VJjSbdR1wRcOXYnTwOUocgYy6EZUD6lVLpu7drNvmWbplTMX1dG774lX1fH+QQY0rjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720288583; c=relaxed/simple;
	bh=DyEbvXOw4SwmHY6ZsWH3Y1K+ZR+uyKtGOMF3rUWtQtk=;
	h=To:Subject:From:Message-Id:Date; b=fhf0jErfv9/sN3geK7cAWZnG2VsVpIZ01QdpLtPodVoRW34c1/LkCyMOCnwgkvG14C5huqMhik4LDmwswOfkjQZa+kKMliopM/+pJPLSxpZu9i4g4Ek7v8ETUw7tDSx5OKN+D4Lmuc9jnxfW+qAe0Qc5rWHO3CrmFZp3cAKX9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnKvTCxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnKvTCxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87ACC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720288582;
	bh=DyEbvXOw4SwmHY6ZsWH3Y1K+ZR+uyKtGOMF3rUWtQtk=;
	h=To:Subject:From:Date:From;
	b=tnKvTCxvqmr+Wr45z9yxcKHOc9qVp2wXQLONyKVwmEUO0+Cb1Zw6p9CYCAPp7agk9
	 jnRG10Ao2k1qcIZfeFvowxicMS4Ecg+LkCBhxbgKzpOTdKZKMJ3nkDrYp4QorWhIhh
	 j9qaiN4A0Vk8lx1b3efygqQFZCKdnEXmrh9i/JB/Z7/bOHpy8vgNw9UboSGsC1XBNP
	 QEM5P3jNYS0ORebixsZwC999acgt5nfU5LlYzptyHP3E4fbGE6rYBD47F210aJ0B2F
	 OkTdPWI1Yyt71zEmLHh9aWXpnhpA0MgWV/Ddy1FPiFx0RRQzgEEn+BBgEve/K8YTta
	 8OR2na+V6rIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C319AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028858276.5514.13866397044081645678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c36643452a7cafa650598188e013ab49aade6b0116a15496d4cfa73e790162
Date: Sat, 06 Jul 2024 17:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720288582
