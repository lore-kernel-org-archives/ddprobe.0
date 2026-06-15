Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEF93033CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781497594; cv=none; b=H9KSYZgHQhxAKgvpeQpUmxElKFheqe5NipGgxpMtfbbHFeR3b6pPd4JsGu9IFUwlJ4SNtJgprRJ3oeK84uad0+MEf432GYUlIU8U/05Z91pPPdgSoP/9k61c5XqEXlWwHxLPkyAR4wCiTGSAdx12+BsPhzJ01LXK5T9FFsV2MAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781497594; c=relaxed/simple;
	bh=WNMR86uRQaQCLaESyqNIry0zc0ZFynwpymAfPdrcWbc=;
	h=To:Subject:From:Message-Id:Date; b=ErXK7vy3PrybRiLH+ffWZtxikQ2u9WP0iR9pRnymS3up2jKmV3jEuvx/2R1nmxUfdDEqFmOIab6hTk4boz7ffFI04NzhI/FA5BZEm/AbMwVDaIjYuShs46ks7wlSM/TmKxbhH2xXs5r9AHKTHMp119SQGZ9gAjNIQ9g69Ohl2jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWA2bY0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWA2bY0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0959C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781497593;
	bh=WNMR86uRQaQCLaESyqNIry0zc0ZFynwpymAfPdrcWbc=;
	h=To:Subject:From:Date:From;
	b=VWA2bY0Wgx4khuAfGI9nCei6AxWdzTvunKxWlUDYpPodNdK/eX5pNUENMMHyBxIXn
	 ZR+lhvGXuafn/BkRl/2BSG7MeNvoA6Z/2xQDaLw2lrCGPfMzrAZ9pTmJHU2T2KaG93
	 36HXbl9cTvlZRXHoOMj1wuOHT1cYSx0QN2Rqq9KXHELpFebMMoHqQWH16tuXD1qR3c
	 UsHJ4GYTNtfgnEqMl2lOor3kFwPhuFsMOsIGH0h0wyo8u76UqWMeJR+0lTlhOHg02D
	 345qpBPgXDh5I3KY2zOpRP0cjUVOl2X/+2UvpX6Rn8tgiuFf6+ZYPTX6p4sUtRKK1Y
	 CNWKbrcUUay+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4730CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149759371.15971.16608278433605687546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e825b3dee69052ec701a51dfc1933484c8de14a210c36dfd3e7c2bc6455ecd
Date: Mon, 15 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781497593
