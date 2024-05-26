Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6052B2F46
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716758663; cv=none; b=dyYMXQ11D1D4AAzxzxq9fqVHwkBrxj8GfWjaEMe+8cloV0f3OR95kR1BCdlq8e31WOQQam851Yg2AgZJ2dE/4FemXMJS1xjCDONOZZHxzovtgBxFCn3or9OhTZ9KN3zsceVn1VbpQ6aHS1/sevR0F6OsaQlxu1v6JkP76fR0G3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716758663; c=relaxed/simple;
	bh=pxeaUV2yO+UCp5UilPJwRjFM5XKII5597XKgP9WENZs=;
	h=To:Subject:From:Message-Id:Date; b=WPDCQEa5nyxv/8aXLDLdn/OcTc9mvM6PtV16IAJsGhlMimPw8wRXYSfg3Pd+qj0E6v2yG1rNpwYcew1B+XVBaXBrqzf0qpuHU9TAe5ZPOa3ECrZp5gLAbMvzhOIzx7IwYksuonWuJ3lb9XWqgPDCwFR+XrnaAZhibDxUbCqxqBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh0YPsO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh0YPsO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EF1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716758662;
	bh=pxeaUV2yO+UCp5UilPJwRjFM5XKII5597XKgP9WENZs=;
	h=To:Subject:From:Date:From;
	b=kh0YPsO3oE3JXf5N/a+xK+Hxna+Xs1bBU7uCOXEIPZDpIoyNbEY0l7UrU58VJ3ZGo
	 Eb6Pb0jieR8BBtFX+KGcnfgbr3nDPZtVHLuwY7a1/AZll7ebNok9gnYTTrXZqsxkg0
	 l0G+s6LKz7B6g50HQvR3ANjzSZTAqSSVvyU0YTdFs75ivJP5IJQ6B5g8ioTS/xtken
	 ntNalg+Bor6Reyh3sOu+xwUTJj7alFmEyn1FuRhzhLQcotJ1QOSoeMOo5OfWKYLG+C
	 JFUPPuZZH83A8FGaQFFgRW8i0rKbXpM6QusM5mOQOvzs0znwif/kpE1fbM8NUqr5GR
	 8KD5s6Pi5rf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1261C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675866278.16447.13036453149095137735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8544fde88a286ef0c39b70425a46d801e79fe4977546c3f14f3f4285b57a6afd
Date: Sun, 26 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716758662
