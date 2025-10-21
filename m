Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AA242A9D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761036594; cv=none; b=cI5tNQb2pMIv6TvXS62cBvBHYIU91S/cvVyU32ZFscy4tSuPhRprWG0xJEemwzhwiofGDgtyyF3/vvRwTVVOrHAnLisUq0NA+qbk1sA9VAVr1HWLp4nHfqUKj2CcmjnjaZPm1UoHgqSkFZBPQsi8gDvGSsYmpHxSPi7mf+CxLkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761036594; c=relaxed/simple;
	bh=9MLut2hOo40ctEw8EL0FPeuyMY4P4GIaolNl7rTnxMQ=;
	h=To:Subject:From:Message-Id:Date; b=lOso+hvFZqNI6VP1ttERjFUiKGrzgQQ9tIbGQcXtM1+Wn67eTTodJ69bdXvAxkc1+x21Gtaj0pIIH3H8X6SZ4GfWPeiuRhygUJzYTxVumUn2vdCT6G+APApcFlVdwOl82fmbhiYDjc9OVHHKUXJj61xjg4JxU8iLlPFbIO/uHbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGeC6DJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGeC6DJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761036593;
	bh=9MLut2hOo40ctEw8EL0FPeuyMY4P4GIaolNl7rTnxMQ=;
	h=To:Subject:From:Date:From;
	b=lGeC6DJHK0zcyEneHoTmAf/sj2G0Y93ZSitfR/uIHj14jojo+zXgGhDSOC4bvKIlj
	 9OdlC2yll8ld8k58bEPEvXT/AN2GvNBLYOkVwbhr+TAMqDbg+NE6f+evbcgR39WRTw
	 npacgN9XTe6ofspPOtFNHjQ9nrK2ZDVPsCVaszhzdqcC9PGKt+KJmLje5wDC/QPD2A
	 +kJbWMuL0g3kkjHr2s1+xMN9orKEJsFt7Bki4wk4UCg0c8MuH2Uug9B+EDsL8fIpEH
	 Y8IW6Dm268RUnBpuPWk3tSGtST4ULrBDCuRnd7zU3beXrwN41lRDluUfgVXy0UKAhj
	 Kz2oZ1LA3oInA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F229CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103659357.10334.17320054085382874597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a98ca9099f8a5f5c7254e5d071073cbf3a879d30d8265365c4f7715379bb37
Date: Tue, 21 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761036593
