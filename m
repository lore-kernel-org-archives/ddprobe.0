Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E17233CD1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718468903; cv=none; b=VzF+AgAHeSkxXsZxXh3u7SCNWSUBSALoFKfP3LqQ/QR65egKYxe5yPC4IVckARawivsmsO6FOiYR8z2nhdZloSRlN1dR60n/a86LyGU2jTJmdyCYHJFm/uvCPpxuXQMUb8FeZuNhR5+dBEsTfvotIj4pFE1II2jgH15RqQZYc3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718468903; c=relaxed/simple;
	bh=ezWRNIoy2hNLP7C116EUcftE6e3HYr4x7bBExkTiQAM=;
	h=To:Subject:From:Message-Id:Date; b=ACHRX80CaHMz9MYEhijsx57X+S/6zbSoW+mVHQHvraRyW9mb3ki+KDc9IDKlgn0V19AtXaDDzwldpYCA5uwVzw9WrEcONyIZWyCw5uKFJwcTKSGVi3UIW+5Kth+qrTyXl/YFbXTCWGfW/l7L01xdv8hVSNL+DmTzmP32Y1k7fAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6rRRCy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6rRRCy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63FEC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718468902;
	bh=ezWRNIoy2hNLP7C116EUcftE6e3HYr4x7bBExkTiQAM=;
	h=To:Subject:From:Date:From;
	b=K6rRRCy1YFCjNH5oBK1IynM51HnGQVoH43rcS0F8vxfRjY2vKTJK20tEtlq5EMVpU
	 a/cTahdcYOUND+v49tnfzawpniCjZ2WhJB+4pQgFujkxabfjo6bvksXcrO+mB6BmQa
	 aq8XKBoL4j0jHwqM8uSiHe+/GV+ENIoBW4KdBesScHg3E3OelQaCiKpmartmyOMuzk
	 z2HEH9Rzn+rGDqApY3WlSTxiPLkZhlBUzGq6Tk9eDk7qNVvC8cbuAehPnAelUwkqLx
	 VWrSHtIVAR+Y7FpcDVM7xjrPrFiDxAebFf2LY2tAJ+OlVkuAludYWwiK668Dp5y47K
	 HmItJn0ud5ivA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9EDC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846890281.27034.4933310660965365327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348155eb26f01f118d1b0ad03154fd707412dfdac76502c278fcc975b481e800
Date: Sat, 15 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718468902
