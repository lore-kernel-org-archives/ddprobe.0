Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C486234A3BF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789015234; cv=none; b=iuzdeED7ObUwNv4GqhtlXN/in94F5cAm80wAvZmH13Rne0jJv4/XKyAdFxmE2M3NWSFF29ibfN0ZXcjRfkBjRcvezHInYHgeCQf3UL0Vjs3qS07r5+JGkWdrCMfLCLxPbOdDSDJQLDRBwDrggLKbDkQ8hGEkgCJKI/Zmts752+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789015234; c=relaxed/simple;
	bh=ZTASOEha4ZSLA1Rl52h57z9Iql+JP+2dY/eytwPVQYY=;
	h=To:Subject:From:Message-Id:Date; b=ReRI/y75ilTHr4D6uukVT7baftvlx93cZewGeo5mdJ+QiO0DwVzvAN+64h0w4+MyyrQPbRogVNwIwE7B9/d4Mb784zUMJ+MrRzHLyaqF5KYfYsL3Tvjd9zogth8nUsmhBAk4zDEW9nbQ0Wnt0iyznjaZMiyQ65GnXlTKTueN8ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRKJUQWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRKJUQWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F75C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789015233;
	bh=ZTASOEha4ZSLA1Rl52h57z9Iql+JP+2dY/eytwPVQYY=;
	h=To:Subject:From:Date:From;
	b=LRKJUQWK8amlkgqRopVO6gFqWRdMpJqaArr7kQ1sEiRZQNr0knWZiJ9/EVubAHXyF
	 JYMCA/jQHiHNyzbwEb2P8oNQcG481RX+qj5clgEhFsJGDPVKr/ywyIjSRRP5AZIOtL
	 VFDWgOoT4WImktt/QGX2Svi9pGNHP7x1JA04K8vefOJc7/skHwC1vZK3K0PWj0hEbb
	 uwLc+CuB/64VLONJ6wYUgC+5ItK9sdQ19j5WbEyLJaIAQkm2KLWIwEFNPJ3dWu5WPI
	 PiSgVk9MScOEtjc2EvkbyCmYsgOl8CTgCdZhX0DTfAO0LdbUGuPf9QPpRtPt9UEt5+
	 ezaOKYVEPOidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1307C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901523371.11393.12635146371471690829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0a7eaccad91027f99d04d09846a5295dee5d43f6db89d6cbf09cf6968dc9ab
Date: Thu, 10 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789015233
