Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FA82FE07D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770759233; cv=none; b=m1ej4rI6aXjLq1BrKgGWxIEH0fESOWk1uaGdcqudCeHOXwpD3iO82zN96RpMchZLKUj0flObQWIb6fOttSYbKZLkJL6QvcP6Fvuyynl+Cda5O8b3dxMZ5aE7jWIQPusxBJouk8Rf3fpnUDoNxtzvSxpUcoSXFU5fLK6ElXd8SzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770759233; c=relaxed/simple;
	bh=0IJ0als4iCNBu5pMaUDaprxCtWM20gjXJFoX+rG/ysA=;
	h=To:Subject:From:Message-Id:Date; b=IqxY2d1KiHrIhC7MT4jV1ucPg56qj+W0P4YssgiETWB+Dsq9oBEKqTb4ACsywe6o6NGIDXvhTYwivbdSz6XaABafOgkQ8ycYsKxRmnBblsLOjPGNQbeR9HcSxJocAwry7o7IpKAko5TUAwIB5Yue1pSuVxjsuaoRF6ZrG/ZuvHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNtNpB2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNtNpB2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBBCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770759233;
	bh=0IJ0als4iCNBu5pMaUDaprxCtWM20gjXJFoX+rG/ysA=;
	h=To:Subject:From:Date:From;
	b=nNtNpB2FkRbiqVzjq3axSirF/t1sEWhFVV7D7jFR4pg11uXGydRdkRFm9ZR7noPQ4
	 HwLpwO7KSZnyE2UPty1q4UxfgHkkqJ76+f9XkrA+oSkdzORFtMSnCDkkqtIqrFobUd
	 qqrfu63s2xIMo4IM8c28QD2LlOM4qbgVoD+CcVG4k6pN/GdjVbshZt1bwHMRShCq2X
	 rRKqModBHtpdn0JhqNi/Bkqkr79SoSam+X7SUOt5A5cLCkEHp4BFNdhv7zIa4L3KlT
	 8jhaBjUsyetuxs1n33iwocm5mZdPij0vbo/dMIEaE5UnUnut4F5Wsj605NLT2SJRTi
	 Fpb8fv+shujhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6EEEB271A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075923361.27916.10933690699018984530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20d3fa8230be7eb34340968115b47d6d5ade95017c462ce57b95cf035b5e022
Date: Tue, 10 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770759233
