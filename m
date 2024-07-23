Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE1614D2A8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721726154; cv=none; b=YIwzgeXu6mmSyfUZ2rYe1q1UTqCMFpqKGpQ2C+pyN14o5h2/HX43EwfJVNSd63wn2m98dUKGHGbmXeh0CITm2Z3yB+Xb8QA3RhQ/1pzzWQpfdB+CY6JK3XIoTZ0bY8rsQbgWjr6B3g4XuU5r6cJNPwBC3JyiPskxRZhchLk7+KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721726154; c=relaxed/simple;
	bh=sphkt2CTzUZonOw9RMq3w/FDhbw8rcKARIXn/6ZeW6I=;
	h=To:Subject:From:Message-Id:Date; b=qfNSBuxw4++1qv+CMei81KvXifb9Hubq4R1V4baKC72SdsoLFgn6ObK6Qnix/FtducpiiyS0ybx9Jj6kW4txFJleU9005t/Uz68BiF54DJoXKWZ1Cz0UrR8F3dXs0tXNASJDLUAdT0FaMQWzH0IRa5VIYbQPv17j4qhpqW1JLj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcN2UWUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcN2UWUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF8C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721726153;
	bh=sphkt2CTzUZonOw9RMq3w/FDhbw8rcKARIXn/6ZeW6I=;
	h=To:Subject:From:Date:From;
	b=lcN2UWUmYlndtz9pM65XleYVws8+RK2RhaFkOS5D9ENfPnEVQuw0NbiU+5+cil3SR
	 3kwDySHWWi0Zf2BkGC1zoe+mEmwhg2V3/6wUNvTLiJYNAD8ZAbwdnMrxPUZd32fKFu
	 4eAvtSK4lRiyCrcnX0EPCu3JQj8WW5uhZvReMuplBBPWVyPZ6KA+x1gR50XSWzkc+i
	 hXauWNeDsPE4jZEX4kfXvxpwLDt1rujSts6WTv17Kl6hnlD+aBTK6vVR25UHGHI/qo
	 W5AkB8b82TiUeewXVaqZR83/k1KGDtcGKL7XbDIDw3gqOV7RFMBI6K94tNHArlOzqW
	 VTTzYRzBuuZew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F5C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172615358.28867.13331104901892159318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6204ac43e8e2131979cb8006ac26ca5bc0cf5442083e0816748d8a446e2cef9e
Date: Tue, 23 Jul 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721726153
