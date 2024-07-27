Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE47179A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722106554; cv=none; b=Mf36lujP73incerLwTdlU4oC75pP6CrZiOhtqQ1sffkYZc27pwlIxx313T9PsIDQPiuHadvmhiuCa2OoZZ3+qileXT36vUbuvYIfGe/+twO6aB/2C0Y61r5Kes27Liws5e/2rghqy+HhY/149xCH8mGwm9tMQhA6O6rpudy/fY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722106554; c=relaxed/simple;
	bh=Jwm1mgL99YrLHTQja8pCFtu+0sLafFK8Tds0h3ElxFo=;
	h=To:Subject:From:Message-Id:Date; b=hQ5AUGQIzLPs/JR0KAReTduKQJz2fw1BRcltu1E3yEtO+Xwg9HO6ckJ+PcRuPBJWBo6lZR2WwePL3oe84doiPHHZyAwnRiKYt+bZLiYOzwZqOzmpDT7oMYfJt45n7VXmjxKTZuI8iF788nGbVu145njJJYXBsuUs14dsJPjykUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/KpOy0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/KpOy0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722106553;
	bh=Jwm1mgL99YrLHTQja8pCFtu+0sLafFK8Tds0h3ElxFo=;
	h=To:Subject:From:Date:From;
	b=T/KpOy0hRaS7w2sSh7uMgX95/4t4qBKo5kJNHC2c4d2FFmciiDK74rACZwZ2QVLoX
	 haaA4g/22iPIlG3tkeOaq3wiJNxlyW7FczU9PBiSbIVAXpdgpVHBMDIZ0B6ld3xfYe
	 SaC/+aw2pLtmkwVVG5XkOXhstwKlDnCwJ7iBWPEp5uQbUJWIJoqTUT8RLpwgToADPQ
	 B0boIVLvs5/U3JRqIfV3Qnja55YuuWNQkFhy3/eaVXi7++ugZPdDq0KzeTnA+p7fRD
	 kpQNyGFVxRoUV+4hx/GegYIVe75dF/1lZvn1XmdsIcX/88ADKGRmTYyAnYAN/NvYra
	 6ku8V4N6BiMCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9969BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210655361.29482.8140893419087529990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337e6d204d8d92604ac0c9ca75c86fd5d54281c55e797d2e9da96a93e5311737
Date: Sat, 27 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722106553
