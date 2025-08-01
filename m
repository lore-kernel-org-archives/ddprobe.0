Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADD3229B1F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754089793; cv=none; b=C6ISZGVXsERD/2+Zl7rd/exdCeyH5TznNCj4F6EH9SGJq+Elpk2r6IKjg9sYqcGGGecjlvnCPmMrGpE6h+aEerXBZ/4c6SP/6C88jL9WPfQryN2EXA32TmOQu22MrlnaGVvzCVenWmww3GvRXB7Onu+dAwM4CNeHGDupq016iko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754089793; c=relaxed/simple;
	bh=Iq/D+9MkRVoJqBjVuC+7sqkvT6T6Gqs+1kgJ6vWNfVo=;
	h=To:Subject:From:Message-Id:Date; b=YBboZnBQgZvxMwPg2cnM68FG4tto/4R7sQch/81cf8Qp8RxAj0F99aNEbmRO6yppJg8/qPw2OB0QUII6PekPolEtJ8TK3nLadYVbVkP18I29Ag+d+al/6G97L6NwL/GSdgxguOYw1f2dCsXDI/XtXce5BWtvt6IcLVKbKU5soCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/E2+ciS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/E2+ciS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F835C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754089793;
	bh=Iq/D+9MkRVoJqBjVuC+7sqkvT6T6Gqs+1kgJ6vWNfVo=;
	h=To:Subject:From:Date:From;
	b=A/E2+ciSVPWD7Wvkot/J2laxNvpOuhprXruCE2VQwnemShwxc638O6aITVtaSsr5s
	 5u/zmivEGwNKH+oARK/pp3OY73r4mJC0+qFao0VrQvapViJIGX9Jo5vlxbtrrCNzRW
	 8L+DXoukOfQCtnw+e38RYyny3XVeSapSQs5gdxkWMPlvKNEtKDrKbrb4ZN93uhZKEh
	 Cl6KS9/C6NpGA99CNyzUoeb9b96ysYL8m3A5IwLwrr6u2zrckeJw/ntofSmTwYVNmA
	 FZi5DKiHJDUVazeYg0QOfwBBW4JhVNk7MvrPl+UV625aIOlMdP17LhFxoaWtgbFohI
	 4Zyg+EOcFCl3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC30C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408979357.10794.1968108339012976420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bd6686a7c6b892761c2eb56068c3c90ca9350fd167fd97f2ce169b65de6c13
Date: Fri, 01 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754089793
