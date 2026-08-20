Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABAA3E9C2F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787228434; cv=none; b=pEnA97t5OtqgbCVZoKLsnssnLdnMyK1nw3V8qXpHqn8dhnW/pZemGBwRCQjoC1VuhDEZXI2k7dcTc1KRPFbj8Vlfp7nKTYTYtuS/w4kCHkADG633jkB2hud5FIBGL65oEGYc4zIDD4Aizg8ccBi99Y+DwM++h6Vj+wN51Y3SMQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787228434; c=relaxed/simple;
	bh=FWK8NM63mqJgZ72VDxP+EVFGoPz/RAYKwOYyPQ4CJUc=;
	h=To:Subject:From:Message-Id:Date; b=Boqpl+cDJqx1qy6G21lrlQETIhmOXdEEujKEi3agibGHcSaPem1apOM627MXVhCEQgUyzUdywNG31EYwoFzy/9uFO3mqEqiU+WgBJgz5vohCV3joTNjsEZ2kDGtgNsTa1ManyjFj3wCzI+CA6W+AzViYPwI3SuxS31o8gVO30Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0osESJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0osESJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41C6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787228433;
	bh=FWK8NM63mqJgZ72VDxP+EVFGoPz/RAYKwOYyPQ4CJUc=;
	h=To:Subject:From:Date:From;
	b=t0osESJ1mQ/kdd3lWx6f7hX1ui257KpDCCOtSdM1uk/XykTzh8/nWgRM9uCXR6w6x
	 payd9OqLHTGi7BTFHCGM3xXSoYJyAEHzGsWML9N8KWEUHaJI4XIZAQc0UNVNDu/hH+
	 9C7Dlfynw+6FSP0aZ7jCjhMb7UcQ/LRnA6s86EkHMLjYXY3ZxrYfHuX9bBh+bT0aDa
	 NOYMsp1QsSba8RKudxQelzic2r5fXw4IFedsHAyQLdjze0BQvMNHBXW/oqOicqzVNC
	 lVhAd/Rga6PsefmXkqowFVhuAAdJpiY3jqdB/+Z7xXg05gaIkHYROzrt0Ps8aVi4N2
	 QOr6V78UkggBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7B9C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722843370.4266.11590513539890548294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf4af8cb9dd92edd5307946d8aa7c4125a4b18c969dc898d8763b92f957ecec
Date: Thu, 20 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787228433
