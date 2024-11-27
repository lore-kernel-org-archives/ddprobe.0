Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60E11BC3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732732553; cv=none; b=tUY0RWMPdxzCiJlOfAVBzbp/t9nrbtMZ1lH/LIdEjcPsn/punOJQDsfYOpx3HqBad+RwsGRwzRRb90KTOMfnTJxyhahYmAajzfwUqfzg70aDaKAOwu/bCqMZ+Zk0GPRMgV5TKFUgIGScLrgQjfSn+TLaNsLZNST8P3ZK6yz8x8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732732553; c=relaxed/simple;
	bh=oLc+Ozv48vJ4p3nwk9qTlPojwaO6t3eFmZFYwv+U4uw=;
	h=To:Subject:From:Message-Id:Date; b=opHCbfxCaGOnhIxrT6FRki90ImTqCgIbkSJyRUyKhJAJ21sixRLVYQyi5mwRjzxsjI2rHDaaDwVmUhcABeR4wkrO4fZGDUrMSUTxBDwD84VjyNpSovYiAVwUU/sb736pYm2j++8TcYIEr0lLgsvEdp10hq+LmbK7GI3eHOtgOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNSD9H/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNSD9H/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A2CC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732732553;
	bh=oLc+Ozv48vJ4p3nwk9qTlPojwaO6t3eFmZFYwv+U4uw=;
	h=To:Subject:From:Date:From;
	b=SNSD9H/EGHOYk6l/jsulh2eqUSLr8WWYF98vqQQxe+8K1byklFSbJEGc6lT78KNCy
	 vWLemaxpH1RMGQsqE/m1q/umq9vblSTBNRqEar+LPmWdF9mv/NeGNXUmhoRfkscSBz
	 ZYEw8A4C6EAaFRtNLqa4w7CtnRnyyMw9bEkQAyRI9qXYkoQQnYyvkIZGpC22oYoYiB
	 gFOjF4B0GjUGNUM/3YejfltxN+HhKrGaaSajgJogkM2G4xHljM8HWd0Nv6CDQ6ESvX
	 T72e2T78bf0W5CjQS6BlySTiSzilM2oxI3AGi948NR7PsBOfTV4VMU9smEThgXXIuX
	 tRT9c0xeJU8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20F0D6ACFC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273255365.7155.3156671163649989324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155b9d282dde68df6ccedb12cdf997b403ef1c45b88f6a7e71c5db3125890586
Date: Wed, 27 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732732553
