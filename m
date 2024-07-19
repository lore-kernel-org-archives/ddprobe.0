Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF256A33B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721426154; cv=none; b=Q6tiT2VJcNMagpwtEHwEc/5v/K6tdi+WdTmBYUveZ17RCMWAWd5fMmjDqySVhvcGm7JvTL1O77rWF4Ih1yv/Jc14uDfwqHS6BvahRQKiSgpNBq8VY27lkYeh5lj9QDGtTpiO3R88ad0OmWNEuNruXYDLWVTLwP5dTOwILBJRSoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721426154; c=relaxed/simple;
	bh=AwFZxzBKd6sW+MVtVoXqqtdFccMr4poLaTNKWs4N/OY=;
	h=To:Subject:From:Message-Id:Date; b=tYl9Qh+tqWVP5b0pxUDmAgffumth0iuTeGF4wJ5XwffTKXGtpiZTklnbFG8fcrQPmhIdtWMPJdfXJEkOq8FiKMYBKijS6z3DxmOSHRtU3PFW+EmY1LL8Rxc+XFrwIUqmIaXd2i2Hb1UAImX34nUGK84WmJcyxlDcJQJY8hcr2xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR9cKROI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR9cKROI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9905C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721426153;
	bh=AwFZxzBKd6sW+MVtVoXqqtdFccMr4poLaTNKWs4N/OY=;
	h=To:Subject:From:Date:From;
	b=WR9cKROIeShsGFLWLXnqAvVEFtC9uSqcHf6BDdvYLzx/pUNaQavKAdKCpHalolWru
	 Kym/GecmfBjNiNNhJdA9E0QNk3ZxLpeg322JVJ3qQdHatgZTFWlfD651QkVA48Np/i
	 /lP2IkQxVkjTsAKYE1Mt3xMiJmqrOUKeKodjsPGp46FDvvrM9mmO7dy0xqu/ScNJqS
	 jB4Bj1upqs6Ik26ZJs3DVxN53SYE5Oo7E6DTP5BKH3JJ3vhnTAnJfKAKGQtbqMCf7T
	 VeJsDuwbe6zeMKSoWA3nRAWSFC5110FT0F1tqYaHkLknTIqF2DH5sacncZ9vB6NBkj
	 YEqNo8LGol7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9338C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142615361.18975.3556013542523145669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d89bac33ae69ee9915d8467bfa7c0a99c7fd98c0165ae5c604127576bb0bba7
Date: Fri, 19 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721426153
