Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6B826D4C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771814694; cv=none; b=niLBZAyuA/89TrnL0FDPVVPce9PQqos/NtRZqNEcnfvrhz4EvLw3v8rnEyOTXUk/ZaqKRcNgU1kFVFQ/QI56xeYPDUEdcPMWCCdF25MS0BS0J+/xp7wDK5cpeYDOZ9DeJjR9tezrfOCoeNKzhqQ1qS/xAmiv+tqfv7VU0IwAasg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771814694; c=relaxed/simple;
	bh=6DPml5vbIRT1/B36FuREan+Zz++UhIotyFac/HRbpDo=;
	h=To:Subject:From:Message-Id:Date; b=U+t0xYTfwGczblu+7jLV5OTVpAGpyOJ5N1Z0K2nr5YwV3t5WS55npvlTc0LI2IvCeW3fnkuT0K5zaQMYTO8gvVWgLOGc1dk9eLLHSflRYAtqkVsU7LAp6oKie0gfwWirxMIxGhqjjHGWZAXoZXC0ZsQ2hFR9KMX5e7COmJyZ/E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYIVZrw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYIVZrw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA994C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771814693;
	bh=6DPml5vbIRT1/B36FuREan+Zz++UhIotyFac/HRbpDo=;
	h=To:Subject:From:Date:From;
	b=NYIVZrw0KgD4AYd1Are+97vcSjnj1Ffz2Ep8ag43m6aRCoJ6DhLcdkhOZqxmZMX7W
	 w9iu3HVJuqNxdQJGdj5fls/kpvYLo/3W3WslDJZvguFrosM0HMplcssfJyFzTPa1Tv
	 1NiAiaMoYrrSNdupyf58GK6kNM6YPLbbCodIXWdGet9Eb/tFmidlEBJ4w6pB6VduXO
	 qNCooRfAcro29cPOFx1RPDci674XtfivDbyzlSIPfZtSuo6o/D+spPtDY1yQXV8Z82
	 UQoydBo98SrJG4N4eH7Ig2KLF5j8G0npPMXeTYza/70jJHGpAA95qThMEwQUOqQWxs
	 hqhia99ZfF4aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97050E8384D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181469359.28143.16957296215734421927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6251fe16dfb850f2f105129d192d2dc85637e230440abd826fa0f56aa1b41579
Date: Mon, 23 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771814693
