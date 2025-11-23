Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE67F18B0A
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763864514; cv=none; b=CQt/XnclkPbJw3hseqZ/hl0UQ4lgFSIL8IaNLi86GMR3sTJK4hZLfrYRZ2AQY1ZIBeKivbOWgHbEMMgL7R/PaKHYTrU5C3ACN1iGTvOt61PWfHGJVDM8kweKk+cvuvsWi1+goF1nH4FWjWPwdaF17e67P87oxcvdIJMj91Lxqko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763864514; c=relaxed/simple;
	bh=zG/V2vcRBtO8dh63VMoy2eRhWjjcTMupH2BPOmLk5MM=;
	h=To:Subject:From:Message-Id:Date; b=Fz14k9Y0q3/W5WChYqTMd2YCgH9Zk+gzVqcLetalreaZdojBOtt+xe6+DGtCV2fM9H2JaiMhWZOyz4f2QKpHffpMfyBQmCOF+0gblmYCqakw8hzYq7+hvztAm8mNfnFPGxGriBv8AQgq1QPeSv6LCCMDeTgct50j86KVryADRHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxEeCUgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxEeCUgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96FDC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763864513;
	bh=zG/V2vcRBtO8dh63VMoy2eRhWjjcTMupH2BPOmLk5MM=;
	h=To:Subject:From:Date:From;
	b=CxEeCUgvF1oNdYeGuFY7ORIqwopSwF76eQRJ7c55FF/bXth4qjcFGtSsPPINmaI65
	 dvQsqU5sq99yg+huEkYQc1xciTikhTgIbwOWOWe0Plk1CaE/77ZCYYFJ7ozU4QI/DL
	 mp9yClxGUwpM3HCBfZayd1WEhXlIxx6FsYSi6S7Yp2O62/DdafFQ0Q0Pcx64LgT2uV
	 6jlgTeyuJxHqpcO741FqH/LEhBfy2CNiN5tg7QBQy4y1yl60V4K1/oe1KfhV4QdoFr
	 WtrSTrTtQEsreaVWq0j72la8SUkA79J9IRnUeUd/VSJ+6UbRofZwtb2+R3P20dPNZN
	 RewCCxeGiqNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94649CFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386451358.27379.15771795734060259071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780e31c9404d2a65658d19b4f4921bfc46e9abc023d9a8172410a4b029622f13
Date: Sun, 23 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763864513
