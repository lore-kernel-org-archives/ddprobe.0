Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A831F3D9DB9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777039054; cv=none; b=SmqFEemkDN/MwgL7jCXYGduZrDSek5f7G/nRCfiBc7hSiYEw6+4JSV3BT7IeSVZ1BKORPRs5WBI2dq4vYDLw+9LqPWQ0Z2NGtvz39kZoQcGiyaOmu7xSZq98Rpb2ttFYJ+yrnyd/2kKcALxo67oP2anWOJVIdK3e9Iiamd1RKgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777039054; c=relaxed/simple;
	bh=cI6UO37LK2u8uYBpn3YfYNQArqUa19O4OR2LwuJJkpk=;
	h=To:Subject:From:Message-Id:Date; b=mYlACowrtKUXcArdjixC0tsyMuzz1JHfQRyAOdedxH4YN2gI3ZJHDHYSvjwPM6/HY8ycWBHg+5QXRdTCMYqCqctlZqvdLitboU7V52Sh0dqLt8jcrADkVW96oENPNMnJUy3/IcW9rJV9xst2gga6/waz9/YKLbkH+Qled+ZOsjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpDqCKDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpDqCKDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E71C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777039053;
	bh=cI6UO37LK2u8uYBpn3YfYNQArqUa19O4OR2LwuJJkpk=;
	h=To:Subject:From:Date:From;
	b=lpDqCKDzNsBVQk+RbV0cFAw8AiXRp/eDqgYdfOdMJ80HuQZ2P8YzjK3gPegeEv+AV
	 +grsxWEu7AxQsGv5vyjEBF5u0J2IPIofBYUdgqe98fB5K2DGAzO8YKWRdZ3ghnhBpR
	 5U+OiY97Qfbc8onkr7BZaNer69B+OgOrlzxA+2d+BdIoaUE0XrE88ftcA5ue7lX8EE
	 ceFJxwijBKjlFKOa9KizEdbGiePV/UAjE0FglOZOoaUfn+i76S7eDMA1PAd+e5BWVj
	 OrDu94C3pSCAgkRRGEQ4M3KLdnt1X5N/UgJQak7DlU3Siqy3Hv9R43uxMNK9J7HeCs
	 fEF8XVf/6Nyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7FDFED3C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703905368.23751.14045030304765935389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6bce86aedbe443144f6df38e3a492fa7de9947d8b5c87e6ec1e8e6a03836b6
Date: Fri, 24 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777039053
