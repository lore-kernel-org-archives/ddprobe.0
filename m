Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E8F346E7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787074834; cv=none; b=k1TUk1wu2Uey+/2J6dSy3b7RLD3TDaOgMxIOUZyOnMug/uGtsyPyyVr/Y5r192AHRUPv2uTxfQpM+IaL/wpX/ir9rLScRO563gv0/f+ZyxowIKECVGuXePMnWQD4Nmdy2J2hzkMQ9dV29qn0ON6WVKq7Dup8qsCu3mLcePJiCEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787074834; c=relaxed/simple;
	bh=lHBdLxDQefY2mE78plnDZ29i2eKirX6JUzZ3pEy+7VA=;
	h=To:Subject:From:Message-Id:Date; b=rwNgtmarq2YxlC2e7/tDgnMEEihsIk+Z7f3hqSGSxN0FIVZWwCviRevg6xdOEkkBo37qfH4A/+90LNwXhkGKXtMubS7njkjlHgp3lWDKCxhydW1iIRF7pM8PAqv1H5Nkn+DlI+EBmA24mthncjEigWSmBC9g51y5Hm3dY0Cjem4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL59j5X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL59j5X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF68EC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787074833;
	bh=lHBdLxDQefY2mE78plnDZ29i2eKirX6JUzZ3pEy+7VA=;
	h=To:Subject:From:Date:From;
	b=QL59j5X9BJMOSAWfHkvDcsSMmzjfQ0aflkSnGfWaoe/Pg5jaN8oCXvCIoa6SHD9Wm
	 r1MI03cyJUXwK3VocAmt5v/xQTIU0KMAMXcKZrucmT3mMd3iW+214NTiHNYH19JxmL
	 NEJPe4pj2VpjP6luOXqyY8965t7DHG0PUK4p8tFRKcgZSIta+w0B6+UaPa3Ml/oOno
	 vn6k+Tqlhx47lQbba1reLtebnEeJxOW9j7EnmXuRZBRqmZvzrq/wmvj4FVD8Oag8ZI
	 BHhAq035oyitR9lzHipYRO+oC+oYHgX1ERJoljv4ABATz1xhR0Smt7/SDHxHbw2sUV
	 +/c0fMbIP4FQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F5AC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707483368.32550.10703662596331867683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97f05fee68c95e7136b73c80948a3d9b7aaaece04396b8990a9ce9c64fdb502
Date: Tue, 18 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787074833
