Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0052D9787
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780255474; cv=none; b=sODCn789smGEA8ZInZrOV9Gr1gUGdndgdsoQYl3YQGj45yZfg6ZLv4Xo6jQC3eyiiVBLxEn184p3yIo9mHiY0AaC6rfVq0iGQw7jPjT+JmymDeaZXbPgp04O9ZB8QosTU0w79s6GFn0O6P3CWNkaQDPkHrCXSp3tBaH1KAXrBRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780255474; c=relaxed/simple;
	bh=teZ1ZDNONNm3Lz/Wv378ajzIqdFmNdDG0/lt3HRhppE=;
	h=To:Subject:From:Message-Id:Date; b=l8/pom9owIpEZwndzQEe4YPEim4JtEwBr23dNhk2OR3qhBERITrQLnuFlFLt6huYFKQZLGyNkbgT9ZSSha+rhXSXUpH4E3Ak07dZSv4QX/x6dplKP14DxhOtj6omZwKQXOf4Y8VafGFY6tYS1YPM963wzeRncsCiMDFstYwNfEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m93AXAFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m93AXAFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4A3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780255473;
	bh=teZ1ZDNONNm3Lz/Wv378ajzIqdFmNdDG0/lt3HRhppE=;
	h=To:Subject:From:Date:From;
	b=m93AXAFDnoOPwO9a1IqQcb0XtmF9CR1fCvgF7lV4AqWBkUA34GnsWM+yruxp6S5Gk
	 5kjUKkFo+XZd/+RMYkidrDADrTC1Gq74AMZ3jrhUyGNkxeBg85oReDmanP9I0F3OXU
	 PFLXNFcImRUB8kjGEpfbo2vz/gfZGXldAKA/P9u8iJMPnckMkb53iyiu+Y5S5ao37z
	 L6GcCCSqzF3Dm4x+0Wpo4p5IOsJ9PjVazDAYMDCXW8FSUGR2+BYN1GTHnT8+9Kz1zb
	 KQ9IYs1bzJqZWWW7MC2yi8NoJlVENT7ayHDwpKsMVcSjZcxwlH3fDXG7Rq8ohkQV7R
	 aQbvlv3YiK81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB764CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025547369.30907.12764757998597325684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa891b050ae5788eaea22ce98a9ca9b817ef5fb86202fbfef14021482449326
Date: Sun, 31 May 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780255473
