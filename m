Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D863217BBF
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708783696; cv=none; b=OqYIyXgk3DnKDbZIvMV1rek9gdubStdYs47NHBJmgDpJm3/Y1V3Qxpby46rkGF/a5AuXUx2bUiG32CrOhUo1jCdXERuhVvuHls67juc+1zdUJ/A6NXQeaoYNebDnEBxmSac4fyTb0qtuXRL5gwrfZ2N4ncaCREa689XA9ih9NUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708783696; c=relaxed/simple;
	bh=Seurng72UfqKJ5ufsOgcOSLg49AqId5xg98YShj1S/4=;
	h=To:Subject:From:Message-Id:Date; b=EcE2FY+MRHm/DusmR8rLb0D1bORp8GFmiA3EOky5lSqViHHpcyAiSvp2xuIP1c0L+vgVqUszq0C2NFvcqXsSwjA65FEwZ2nzjTPHR4UQHaLNYuvEdbicucEezcX9oOh4W9+Eu2CxRdG2gr+0WNeU888Ma+eJkZh6xmRErV7Vvq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhOqIid9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhOqIid9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B10C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708783696;
	bh=Seurng72UfqKJ5ufsOgcOSLg49AqId5xg98YShj1S/4=;
	h=To:Subject:From:Date:From;
	b=lhOqIid9TfLy4oHkm2NAuy4/6xFevAK+SBgT3tOIp221Mv91GspB4H5tzqY79kB4x
	 0ytQEtGC4I3nDL1Da308oi3SS/fiprirKQeosQ6KTOTOAeJEximQUvGYS3r8JnwmRr
	 0znhr403jMIZ9lZP2uIqrDNTtZdV5IbuNVV94+Cswds/YcqdTdv1LlxozqBQPi1TYi
	 5bqb35Wu89Oo47PYeXDDsLyjRcwMT2TQgNJijvlGMvPtlivIFjw9pkleNn+zooEhlr
	 wAMi/x6e+S3L+ay7ei4rW3eiN24Ib6uqFhvfTf4OSayktz93/KyRR6rir0kAUlJ8XF
	 8tutL6JXIkC5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF0FC54E49
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878369636.17098.8187326897267646302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994760400473e56c8e7ed0ecdd76c82736dee1ed2173f3c85e6fbefb681bdbd8
Date: Sat, 24 Feb 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708783696
