Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FFE2B9A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777139254; cv=none; b=LIKebYNUXWJ1DCOsAc4acMaUKwGmjj8/+6AoHM7Stl5YeUj0/6/113cCi0fAVFdZTFxqOb6Lliv8xj1gj9whTKJRNLvZz5AzNIyfImhJGHC/SZ1aw81RnRxYZ8SJ5HWHHU7kitZjPPyZMf0l5Ea6pKynZkELKEQZ3LXPr6/Iffw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777139254; c=relaxed/simple;
	bh=4LaWru9CTYO7BLyimCGyiR/+Jg+8MN8ukupBJx0w0Xs=;
	h=To:Subject:From:Message-Id:Date; b=ZMlR2Ud9UwI5qBZ8wMlSGfxOkCjGbbpQTS657XUpTOweV4zc13sglTyOOreX9clXHYBe+ZVW3OKoW/xrEmq34S/8ImiBcZRR23jhBacS3dgs6icv6K4sujyRmnu6KcANOkV8xBaMtuJW0gQn0Np5d63iApL4oQTeh6QRQEM4334=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ss7UkKV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ss7UkKV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0A5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777139253;
	bh=4LaWru9CTYO7BLyimCGyiR/+Jg+8MN8ukupBJx0w0Xs=;
	h=To:Subject:From:Date:From;
	b=Ss7UkKV1jtVMrvLqD+w8/wJ5Y+czuWkPJXuY8IaC/knIQzDDhU+UvPcexi+GpCFrn
	 1nLpbbKRbNIjI19O++hJ5ddQkdOPKWOPMAGXT+DiyK8WjLrTKPFIxfdP58NCtZ7qUl
	 9G45c/OdTHP2bNR+uqn7lwyuQrBe5UE1QkWS2P0QEOqXAcZwQB7R3515PulACxCVk8
	 pesXPQ8IN2RzGFND/gMbpgK2Q1LauTZyMvICqvwEDm6cxWP9tKM+mXDHHCGcNirLIi
	 l/mtXIpRWI1MeUFoIqnkBei9Cw7rjYxL4468hu5wlIttcXNUsIM7lMWyHz3B0wvyUZ
	 NLmt1VM1SMEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F60FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713925368.18538.6206661366888425075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fe91765ee92d7ff84b9e46235b2ff2251fd77f5ffea9fdb75d4e20c8482cc4
Date: Sat, 25 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777139253
