Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8152564
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715127743; cv=none; b=bdcWVkWfM2BgHruJkR6s7sUr88IPrIivgqV2d75vK12tUgklypbpOohTMtTp0qtabnz0yH4QoJaOUYAsgNOIg5AC9+ANDCmVGdY4ZojB1HkVPEvGwVPkahCnu7BbLIsN6yVXOqJQmDh5qXfoAcQtHVdR8+HGdnLy0LyMNWCk0AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715127743; c=relaxed/simple;
	bh=CL4AHgUzmTEOpHVONsTAyXWPnqZeY7pK/Znbm4hhaYo=;
	h=To:Subject:From:Message-Id:Date; b=grUyMG2rveSPHuoVowohqdjaxRck04UZYkGpRNVG+44vu9sMOE5oBHmfwR3vY8JtWL/oEhLAQawahWtC3b2AqOn9Jr8la1oESIz5nAPiYycCSv4w+mLQEqn+6BJIHE2RkTwyZdV4jA2oi/sqcJxbDMaYzqTWuE5arNJa0m5yYSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVYkXTAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVYkXTAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6E8C3277B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715127742;
	bh=CL4AHgUzmTEOpHVONsTAyXWPnqZeY7pK/Znbm4hhaYo=;
	h=To:Subject:From:Date:From;
	b=CVYkXTAKBWwrz1CpqOd0AVw8zhKDEE+4ubB8fuAwg1+vmGgopVAWnqTcJmCkP/31r
	 zdZWrL2zWF2X9b/GePgry+7t6u42qk72eWNifhls76E8vMN48nqRtUAXsVAku87KeP
	 QcfF1wYkx2pKaf9hgUvYa+gdPDwk5jAzJFMxJl6zryp1U6sA1eIwiTZi89pW1Ge4d/
	 bnPUkn75OD/J49dNKgkVhhlhmCxiLAINYdSOpk8v17OKloEs86EXggGTRSd2xQT9mI
	 H25rDUaZ/Y3+A8raL19SrLgH90DYyn3/WDhpGNc/uXvGQk+XyVRcQb+JWwimITXYNL
	 MUBRiWFLDUjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45E7C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171512774279.5879.6719694368870314587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06c996774e437ab3dbf35c1177c82657a8c8c5c2c8c87864935f9fca2602f4c
Date: Wed, 08 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715127742
