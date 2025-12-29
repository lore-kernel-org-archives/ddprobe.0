Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2894A0C
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767005634; cv=none; b=S7CQHY5b0VbsDjpSOkyw/c52pvZyVRHVBRclZdwuVCyePiGylceCZtmon2itVLlCZ4SoYrzAz2W3zsM3yQKM+rEauiF6R2i/xSDKThNUNWFwD3rJwD0MzLiSXQ8lbRlPkO64hxWEZfPp/5St8jaKNXn2rOa46VG6Kv938scJuUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767005634; c=relaxed/simple;
	bh=t1u5nWhh3Ce0nJv4YrQ4uGrvkoyvhrysmrvX38Yvxr0=;
	h=To:Subject:From:Message-Id:Date; b=f3+U5kjD45SKemsSVD4aWSjsww8qLu+TDEl3nn4ePYTn8BxDwRUfmxtxxjIa3k6KOCc48H/4hmNT+yV0Zb6W1ATHloiimzWElijZ6TwreRk1//LsJ1xvWLOWKxb3l0rUU6qNHTaw8PNCEphUZEM12xP0AOXll9l9KmKQDxuGgO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL9gljmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL9gljmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6210C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767005633;
	bh=t1u5nWhh3Ce0nJv4YrQ4uGrvkoyvhrysmrvX38Yvxr0=;
	h=To:Subject:From:Date:From;
	b=hL9gljmpa5FEE/jMH6xC/knfszxCyz1bVmpeynG+9ArhXapeJ1JzMBY2t2LsH3qd1
	 eHF8vH/m8kLMgrrhmBNtHfAJB3HmPTrY3vZfntL7bizwfkRsLY1lS8EiLlbg7lWKsn
	 HAeQ2qmtBZOuzc3Lp2wwwY2Tt1km5lhbL7GAvTyq35ESdFWFYFDQ1wJCyYmaE3PMCJ
	 bFjYkbOVE0MSaddvBmyoDyk2gGXhXnEScVbmvSKScjhciucXOjRU7K7wQwS523U+TL
	 D9mBGuik/DPAaHUksXF/X3aIr10v8+oXg9Yg69lk2I2wigmDiZU0DDZOlkRc3wvOTq
	 8CdVRWHFB1EyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99230D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700563361.2486.6243563598973430255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d804353ba1427e06c3991a01e7b65c11db6b1fb08bf9da5112401a7bfafc93
Date: Mon, 29 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767005633
