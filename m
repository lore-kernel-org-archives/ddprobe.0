Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC418156C6D
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712703496; cv=none; b=TrPbGn25wkxByq+yQqm/kZpJf5Ue99tTS6OAtDr4CRpilaJ5MT3kambd2Rb/9xLAB4qg3/KG6cqUz6sAgrnGeToEsJ7jl3m/Sa4pVnpN425CwCuDYRkw85g2ByRoaaBEuYYsczP8CuHyd0mYSAWRfG990jI2tVTzMIYnE2W8RNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712703496; c=relaxed/simple;
	bh=DjooLvhZR0V8ss8p1OSxtAtdzi7tId7Pd7Lv0muXWzU=;
	h=To:Subject:From:Message-Id:Date; b=TzcHyeKFKqSndUXA52i+2llasDUt+KdWlbB6Q0nbmAN4c/YEEiuCda1s9NPD0Dg10SF9eQCiEnhQ7W3fJTEaJ0i3D47WGTihUFThYL7KUXg2IkwBWGYsdQOWOgEdGFD5oJf0Z7FHAftxTnwKnUvubWkL7DBKl3BwhzhsfQjB2lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSyJEGfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSyJEGfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A83CC43390
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712703496;
	bh=DjooLvhZR0V8ss8p1OSxtAtdzi7tId7Pd7Lv0muXWzU=;
	h=To:Subject:From:Date:From;
	b=OSyJEGfwNv7799R9ncrN83zDqIXCdyj+OJWb88i0hHoy4p226prLCk/Q9nJPGwhIv
	 OT5JAyP41JR/mtqGX6vYF7LyDoE3a81C2TvO1zwOgjryq8PUr9cB05Pc4UkFzWht5j
	 6L41QbVVZj8cNza/dgWJg103NN57f31QeavMo9FLVgzyZfo05Y9w554R+vkLGVcEXs
	 cwLNfJqOUVJ5nhXVQEfbK6I7K/Io70JQL4jry1IuMLPzNmWsuCehtA+Y6U/dn3vWOM
	 gsyf3ZYbg7xDf7ofcrtZRwTDU8I2lZKNdRq+otpSOeina3f2K8TDXXhAtAjqE2CWiH
	 uCaeMGCqDgngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D697C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270349637.31510.16926261704619917997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f94744d19b8e4543e9f1410d8f19a669275ccee21830813fa834ae756ea1af
Date: Tue, 09 Apr 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712703496
