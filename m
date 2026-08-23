Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590FF1A681C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787451034; cv=none; b=ogbYMftTLdbybadZ/nXmKezaBGUW0wB15lBTUE0ttNv1sWmi0Gj/HXGrjujic2U1qiAJAZZkVjQRqIGVrACd+titXtf00c7bT3I8hIYo2gY+O6G1/kWBxRLnPLyJJnt1BhuU1TkYtilTmpWvNO9D8jaCW5qnHcgwG9jpKa8/lT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787451034; c=relaxed/simple;
	bh=w3qaY9RAtXzHb+KnIbq6oriWtNC6+8TWEDazvixMn74=;
	h=To:Subject:From:Message-Id:Date; b=EmSG3dURPihhxYHtxdDPUZkE/BT1emJSMwZi4djuYTvcWAeXSAG5p6fbQOi3frAWQym/uqAoVkYb2esJKR1zNqcPAARia6OOdFaRdzGBK1qWZD7geOtvgHk0hmB9NRZqDHFHdv7WD2XgUUDTyfAk/42FVmgqPjZwPNHfM0Th+xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlobFuqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlobFuqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0334C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787451033;
	bh=w3qaY9RAtXzHb+KnIbq6oriWtNC6+8TWEDazvixMn74=;
	h=To:Subject:From:Date:From;
	b=JlobFuqzZBCw6rciiS3rRgpzsD7uSnFItjkLtnXxEKSRrkmi6EW9x0a5pbsvaYAha
	 NzBgAZnrqlt+rV5PYQrF5NBkQRIb/WYPPcUhYRDGS4tVeWohu/zZ8LtxxIHehZHi5u
	 P0WVWL/aRSqpFYaLYhA0vofDbWukKPPWouzstTL44FcZ/C+x6br7RivrjiJ8RDSOOM
	 IshiEauGw3EQVsT/eJeKlq0WftOZIyIY7AOy03Z+NLoA573scq3wa/1h+YisTKFg6p
	 uSYUwnQjDvhD7Z+My0tRbFKTKeWr/O0N17TKu0N0ls6iWsQVvXzYHBWhtldAUBrdKo
	 EOWcpB2I8H7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B751EC5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745103372.15748.17998158171994451414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7c4498dd089be2fbdb525f5135f181e502095eebfb0749dd59b3c94495f309
Date: Sun, 23 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787451033
