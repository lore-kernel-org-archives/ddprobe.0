Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D44B21B1BC
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759581594; cv=none; b=ffVSGkEWDGlKjvJOvsVgJcyXtkhGveT7Gk+QXZUyr6Hy7g2jANc+vv5JB26krTHrke0xTHjruxsDRGWTH3o9n7YRUKzAb/gCOaf+vRgYAQlRM7ChwBh2Fl/smUCj6IqWmSW0TAikuxl0s80cTQHGW6DDcQsLwFWM8mp8NHRdBS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759581594; c=relaxed/simple;
	bh=89+D86KqUIynKaLUGo9pYYHV20pTYsytpsRJuxPuvpA=;
	h=To:Subject:From:Message-Id:Date; b=MSGRY5wgKrv9ONklj5OUCNpKH9s9KT7r/o/fSJIbB3/yKB56SLPanasjNq51to6wYw5qYIvjdx4vecGFhjWGl5IAlCIQKp6kYBMM1Vomz11bXUM07Iis/yTbzoZO8aRvr2c7twoIocNFW7RLceaQUYj+pWWP/auApN/1xGALKUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hrl1QjxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hrl1QjxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4419C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759581593;
	bh=89+D86KqUIynKaLUGo9pYYHV20pTYsytpsRJuxPuvpA=;
	h=To:Subject:From:Date:From;
	b=Hrl1QjxRhdn1D3k//XDcK5+phabtNGzUps3hcdn2XFUOOyUUyzZ6bNCmaW5Zh5LXE
	 8ogxQYmGw9D0pUSlDhoavySfz+ItCXS99XfJF8b7kdgKRNRlX5ctsplb03rh+BPA87
	 vJwHapzw8K6WKFj6DibTcUyhSOpdLMj6pcPsv83yaXPrLeGzfCNtWH7xw+vgukSZ6F
	 cbfTIGM2/ywVYKPmSNaCjCGG90MaZ4QjhPA2YZ+nzH45yt2RNKjRMwRswfn0mBNTHO
	 rV7oXQY9+Dk7BfKrUiRQsY1FSMjzf93zBqd9vn0H3+ErNnwrCgBfOHe7/W4CDp2enB
	 N+zUY06q7E1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958159357.23479.18381852551499426944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2388ac34d3fd0168f357cb89ec7a792a4c2c3e772db920f2f727ebba98853bc3
Date: Sat, 04 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759581593
