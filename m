Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40778747F
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745731795; cv=none; b=kNPgsq80YC+vSeLhJOBp//IFlKIwyy+UiVVH+AybNaf80NaOUJu50Br89H8EZPZ420Odq6vOkGIPRDNk6WneTwK236gtUdWAs6BS6QT9zPrPA0bYneXe5MSNEijS4Cj8Pip6OEkiGTGikyc6HCmMXTRzdYidSqI87NBQaxhPiFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745731795; c=relaxed/simple;
	bh=KYI1HtPrtYHWevD3V4uOT8mQzQNfj30+F525TN80/9U=;
	h=To:Subject:From:Message-Id:Date; b=g+Cis+w1y7yOvDWYSvjZhJa4xcbxNTVUD2cCp6WOyL7D0R0wJwLs9VTE2F/Id35xtbPZOhctITegG1qZk6xV/h8tROP0QVbUUIzhq+GLgflgPsifZUZm4Kqm8SlrhFNtCLrokkKLnRNiM06YJ69xQkWQv0QGA3X4Y9A6ye4tRJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BD4XMFGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BD4XMFGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2310C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745731793;
	bh=KYI1HtPrtYHWevD3V4uOT8mQzQNfj30+F525TN80/9U=;
	h=To:Subject:From:Date:From;
	b=BD4XMFGgacoSFq8IrEhWXi5LsW6/B2gGcQhQuRQHdT0C0uQtaYAos+wKqLtoZ9AvA
	 +LQlU+r6BDAlT3utGWLEnPkZqd3gMAXNeQ8JQVRa0SSa13MGNe0xombSmglwCWvojI
	 D+Mbx4z9ZPnynAYs51XBieFlPjA8ysm0fiS/f0MJ/EyVM4dFmmbWdprD+507hgJf19
	 7O2QiSy2IsBf1gQqC4uIieqTu5UOnLW+935R8Tv6OlUieCeDpxz6k4C7Aamk5xFKrE
	 c+wxC4wMhW2kZ94XF3IMW0n4C4XeTn7pEo6nEDSHpMn3LteJxT47S516nTTaJVXJ8D
	 JD5BeBirkkt0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46DC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573179357.5223.15404277028300352171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9299328b2c488eb7df353eabb273f149e5d1860d540cac8f2a495921a902a80e
Date: Sun, 27 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745731793
