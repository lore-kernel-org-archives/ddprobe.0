Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB281531C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743193795; cv=none; b=S0SQrDUPzB7f6VvFpzbF0xM4VuKIUfc4wehKAi3AZQaapEh6cIFjAZggAvSYHT8rSPGIdYc9f8tsbPMigRafO6q9supw1261CV6Pp2jwwF0tu7hRa6f3/Fd8agYn9uw6hJPz2rBM1CvIOhXaVdJ0OAAPklwdKiGhWGNmPr5B7mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743193795; c=relaxed/simple;
	bh=d7qly8X+vEq4T5+8AwyUhBS2PpdpIS1lL5xhtWr3a9A=;
	h=To:Subject:From:Message-Id:Date; b=D3SlsIFBWpXIC45coZylesBvmKWVUvP1jf0hl6Ls7zILultqWjuhe8rg/B+kVpqwwo3VlIvVrpaBo1t8AbRFPpW3AU4aa1hVo1eIZWeDH0cPllSK3xmYkIV/4vijLadL3sP+0TzCOXx/mJib2oQ0kJrD62XXJOVcyofpVRH3oT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYB1cq8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYB1cq8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEF6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743193793;
	bh=d7qly8X+vEq4T5+8AwyUhBS2PpdpIS1lL5xhtWr3a9A=;
	h=To:Subject:From:Date:From;
	b=LYB1cq8NstDgdGXRpjGthsijjPFDrigyWDlXUATziShul8odsy4aaw5eQit/R2Rjt
	 A1OlKKEvZHEowO7iBXXaoh/EtIOy83K8gDYa4lFKDnW5dZfGI1AB1ZndMT5oDp7ukT
	 KCiHlI53SuOX1rztO+fkMSxvhLu6c8ejjEzzMxsjDITNc7lCVbjoP7l5M8MPEPkNxy
	 pPcJUHbvJ0mnc6xCwpPs0eUC8eufs1gJWR3GOXzpHfB+cjEGj2tz/jBvyxi6HzCtVw
	 r+VWuRFVEwQuiY0ClX7XVS+Hn57/1KLpNlUR0OM2i1Kpq2YZ8oD+lPe+VL3X2D7+xp
	 +yDxwO6LaXB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B028C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319379362.23317.4334436194751970082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce12d0585aa01db192963af73a9ee6747af0fb18bfe8985d737ef394cef815ed
Date: Fri, 28 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743193793
