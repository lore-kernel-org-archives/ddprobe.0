Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACF1EC2
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748047194; cv=none; b=a+HrrVWd3Ill53oZdlPPy9SCzhcACG5uKkxfb4+i7BXK2Lxbc+7J0eDZeOp2HxPQx3OWYT1GcbFomncI56IHY5mvlcXYq2teawy7VthM2MBVforDY6WOOLfU12GXk/rokvhMThjmhCRiSeKLx9B9aKrutwi71yDFPm+FaoEw3jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748047194; c=relaxed/simple;
	bh=St3lj3ArB74GWWQWAt19aquOY+fsISANzVipeDHeQ+k=;
	h=To:Subject:From:Message-Id:Date; b=lrGKhHFFuoCn/n9683cucmNkDNBVaLkb2hp9TuNqausmgEOyDPzrtILRJpGynyTrMWtSSfNC+RUg35/pA6NWpTTqK2J0EWR+GzeOMWRRgVjxfGgJLGAiXIqgiRiAzDJYHfupB9A4wdUJezXq5nhLXwcoA5VY3q8eVkccfVVdL6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sg2CpJMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sg2CpJMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B8CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748047193;
	bh=St3lj3ArB74GWWQWAt19aquOY+fsISANzVipeDHeQ+k=;
	h=To:Subject:From:Date:From;
	b=sg2CpJMdk0g6zSWaVEeCrYA7RTNpTubTSUlYfxdD1tQ0mFNndac7pfODrAHl9GHER
	 8OjYDNaXDLFkTCdJ5tIkW1MKAuE6aZkpZiNi8FZPseWtCf03umM6k/J49IzKpCkSBh
	 Kwy28kAcYmYYE0Zi3GE+K9C5YEgzLrrXz34tvPTB1j3MYmzzanMMXnuwYsxe5HGYA1
	 mizNn14RRLOeK2ETPJpWHgLsRTYCTW5E/IzZ/77j7jBbdxWRT4hQfTP4ql0FP/xeeI
	 r9krMJHZEbf0nRs740L+SCIyTETubzWCDTK2JVHnjvVR34GN5VIqpZ2Wu5QJb5TcXe
	 et33BhRQkmELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804719359.20404.10595351722356637660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f0e686b751e2570c58a7d2591cb608a99adc4e90fc081113f2457ed00ff2c1
Date: Sat, 24 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748047193
