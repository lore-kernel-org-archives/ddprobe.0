Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9CF1DB95E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785649834; cv=none; b=CH1omXEZ9C6q3chbdfPWCIjnbEmJ2wF5u0zemQMXvFlgGDgkPmOgD/aqBMNnV3EVpoGXJCrQnxA13iDBQ+/B5rqWTZ0uYHyCuUUqeSiCr7/sStBVNEW4mkp+21oqF8pwheslg1yDDZs9hV8UPMfMIThWs3mWjIGK5l+FDXIlDcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785649834; c=relaxed/simple;
	bh=A03GMe3lIWys6jF7P/ccKqfzY/gaNL7ZpIoo2l3maUI=;
	h=To:Subject:From:Message-Id:Date; b=Foygu2Dy3dOcN4OJfZ0/GuYLdOHmG2DA73O7x+67ZBbugJarmIQ6h/lSMb03rLpC8MnxZWufhBV2tp7u8iRXzC46hPGzGqV6N4ZCsq9LVUV2xWkcZE2IwsZgyty/rF4aGcqj9iM92QubqcgJeMENrOzD/N+gXrAHh5CyE0BaQvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKxjOUZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKxjOUZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A05C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785649833;
	bh=A03GMe3lIWys6jF7P/ccKqfzY/gaNL7ZpIoo2l3maUI=;
	h=To:Subject:From:Date:From;
	b=TKxjOUZcCx+qjOrKCeB/xtMaQtGGcPbPrCbQmGkdbn/AbYksWtGxPaaza2yF6JOru
	 2vbN9tZn4JT9Qok1jYreGxXdnQRaD3qdqtNDZEhT0/1oS7rjjZXiBXt3kMohWb3EnQ
	 y5ul7kYhCgrILxZ1vEdBRtyLO4M4mFV5Xvfnt4Y2qUL/mV3/usCvY4dyTjr0bz0kch
	 X56BIpuQGgUZnu3pMxPDNQCwZEbb+nW90g8sIw6m1Zjr1eokKxH1d9syygG3GpvQNp
	 DTNjuL34YyhUDzX/pbhz6cjswmidK8dl/Lw7/5bhQw7YlYngXO6ZnnMYAfcxHL6keX
	 dAhJXlQsMs22g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF219C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564983368.21227.2693580294930180196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aeee7a95f367269c1ea6385a079ef31bf801981093da8248e672e68bfb25f45
Date: Sun, 02 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785649833
