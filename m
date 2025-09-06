Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FB2158545
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757123394; cv=none; b=rHgEErzQGKVIw2gq4Y5V2zfAZIF4TRG+BLm1avND2aAfzHjmNkHahUtpYX60fK4LyvaXpASV3xCZFhxNgJFAZUjXPI0yIjgXD2+Hb1Naqu4K+lCcXUB1/BZs3Rc1qK/vYLHI/9l5x6xgqvhyGOpqs3WX8RQ3XN8AywtNL1YYzDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757123394; c=relaxed/simple;
	bh=90YzPz21dM6G4xcr0bHYRVT6AR7rxnNFNsS4cyrp5gA=;
	h=To:Subject:From:Message-Id:Date; b=JR4XMZehlX4lR+aXw/p6fnrsukwFfcNiwGf628iAthx4WiYdOndTSE+iVTwKrDefydX6Bu8JVRuLobpssLATr6/jWnCl81FUuR4hz+djg7bbhHkc9MhkTDZYC6nAOlYzO47xRMwVXvKIlzSIL3gAZH3YgANKRiBzbbOY28rnXWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E265Xdhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E265Xdhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C52C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757123393;
	bh=90YzPz21dM6G4xcr0bHYRVT6AR7rxnNFNsS4cyrp5gA=;
	h=To:Subject:From:Date:From;
	b=E265XdhpIGEqCicRsoAzk752xkVJV8WhfSax1uYNBsIFJaqn3dfZ3Cmuqf5GC3QDB
	 ZtOfh3emdik/1ad8EFg4pUbuJXw8CWWpJ9C6mKtWdkUVVCq11zbh91iOJ9XXYRKEFC
	 2HogkGiUhUFbptROvyTWdG30HqV1AwLQQ68ks3HKbaL947QvVyer2JcsVJlgNlHj+y
	 ZXYoacgzq7w42j3ZpZS9Hjyln2UeV+do2dQEESMqpLKWkbP11SUiFCg7/uhOKyYMrj
	 uDgJI6HkKrL8EnbmlChxT164jDN/Amelbnq98LYtCSz6Dm4NCpTLfPBZbICIkQtsHn
	 3Wd9DoyKeISrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F3CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712339357.9380.11201180094891313751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b393bdf1091fce9ec10dbcee0700899d0106c0acadec1c6e5e21c2a765b3a8d9
Date: Sat, 06 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757123393
