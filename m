Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B503BFAF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787746234; cv=none; b=rQc/18lrGmUWbh4ZpCx3k7Y6Gq2hO6L4CAF9wLIuBfmwjRaf9Q9ttA+Wmq+JCU5GqFIkDQjetR/tkE/jcxG+GjHI3RquaNV2nDMMnS4NKw/lPyDeRwJKB4Smv77iGS6H0K5Zo8Pjb6hmwxnNWEEb+8ZzGLLyrVB8rMWw2B1a5SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787746234; c=relaxed/simple;
	bh=5Gs7juRTr8FSg3KXUTQXxjGX5MurucSsuxXhc6qBm+0=;
	h=To:Subject:From:Message-Id:Date; b=eZXEaFASV1IqnVS184sZY0ItLL02dOQY2/VUEUpUXpJkKHT8JDqPEknS2N0FskqGzbQ0qbgLEVlsQcQjYbFk7rMGV38xySy+QhoHRcG2JNNC5WMBQsyp3njdvSd9tMBWdE3utxvlMPnmZcbz4Ju6DqqoummJWXruHs2ByN0R50c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOpldAya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOpldAya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AF2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787746233;
	bh=5Gs7juRTr8FSg3KXUTQXxjGX5MurucSsuxXhc6qBm+0=;
	h=To:Subject:From:Date:From;
	b=XOpldAyazm5YRif29VO1RT122zSzWWpT3JBI0YJOQW+vtZ0qk0UNVbL4NsWWC5EuU
	 8x5a2bZj5Zz80Zfy4+tOTjoE4AqdciCt1EHt1+HcaV5lvbPaKELPJsE6WP6uFnPxLs
	 mATp6JFUvwPgiywDpd+sojSR37bx3fsup3aqryFphRQQLIO62vJoMQpYHquuhP8x72
	 9RBquF87wiCKxk614Itg4a21KZkjHPYoyLtaeesAzx8/UGQMPPFook1964GaK5LA7i
	 uRTu3rdQVmJLaaqWzSN8qIwgQXif5Zowz/yr5+RsbV5fvU2+gKtPsTTLEvZ3XOhqSt
	 CIB11jUPnCHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D9C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774623368.30888.15038049273143336723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394c704b18f99727b30e6d516285a24dea39a1e20df87b3e658a5c0b5224c01f
Date: Wed, 26 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787746233
