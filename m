Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFCB17279C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724750153; cv=none; b=X9nYJCv96ePLZh6lceePS+ACt/pZfe3kplMxXQZlbNoS6fcSGhO5hfI7Fjq23J/d97Db1VEuCOdymNe7MCeLwQt/d/FrsvSw7oYN8HJC0Wenrd+Y/jFE1vTdDj4RQ91EVd7apond/dijgjrZnsuKY1oA09NUgpLv5Qy8NLEaTcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724750153; c=relaxed/simple;
	bh=Y/+NBu29Yied+QhQ/RqCgX983AoVQS9gZ+GEzFtk8Do=;
	h=To:Subject:From:Message-Id:Date; b=U1/NkMhYQTK4ATdFstsICo3FCgDPrgt7mjZj99Wxxa78OsBSq544oeodNjDS7n4i2gdoX7dUuGtuiSvcpFlCxN4LPtfPUWyoJ33L4lvUZdtEG5DHBSI6hT5Jxl/dv8N/y40TtpYx2lNP6b4h06Bms8is9j2qjOxqOSfS2ZfYaPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilaPTHwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilaPTHwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A788DC8B7A0
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724750153;
	bh=Y/+NBu29Yied+QhQ/RqCgX983AoVQS9gZ+GEzFtk8Do=;
	h=To:Subject:From:Date:From;
	b=ilaPTHwima9liJYz2hctNL2BB4SIFewgytneCWlgYkpzd528X7KdPexJHGFWSYyl7
	 /vzHwZwIZj9On0S4vdA8+etL1QutoyfYo1przvGAoOCVj/J+/eStYO31PM/Ue1gKM3
	 rPdQqOKCrlHXVoUg+QHlhul+80Du6Ugzv0Yh5oYzbDZszqvAM9+GQwbtM1q+UrcenY
	 witlTsOT0oHgYDOcIzlh+5p1KF+xN+KhnumcK4EholkPxb7baPdxp87WgRdyQ4MUvg
	 /yP7J9ekFh7J+r0Quni9z1yYiaMamFTnDl/JzYJfizEaCM6O7CNErOmTjYYMUtxTeU
	 cVsBX7pND9cVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96861C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475015360.31685.9097787598176053106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a83a206fae6f8f3e03cba26a696ccc51c77a4cc7dc24443249d55c41058f3e7
Date: Tue, 27 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724750153
