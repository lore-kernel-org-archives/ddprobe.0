Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F14840D564
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786050034; cv=none; b=GWBCxuIkIl2x1UJLbEP/9VKo2CNkJfumgz1WabaV0oWZtOvpVjJDBPew6c+C0vX1W+qV1MXM1KhvhDseR/TvqycfoqBO5Ivs8UFXKdpVCvEF3PcT45rpUQ6+yhxVT0twvhtHFaEZbDT8LGggl9xVxwNnZXozeSvsYNt4cXJabTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786050034; c=relaxed/simple;
	bh=+mCxQ9hO18//WH0IVXJTxvEp1SNMLAL2hbP6vorJGbs=;
	h=To:Subject:From:Message-Id:Date; b=Yo6UOdgYHkhA20kE3sh71CxFe7KPdBA/LQd/p9EFF0r5N741cc1egFw98kA/qCpxWDZfczcxKZBiBXJgPXoMHQyOnXSROa3Zg/yS3GnQAebDaToPTk12YCGSOJGDPoJL+tmdfUVNip7vC3zBU/wcHOMrfHZ+m5Rmp5qIPSAfqWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCszClFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCszClFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0C9C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786050033;
	bh=+mCxQ9hO18//WH0IVXJTxvEp1SNMLAL2hbP6vorJGbs=;
	h=To:Subject:From:Date:From;
	b=uCszClFf+z0KhTLEaeXplaxdkjHvjIxqxngqkmU+HDbF0Gwj/GT7HVbiP6ihgj04B
	 xEChamYalyb/80MEA6i7sYBX5VFwUaiguTFmc8++82vUKPaGrcYjR/HmA4EWEWX6Rr
	 D6M9UizZRt/WouOFzZjJsDmmoO+JJ5JMqVGH+MrsJWQLBd/nx36Elmf5huAshQ3o2a
	 OvAn5mzEQ6B9D6okAMDenAz3pz+viyOhbZmyxW+4V37jfKPnr1RNQWBWLZbiRM2BCX
	 oZ8hhyz9BC/EWuw5EvF8F5x70AIEbOalVg2rWYpM1iGzc0meYFMZrdN4B+L5UNWrzF
	 tTwCznDh6PIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F29C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605003368.27474.10141361078244922656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874545538fd6f8e51c9455953ea1b5dab4a604c5d9a636eae7a28c205e5d17c1
Date: Thu, 06 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786050033
