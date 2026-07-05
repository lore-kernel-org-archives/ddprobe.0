Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405E6258EE9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783278514; cv=none; b=CL+1SV5sluSFXl9rQrIlNdR6xRxh9s3LpP+9HKbUiHCavyS4JdXDK6VoXpg4aXmFmfVIYR9Mm3NUFPAT50Pn+OcOBvdY2S+M5eRAj4o0vhHqJ5C9TvMAp6SJr1vwV8mRYdX2p/z1OMJ8GnfUoKtKoAy31am9WgOKyNdD9LeVKFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783278514; c=relaxed/simple;
	bh=1t8UFfkMb1Kp/KdzW4U0v0Pgnpp6nGEiPOsnAWRU8us=;
	h=To:Subject:From:Message-Id:Date; b=Qlqm5KW6AylkXCMtExgqSuhZLa+r0TxTF2OwPuzTAI1AUpdBDNcVZTSF2BNfnpOI1nO7bhqeSicdx52zvQG2ApXRqbVUuDvk/AtoC1u3BSEfxL3IfgFBW4pkUAX9Ske7pdSool9mquuiu5QKVk/ZWAoiXhYcmTzndHadd1Sy7SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwkbPoNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwkbPoNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D554CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783278513;
	bh=1t8UFfkMb1Kp/KdzW4U0v0Pgnpp6nGEiPOsnAWRU8us=;
	h=To:Subject:From:Date:From;
	b=HwkbPoNdDRscXgepj0BosPVEQQjbUKrzZHFDvLRkAiS9qucnWAzcrkbGMfWrL0r8S
	 L6yTfo4gC0/VuQ+EzjtVLJRBqIIhnnc5sl1JKxSEUY6LojRn38hSSOeYgJilGwpii6
	 TH+/zCPAYABO/NB+Np/oz2KL5EdRXZN+2vyjQLt2KB68nI47YyuxcHYE8AJ87PWuir
	 Sll06WTqM8SX7EwcCYBGXQbpFCfrwbD6vhPG9ExRQDg1UENG67YCEIwn5kAqtR1rB9
	 7MmbGvKVa026wqIMgcrjiIwvstRj8h4aVlZWa31NA/iLsWOqTTyNui54YdTD81EFoF
	 GjO6q5MuOqq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF020C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327851368.30607.9358166770124493847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa07d1f1aaa678b4561ba77bf11bcc61d50dc3ab491fa5636774367a3e46c70
Date: Sun, 05 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783278513
