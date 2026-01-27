Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14246283FE3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769532234; cv=none; b=ras3Cr+NOX3Ah7GOn46THVU2enMIMYFpeFHtqlkcLPI+Ap2QlRI++KwK2fGm+zNjwuH5ACwg96oF/V9bxofiEQ1XgS0Jcigj2jaMdkwQh9rMkANo7yx+tebIBV0SKC6Iht9OLc5e0EN/hIH+zjMkgmGxE+uAcZcEHWNYk7blOMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769532234; c=relaxed/simple;
	bh=DBWvWR+hEXeQ/chpcwbPdwyzK7LNxy5gmYav/WW+Pms=;
	h=To:Subject:From:Message-Id:Date; b=l6lzg4R3DVb+DoEGIJIpm3dPnR1FWG/zgiJd/piSfR/zrcA0tm4mzei3D0676yOPu5KbLew9m/0C2uLkkyMxvq4bT+lKQLJHYwz2iwa4QO8rTfwU4n2j3CbixqYZmjjvZWCyY2NinLhvPr0W/MeVqOZLti+E53Q8tFp3681Vcxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxAdSLyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxAdSLyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A69C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769532233;
	bh=DBWvWR+hEXeQ/chpcwbPdwyzK7LNxy5gmYav/WW+Pms=;
	h=To:Subject:From:Date:From;
	b=QxAdSLyEOT0KGTfgK/V16+wEeykD7PxZZuy2OLDKlZWregGtAsdVabpy4/GK6xTpq
	 SJpOb8uC/XqoQLGxDPTHCpqlSKgFFcfGqGuPuq3X8MB41wbo6BSUbmurYeRqj0SlCN
	 QWV/S5XXtJqfKNS98IdajTpd8ZlcShCJRt3/sOICY5i+97X13zXvfTHeDfQ19bUDCU
	 SPc5YoZdh4NKsc2B9vq+fuXh8RltFH1VrYD8wlcNEYTvY3Acjv9H21g1ZVifd5UakX
	 ZpXyKlXSzQxR0mTdsEmn/RmzgYxkDUASJ4o/UwdmQPAkfMwhl2mEgaN05jEDifJ7+B
	 4UPAmK47ywyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261CD340B6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953223358.9839.4094607661945100785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8019c1ad0a8efb38ace1e7a75ba5776e424d3d5f069c73114e1c1748ec6a80
Date: Tue, 27 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769532233
