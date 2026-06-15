Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80ADE3EF673
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781527594; cv=none; b=KHHzpmydb4r9jp7uwej9eG6I7/iJJaLcuRuQczsjxNdoVJ07R1rRzsFxIqx761CHrnx2KKy+QbcIS/Yh4dLHoeGUyydeqzp+SZ1pAJlpwuLFYDTrWene16VPfnqYvK5VZFvgikTS7DDP0RXBvjULhpX4UZ3yHpPSMW4js8fNL7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781527594; c=relaxed/simple;
	bh=HCwTgke17uaOgUtpOFYk0h35p6gXawmANHv4vZTiwuU=;
	h=To:Subject:From:Message-Id:Date; b=BjhKLVhh06YSJlayis+NFLx9dAfihiWhqykBpV5y8acPPwId5ZR+5/ylsYy1kSZa6UCUUpyOx6SDeWVdnZEsOCI1qvug8JYokHSBMqZhOIXKf6URImqHmWY053uBFCMBUhViX1dyUS9v7XtK0Dz3eKntxmFX1X47UXAG1a6z7Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7GACyoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7GACyoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A950C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781527594;
	bh=HCwTgke17uaOgUtpOFYk0h35p6gXawmANHv4vZTiwuU=;
	h=To:Subject:From:Date:From;
	b=W7GACyoQSmECCHsG6qeDbmYrBS9d7iLiiUqqDsVC4K1wlG5gMSoS/Heytf19BnBOf
	 A+Xp821beoxfAnlafuHTiIhJ0uFxzo/+sQQVb42bk1nRHnrXM5gu28FRO0lsGM2gRL
	 9rGuM5qr0micMyRpoEPctiFrnyxPZLyQpSUe+4UwuNQe2ncLA4T7Omi0a4rltTOngO
	 vH/RRZUNFLb2JMidOWBP2cqSEtZUmZswMkqTZDPkImJyBlpHbWJEU0wnFVQntqGecw
	 00LpZF22edQttmYPSHt0Din7qnj046b+a22yQy+WVnJ0zvaGUCwfG6QhGuIYY+UHgq
	 1rFv5WahkeIww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5767CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152759386.425.12523089221699106996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0362dc05a1a701d2a2df58afac6bbb074def9c9af2e136fb78bea5a9f7f302
Date: Mon, 15 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781527593
