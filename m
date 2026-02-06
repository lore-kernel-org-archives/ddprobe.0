Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE261309F1F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770380033; cv=none; b=LwZQTvk2EHgoE9uBNVyATYt07fkZekHOZQzVNY119h7nU3wS30ObzyRyXmw9H6sPgUT4KwOhahR1t3WT9HboBqlTcLiUyFMyGXTxTQdO/NsAfF1dmoPpDy2ufHSIGZKhsf6EZtxdbb5t0uKY4FWmaG/2l7VHDCycZcB2b7S+cYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770380033; c=relaxed/simple;
	bh=ms2FipKk+4AzYGmWLoQyIXQoOrHggceSUDU79e1YUqU=;
	h=To:Subject:From:Message-Id:Date; b=KhZmytXnKualKyG5B3sEBAG5lOL9vQvfjbqFW8QGCSjyMm4rOqIgG1w3fvYZzqP/KviGaX5ZZdk+dsLNhLW4MRDPSXky05LIoaywPiY/B6lEEaDxABTkjbB9LkwT2h531QazuuoJtkMPb47OeyiMIpViBlsQ5hmcfXrQJG8P3YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usZ99X5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usZ99X5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E38C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770380033;
	bh=ms2FipKk+4AzYGmWLoQyIXQoOrHggceSUDU79e1YUqU=;
	h=To:Subject:From:Date:From;
	b=usZ99X5cBCsCbgAcXGH6LBpsNMyei+zkio7Ddr9iRjXGp0YAR2ai8BRD54y+2vnOv
	 T3PvsHVZy4hUUclNeiQAyz2zRSyWUnD32yOeCYeP3HLbrLgDwsQpxj7YfCAtaiCRBN
	 FSoPninnVC3pSbnn27lmUIFuZoRvXYEdt+Ov0MR14HYveZk5/HmthGDm/VDScnLEik
	 O+26/Bi/3eULSed+YCJ418SreCaPA7NyO7rtMnvXOmdo5uyYFr4ZH13XIME+O9AWG+
	 HE07n/8d63bmczX1e6FKgUCkFUG5ENqtd9EernF+xnV8f51RpYlGNJrOYeN0OoQHWV
	 akKAaGoVHwwpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CE4EE2093
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038003366.20725.12419043108522177394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cef9e3929cdda5ca2f00ccf65cc1c0525af5f03352956b12826a2d9abaf9ca9
Date: Fri, 06 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770380033
