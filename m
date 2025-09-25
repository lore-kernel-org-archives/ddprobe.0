Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BB82E7186
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758785994; cv=none; b=CuVHzklpGKdcB0NSN38fNzSL+3bZi9DJ3nU1kNmcHlKwwlmdOmkc48hMzLSRfkoriQ64MxylgkE5yc8L9yFIPfde3O62J3SsyChFcGijaJnZ7oyh7ezLtTCYcaj/KHagfvrfQXGNjlAzmTCOKcgsdh89vZ8K0kpvphk6VeFriEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758785994; c=relaxed/simple;
	bh=SDOWhX8ccOSYsPsqEMH4bRL56q9lyig7dnOlaC4OXmY=;
	h=To:Subject:From:Message-Id:Date; b=XjdQTJiyMERuGVqIJ8m+EsyISLdkD1ecQF1qJtrCV8/E1C8KXghPzhFaAQ89SBIz0HG57VVTIp44J3W9TmbJCvUwcXZu+p9LfyqsD5f5lX2FfrtQCcYquyE0n25RK58SHLsu5VBZU8avn2+KhzLUsGZtrcRaQxpKA8zfor5msrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiLlZV/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiLlZV/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C4BC116D0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758785993;
	bh=SDOWhX8ccOSYsPsqEMH4bRL56q9lyig7dnOlaC4OXmY=;
	h=To:Subject:From:Date:From;
	b=NiLlZV/7RjFtPQeRTO10CWF3F1V7BX4kk6BjuxdkOI20BNezPPOWRxgbN8SviDCyB
	 3mgMneISkmIqd1ybe3sFHdpAQUA5I7glGGFjdxJ7nKfD17UMbmi0YIULtSuwcs2CEg
	 kD4evpXF5O4gqPXCaIAVl0AtyHykyBqZ58hwxICsUSgAbOJmPrYHIMIXGPhqyjukFH
	 DWvcxlOaDHM7n8/FGAaeq2L2EXLJ3vq+LzGnVEk0QEZmvrnktjxk1az0hixfdl7sAy
	 rUiBw2GwYuFwDEjcPxOzLiktcVIJMwuEDxGemxuIJfKJhj9pZOLaXR4AWObs4yJYuS
	 2f5ihJUI4PN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B3CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878599360.32403.16811716563111791995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fda55401d7f71a3a4b0ec84a5b3ec8ea38b6c774e51370795ab441b799b315
Date: Thu, 25 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758785993
