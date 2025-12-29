Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245612FAC12
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767031434; cv=none; b=DQTXR+fOqTqM6NuUGsmwCQ9LejZxxffkZ036sgm6ASk3CVREAnwi9f00hXugYU00L+vtTXZsoMQSY/f4cdoEIHFxICVJ/+z044cIGtWGEEfwYKz1uvP4RMhCHM6elk5WY3iNiJAf92nOw/019bqHi3726gRd1fCbx0TihDv+14o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767031434; c=relaxed/simple;
	bh=G/YTRESMb7myxS815J42guyd0QdxS1A1sQ6rhrP7yNA=;
	h=To:Subject:From:Message-Id:Date; b=bZvLROaIY9TSAOfq67T1M9hkm6Eb0MJKLSkL7DPnuKQBeM+pszxopVXEQ47IT0Jv1vyh6zLm2mPPtvgqu7uy9adAdHS2usbLXZ2kgsWrr72VaqntDAFjRIM5XCBJAS/wMiMde60DnOpLyFeNOrs1ieeVslOSruhzSldy7NeJljI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC61XKHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC61XKHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56DBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767031433;
	bh=G/YTRESMb7myxS815J42guyd0QdxS1A1sQ6rhrP7yNA=;
	h=To:Subject:From:Date:From;
	b=fC61XKHq/tAtnRf8oPLfn3x5FGX1sNoBcAc+DYE6zNNPD9BlWJQzqJPtg3EwTe1s1
	 pYWThSnor9pf2MvR9SOZAzYerOOPJJZ7mayIsUjbR8IqeMxxT5j+y9sVjxQLo/BBfY
	 wNPU4eVYV5tpjguCcbUmLF5kQa8SQOchjQfVivHjwq8rrC5ZCvDiuuQCuA/3TONIop
	 WkZoKlSq9VecP8brP6BJNxhG5S2ieJ8AhrD+1GdJILpidWzWCkrwxRveUxiZJ7v3hT
	 /bhTYZGMPPsLsNoFN82TiuMNbu2o/7z6ZA6sQtRpZXX5A9WrBlmeMlIgiAfooTGKD5
	 BEOUNnDgfKMNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95407E92FC4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703143360.6538.15323903660970637632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fa44837991cfe39c1baa7207a09db7b6ce5473400a6a1a3948582330f112cd
Date: Mon, 29 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767031433
