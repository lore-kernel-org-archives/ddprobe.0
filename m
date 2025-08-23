Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25DC78F2F
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755936593; cv=none; b=bt2qhE6Yd+cAe3gtiHb033ieMxo4Day8M5Yi/eKAkm9p+Ga9PQ1fyg69d3N2tF/IdaRHyfNJJnRFIGQ9KsJ+J5jcbWxiNAiWQg4cHTo1K9Qs8q09XrU7UP+rEy6gjzm0Zt75t+06OgnQDJfardi1tS7pJ9QFOHXoLEOCjMzSyzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755936593; c=relaxed/simple;
	bh=uiOsYdWkEk3TOXLGDijmPhFO2JDp9FNthfeeXxUvLw8=;
	h=To:Subject:From:Message-Id:Date; b=NKErHY5etxHREk7dxZCgJeht7WSa+XlETBRk5I3nxiuE6Ebnsh4WvnSqn8y3cpbMMjHBYQY7SR7lsqP6mLOhMf+fpV3y1rYu6z7Q3lrBOTMNsAtl35XjhssNvL8kG2R8cb/EkG5lHyIzmEdCx1kkFlsYWjQarcMF7GfDpZU/Ydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h54ExAsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h54ExAsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC4DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755936593;
	bh=uiOsYdWkEk3TOXLGDijmPhFO2JDp9FNthfeeXxUvLw8=;
	h=To:Subject:From:Date:From;
	b=h54ExAsQHvNPJbI5MQQKlGmxfi+pFRnemAlrdzZUB4EnIDkAtySvbL05tTcvTaLL1
	 YBZAeHjy8pzEHgo/ZeAowge+lfD1IoVh2sB6WoTMk159dQX2S65g0KqMKsTB5ox153
	 ZJY+2pBV7b2fCZTYPHnmn2wTDbySvQHDxl4DpsnSEixIh9aJZ7EBRylSb67k/wXboW
	 F61ODBFkp0XX03WV/h1Nu9ExVzBiVnagZIqCCmV28vgBAgBFR1vkMdq0rn+BhqGl7K
	 ZpUI1zvoFVZcUuv/ssQySNQasAygwGtGnVu6jy0Z36vb0r4rrHbjVKJYJUqJPVSzGB
	 oKhjeAeKj8g4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E381CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593659357.22038.2884320551678972750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f96da1a4eef3e03a96cdbae4f0000eaa690695814372e071b80ec6e214fd738
Date: Sat, 23 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755936593
