Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507122EC087
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761706794; cv=none; b=QMCM470deuBSxSDysgirpaAPRSYN/LooTjHNQBFPSV8tyeVS/ARMCR0y1t9tpv27bQN6qi9upHgN51O/FGNwZ5eTLtinPTpLZQge8AtEtngcb2i3HmRbhptrXCAwBO8gSaOMxIzFFqxTna8kql9u24gHqV6OQzz4LTmVjdYdLB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761706794; c=relaxed/simple;
	bh=DDkqfg8fpYHV2Gwc9UBJ9pWgTNY/2FqazFDgLQ/Kz00=;
	h=To:Subject:From:Message-Id:Date; b=blQr0ImtDHVltfx6+4ti3nB4QdzGdm8CP4CHtg3jCnpQn1Pq9R1yYIvNoJk0iSAcHPOtpZAGeBNOeOEuYHk2MEi3He9XHZMOqDwIjf6hPGxmAo7McVpUHaaF0eEAXoKlVJ+11mKCj7luz9PDfmlVrrtL0mw+OoLecbsBlN1er/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mit4DU7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mit4DU7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF37CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761706793;
	bh=DDkqfg8fpYHV2Gwc9UBJ9pWgTNY/2FqazFDgLQ/Kz00=;
	h=To:Subject:From:Date:From;
	b=mit4DU7Wr7/KHZjL7n6Y9vY/MMiGu2++zVlFYbO5NC0rV6Wz+gaX57OGexHQ6jM1Q
	 sk/aZlENC58VnaAIDsw89PYZfJaCpnuJiozD9gF4SrxVjCppuXOTRCjwDZGIKUD0ln
	 3rFmRBgfWE+6VfF47qrt1QvVKSbHVHcGC45aRZUYb9Tt9ipnLEL4KMTvpb1XfJlMEL
	 NRDVzipBk84pDp8rlJLY8jNSGMwaxWSyR2IxJYyPLTPWLHsZMLzbhOQucjOLIWuiwD
	 VOuzfzaYV2d0bvx3zBdTz7GXESAzPViAZCgqIbXzI16aCvL+O5Y1aWgv6xRG2Ou7vr
	 4VlEIKaPtOqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE775CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170679375.2168.3471373647713385157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d005a6d8faba7e0c2c6438466be58eda7bb661f4343018e70a0fa37b073b052c
Date: Wed, 29 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761706793
