Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DBC2C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743535194; cv=none; b=WDxhG5KWiSFxg1EKoPbySvdI0+7eflr9yF1ju+X0nfIwMUxiLBMmLQUV6dZ5M5q4sxGAkRnSplJDREF4rfXoTfceu9AXiunZz7i8OLf2mGldWJLQ+oBKgKyZjfl/SzeBlqJPktuqCOLBBGP0fa/qnBphaMRT5D4PT4ndB5aOH/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743535194; c=relaxed/simple;
	bh=L0S68VBMoH+hp0HQQPhpQyoZBVf/+EHcriekwXh37gg=;
	h=To:Subject:From:Message-Id:Date; b=AuE5ruc1EayE4wzJTW0XwVCNK9r4otUPdD9TdrgZWv9VupDE+NbN7a0Ku74EIAGIFkJosZpaJYG6z4VX5/Q9Kwwh29lJ+yZ9pb2yLr1irmcCavY+N9+rT8G38vLJx0KzJQGgRicfI9AxceRO7WcizSFBttJbFggq2OjYtPV0Eic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUxR0Eho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUxR0Eho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1066C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743535193;
	bh=L0S68VBMoH+hp0HQQPhpQyoZBVf/+EHcriekwXh37gg=;
	h=To:Subject:From:Date:From;
	b=uUxR0EhoAhGxEbAsdHtHqdT2bgUQ/cSXE1AQAJLggcdBLDhOsX2W1OyQd/xm0HU0u
	 VQbbHz0ZZH9AlpI4qoHYSf3bXRU2bl26SjMx0DVXc5vlOWrtqriqpp1mRLRtCrMs0a
	 yHGljZ//Zx/lP2Ys44QczCZFnKQ0bUsXDaAHLWBjyu1xonIAVy5pwCZ5M1sd3oDBzo
	 Rj4pC5oNxwTmD7dtv8YeOtv1X/saUac1u/w4KXenr7532YK9QaHrWiSKo7F29jfsYM
	 7rY/e1t7g6nDW/eYGFIj5sug3F8WY5T9VkloYQPVQRxO37qx8MwBvUzrBO9zS9YjP6
	 S2uTTD4lMc3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98098C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353519361.25652.1782649975973119672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0496d295778476277afc577564a775d680ed006824bfca41471916c180210112
Date: Tue, 01 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743535193
