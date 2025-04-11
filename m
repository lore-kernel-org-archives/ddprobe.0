Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0A51F8756
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744386595; cv=none; b=qQC1MAJHV6agRqamNN7T0giUzZhc9R7KPXCix8IVDBm+6TTcPOOP+KU/zEZ/GiaFzg97jYQgtpBa047Vo0kj41+eWaAv+rWNNcfsouWRiXPCHIM+Ya5pjIhBpnqQ5bcIlDlY3/x0x4SG2myLEByG1/FSQLjcFzcqYEGQTSqrP2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744386595; c=relaxed/simple;
	bh=pmUtnA+hQBWLLZ/94pGynpcKn1qc+4RWsLg4ZJuiLKU=;
	h=To:Subject:From:Message-Id:Date; b=ROyYHTepA34KDCTEcyJ/qBLLZJy3wMpm1IEkJKXwW4JZB+jFTtOVdx1a3Dmh/7e6TgoKsbe4YQpeUvSwPpC3lmYuYVuL0xU/CYjxUbn1SmDssRTBWUJmMCY3HID6Y5a775aGPh05JBRUDyLBYs6jUm+ewwedij6Sfc+5kMe2N5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEVSnpwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEVSnpwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8917C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744386593;
	bh=pmUtnA+hQBWLLZ/94pGynpcKn1qc+4RWsLg4ZJuiLKU=;
	h=To:Subject:From:Date:From;
	b=KEVSnpwqtahrKMe0SPlhGmLXGL/c6HzwQNNsBsAk955Fliw8QRGn1G/o5kgLf0BlU
	 och5AriixO4i2imK8Suxlkgzq2qEd5Gcn6BveO8ZKwCQF8pVbfG6UJwv4eQ9uTgF/y
	 E0gWki5teOJCh446hF0JgVtiysGdTNFUrfxgt6vJa9CrH6TGNOiBHxW9XvK7azm8Bb
	 DiQZuLRCQD4gJ2ZmaCsskQwmfJ0vZodH2ye0viXfJSEOUlX6yqtRjV/X9nDwgQX3Sr
	 RP6YjQBFL5MRNIqX8zl5yONS7NpCIpDu611d7Ti4G1B71CWvjLW8L9nl+m9QQVH3hG
	 ei6WfuT4X9Zsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D2CC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438659361.17150.7176714864618174892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2799600a982f7aab72aedbb47b9841ee5ed1edf07b331954e422d8af9c4188e
Date: Fri, 11 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744386593
