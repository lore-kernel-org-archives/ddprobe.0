Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443634690
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750468194; cv=none; b=RYVuLXyd3iPCalryuSMB+Eg6HQuVMkVeMgSh/aZMay/MxukIUrT0UPiLF8GFEp88+WuI/XkBaK1dYQyYSjAuJ8YHfgXrczIsOUX1YoDIrtupzH2s4BYAf+vSg8tBQuQdcJzcRj0t7Gge2+KvICSsDWyYjJnjHFy91+2XczpVbpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750468194; c=relaxed/simple;
	bh=9T6/baEmuMowipmFaMrVe40l8XGB/H7lsFdLWcqJLaw=;
	h=To:Subject:From:Message-Id:Date; b=ifrkb9SXjSVf5NA7Ci4+FAn2D07a7F6ukeiDTcCZnMeHpOvFcKOB3XjfgvKvICLc44DIxg9kQ1Ikx7mRUJjoRkhE8TlwWg1BOZSvyYBwrrOYeiL8u9WzS+/lnXrZ8b32bKbCzKliDjhcL3yyraEq+YTbKC9wwUDPynILuODzNzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFm1/0fF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFm1/0fF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C403C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750468193;
	bh=9T6/baEmuMowipmFaMrVe40l8XGB/H7lsFdLWcqJLaw=;
	h=To:Subject:From:Date:From;
	b=fFm1/0fF+v85TXUAXKvc1Hx4KRrTmqVWBVyRor7SujVaGj+zcpZnGMYD792gF83R7
	 h/3WxdqsFZdfDqEHXoN9BAQBOxZ2UWrRoL4lXtwNdcSORqybOJHkWMGupgWPPSK3fq
	 5lah/wQrzeA9BvGB1S38960XASdzeCl+mgpxRmW1ztWE3EF9p9qTY4usrI5X/z8AWl
	 WBaEestY9AXWVWf4xdE3aEzO9NJccHgH1G0wtB1pNa3SUlOlIHeKFpZ1yV2eEwAhcg
	 q5m4M1vpbwN9Y1KbW33A3/zwEN5RfAPKEA8x3COi7xPXI0LBbIYFgKlfdS5wNseojq
	 UVQnr2ngj5AIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23FC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046819357.16858.10679621170439316882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8936087a729f82a2c047091e3a8a0cf5a9febd45384daf170dd30fa4d69bd520
Date: Sat, 21 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750468193
