Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF6A32F76D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778194054; cv=none; b=jzaReElDqZgsPVtQdLgJn2jucYVfMR0QYYPkDyY/MXenmz0+l16aajK7ibghPAmwrld1QHWmiB8RehyE150qSJ8jmjRaJGlbwx5yXioQhBh711fwyh0OgPlk3Dmw6MgXq095IniXZaR9QxU9o/bNRtqMi+kOdJEZX49+m/PeTSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778194054; c=relaxed/simple;
	bh=+eipfVih+57YPm10zz7i8BZTydP1PppWmeCKoZDqWmk=;
	h=To:Subject:From:Message-Id:Date; b=mc9G0P/8AgO6UsaNlxz/C6aB1eyf5Wec3/vY/65RSOSw54pCUp7tXHHIidJ9qAunSjAXU7HbhS7OjCOqyso5lvPMWN0S8oiPd0m5BG8Y++DKCQLBzNmLcSFcTkl9StUb6FHEwQdmjovFWhEiYd1O6hdDELKpwMT6vWIySqdo6+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmOmxUu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmOmxUu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5752C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778194053;
	bh=+eipfVih+57YPm10zz7i8BZTydP1PppWmeCKoZDqWmk=;
	h=To:Subject:From:Date:From;
	b=DmOmxUu9CAVElhhYdIwNwoaGebp1CY4qsOiX/egdRhYYZIqdKdHmc5BtTMOcGYZe3
	 4lUz+V9Xx3o8upc6jcEZyxPDGftDTV/XpWRw8o6gsczWPNVIealuPp6VMZ+D5YZSAf
	 0NqKNoXwt9lIT0ON3tLVlwSFX9pDvN0f/ejh3hBtytD95kHgbg2Nf9xO/lSndQrhUI
	 mvISD7bArFAQ1Hag2wx3v7B8ambwKywb5uau6YSMOmxjkwzULLRnB/J4BkxOZktLE8
	 QGJ1oQDrVYXIHafPDH1LmbRd06BjScEYnshp8Jk1gnLSQNjt9OZxEnoyEH0tbSAy6+
	 IJpbksUTA3LEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCDACD37A7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819405369.26267.9751478867721872696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a1b883189c757c415b89edb43430b0bf4088e12e481f76fe53edf1a91dab5c
Date: Thu, 07 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778194053
