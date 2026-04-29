Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2293439DBC7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777445854; cv=none; b=IrtiloKhGNnblNTatqRvHTHGhRGxMuzyYNLpMmfHBBIp1lf9TKNHEDPBrrvgxTuUF1c8GpDzfETVAyLYRhgg+ELS+II3WFZWANtKNjII8j4aqaQbFpix+2gLHGlYrg4chtKlxhbSTfglo+JccC0b6pge7kxfpJKx4rB4cV1NB3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777445854; c=relaxed/simple;
	bh=pIRMZA5GyfG3drKSuHu7+97iy4fNQghKTNn17noAKRw=;
	h=To:Subject:From:Message-Id:Date; b=i3iUyaieb49XbkMNYFWglaHaIViWBmExGnHssmmHrtkfuxWH/zRF0oaclwOVOFFtdEROmall0BmvGvATWTu4wJx8cxWcIq5drlC1ratmBB+a526fHYHLnL2WzqP1v/cbevEqjo6BwDJ+vzdLZhN8VSewSSBkMX2UDnBcAT4OdbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JU96WGr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU96WGr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35ABC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777445853;
	bh=pIRMZA5GyfG3drKSuHu7+97iy4fNQghKTNn17noAKRw=;
	h=To:Subject:From:Date:From;
	b=JU96WGr9pKY8KMTZHFmTVFVz8jk4meH9YJZbbhWEphPYntNl7O1I9RxZfs8Mp1LGw
	 PNB7tfXyAEW12W+SYfh1WXRICw+kWc2OEsjDYZa1NMF2xKmJZSCWxUpmdwq8WepohI
	 T45qPPMuhLZ7OJwnuEHwe5hl1oFw7o8KK8wpJkz5yZo5AWoOj0Y6zuQAdJBa6yFQyi
	 uVTe3ylkI9pW/GX75Pdt6OK6m+cwOSDuDaoxTX9yUZvSZcmuUbwbiqgQSn2H0Rd8be
	 0S3UbxpGGwRjE9uY+spT5kYyQzdmS8LVatM4YeZ2ZIEKcAH0dZUVldiqEzGCApEmKd
	 H7rex3lHZy2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9637FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744585368.14999.12572989722183500001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667fafa7fc1625038e68cda7a60eb0310f1423b22f19c8db828ad3369222957c
Date: Wed, 29 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777445853
