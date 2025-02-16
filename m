Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F84F366
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739695134; cv=none; b=DmJKuZpR3mPmByvMIb4PVRXhexE1/C8OWp3LYMlrIkDeit5nI3jf/ya8CQKHTXVOG0a6hQLdRUtCbyICtdSvWvqoUcnW1/x9uETTDCx964mLH9yLHPPhrAjbNP48bVJ+YDRpeL3YfyvjG63UWCnj291+7q2xEEsIIBFIoiAa+hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739695134; c=relaxed/simple;
	bh=WE7O2sYSoZj+ddj7o58f+XPmZ666c2g4JpsBCHYwZg0=;
	h=To:Subject:From:Message-Id:Date; b=MdlQxNv1FM3qwA3FF15tWrh8PysGg3SSKxC1yGCqDd14EqP8A+M9c6JENHt00a7Y8nkXawUbTur9b9cq45D8gGL2T0myLHmxu07u0ITZpALYUNUDPtH2mMiL3ZW434W2ag8pckWhFnAvN05F0SL1tqtGfOPSyxuRZw8IcutFbRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qka0i6Vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qka0i6Vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAB4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739695133;
	bh=WE7O2sYSoZj+ddj7o58f+XPmZ666c2g4JpsBCHYwZg0=;
	h=To:Subject:From:Date:From;
	b=Qka0i6Vvab8kYjC8/6JTww/xuoqFryGjCf91s5U6M+my3Sf0iap9LwwjpiYkhpwKP
	 56IQOQwFuUpXU55No/fY3bbcpkMuWFgcsNDuzFmT7eXHCCICifWhHayL9ZdSJ7kF2k
	 awGZ6nyM/Qv0UL1E+63QjnwIaEdVfFsrwJExFXxBfeOfFpsmtNz+ClqV7YlIafQlXu
	 kI2c0LSz83CAlEvHopWVWhrJ0ehWxbygjKfLsG95a2eeEJZjF+jMlJIyydfo5G2xB8
	 RXyBrvUeCW6KIvjFC7yFu40vAIQ5yTCFzy3qx8AAHbBb4eMDGFXBJCcb157pA/TVwR
	 l90b4O8TmwfUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6FFC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173969513360.15515.3030325013162904322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def064d3d4bff9fbf505e9fca86310ae156affaabb9d10b54af96ad66cb30924
Date: Sun, 16 Feb 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739695133
