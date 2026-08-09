Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5701A21FF2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786280434; cv=none; b=dGFa844ZCWFg7nGsq1GSarhd9QNURV/Elwz7wS9dtSj39ggGwHQUnUZT4gCA5noPOJqgSNS32QFMFJd3VB67DpOmybX29akufUSngXisIURIijWXApRV0KY1KxknWD95RZ+Y/uk7DmDd2OjfAujJnauzPlSC8HZCYhaiVlyto0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786280434; c=relaxed/simple;
	bh=vyJzAwr0KfBQSiLIkGMsyj4XZzzWrZhc+psJo3nfDjM=;
	h=To:Subject:From:Message-Id:Date; b=PKr9fcUPGisS6KXXcF4wHnsiHh2a6BQ8Y5wI3dgb+JEmflbrPBcj5i+4pGF0YfwkiEP9UaXBCg2wgRF29IEootPlJSFGuMZ2/LOXlWUCo8+0W6ixPnbtL9zZ/N6mN4xROVbSGfLQpqWEGpYr67luYJgxSDS1L774Qn5hrBwnLHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHAfu5B0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHAfu5B0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB622C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786280433;
	bh=vyJzAwr0KfBQSiLIkGMsyj4XZzzWrZhc+psJo3nfDjM=;
	h=To:Subject:From:Date:From;
	b=XHAfu5B09iH/oMDrz2OJPjP0UsId1M+Uh9poIGfNyvhFnWbrDnd+9dPu30mGSNhrh
	 xB15xug7vSM4FH3SwEKg2Cme1i8o8lQsOwuYoEBT6X8oOSVC2N4Erad5IJI0vf8lv6
	 DcZuv9jW3M5vsVJ58wVx3f9bdgnnb1fM7+dyttKIAg9JdTeO1co724P+L6IHdei7dd
	 dAv7pgyCH3a+Ea+D/QLl8s74hAw5S/G124ayuJMXO4gzkrJRDnDelrRaq2gd0pWJoV
	 yNZ/i78MBgxlR74CQQ+p12gEOBAVO5MbIFG97yPbWJeRXXmR5pj50nzWYhAgBL9ZD5
	 aIY/+kfKzP/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7879C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628043371.32335.7914363766288359642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a4afcba9a7991b0504ac135fc3d2a7918fad91a1f0458da77cb005dfe27cb6
Date: Sun, 09 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786280433
