Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE654423EAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786693834; cv=none; b=jLeYLqwrfzf2FmiJZudvV8svB/9SUAqG2WMtG5vmoYsqebchi5Mt6z7tqzypE96cOF4gad3DpLafxbMNuhGGBGRZrz72+/uLOR1+kpopbjzbfg7VotMSvjtHzqo4AkTmwS6vFZ9B4qx28ZhsBKlGKoaSPl2CjkHJizQ53YMJSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786693834; c=relaxed/simple;
	bh=HyTTV5sZEYrz3FSGrYZh3bibtg6I1DlX1zYRFETmXnU=;
	h=To:Subject:From:Message-Id:Date; b=LRtA5TtQXpZggRrbl0hiZBYzNd+8wYJ2aDI0wWwGqN4R0Z/65gXWTnL2wxocUizBq1NbpLXDZ83nbE+e8VIUm57AyGx0gAu1a6uUR3L/k3O7lioqfWaubMr4cS/1URnW1u0w6uqykbWcKEupmp2G/Lrq+N3salOyyCybIK2ZRuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub3Q+4Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub3Q+4Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A5FC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786693833;
	bh=HyTTV5sZEYrz3FSGrYZh3bibtg6I1DlX1zYRFETmXnU=;
	h=To:Subject:From:Date:From;
	b=Ub3Q+4XaZyS8+D8J6hjPiT+nS2b2Au691RZOuszhhTTJqruU9LmIHmMiBzvNVVmSS
	 qRVUQihudupaZum4L00+5CjzUGXkhTetjBLmDY5oDv0gpZiVsioMHaO+K0Z7G06+lv
	 83GCqqDT9AO48aISsxLiZMmTGTPKwJeAgKiUiJGulS1PYwXRCuREKggyDavfX94bba
	 fSVe8Wwlu0Lyg9n50bh/gpTWulgUuszCvH5uQIfeisqynKt5dWz4EgAMUGSP3iuuJH
	 wKQRtB2+o4yS/DtHpnIpLSm/TnkpDea3sGZ+Ry38wIDdf4MubvOCCld/FPDY/qgwDl
	 8+G1LMJ9j5seQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8115C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669383367.20212.7949808493921107179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecd7db806e29cd45208241033b18be3b72d7e09e6250ecef8f8076fb0603e4f
Date: Fri, 14 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786693833
