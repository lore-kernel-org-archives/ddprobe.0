Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388A23594A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748106595; cv=none; b=GS+b6LH/DnSwQinY30N+8YBehUe0FHeZKsWMMRE83qFNJM28JVIg382qsd11Tz2y1Bx7HKtstDqZiWhRxr72xePv6I98/tPs0uTYl2150nL71MPHPKN5t4J+MF9KQjRim669ci44rtDYdn43JIICLpDMagqvFEqPtjL8zie82do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748106595; c=relaxed/simple;
	bh=0vzNw3zQeJA+9ud9lAK8cI9aXc6tSMx7pkLg11bMEFs=;
	h=To:Subject:From:Message-Id:Date; b=ajBz0ElT41lk7A4RdzAMUW8I/fR382uS+clweZL0opFWq4u2X04PW0ud8EO/KV8KZoIqAeJYuLR5uB5NLpW6Y8nwWDbspxs4zkJjHvJa4tXR2eXLKC3FzjwSq51G6Q2L2/yXCFTeBXVzlVgHqegfWHsTg5HkTAjYipAWv+71HDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl3V/ko6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl3V/ko6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D3DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748106593;
	bh=0vzNw3zQeJA+9ud9lAK8cI9aXc6tSMx7pkLg11bMEFs=;
	h=To:Subject:From:Date:From;
	b=Gl3V/ko6zdPTV4/d180fmny2Ek73Hv0JsA14vq3ug1+hkvNmGSsqNVMP/MAGCAboY
	 NGIB8hgegxGB/0EmYO4eD6sgVX70Zc+35G3xFOeDLDE9M0iN5hv1h8WpZNR0LWgF5b
	 TNhkuGSGOW00TOj8QRHycQo6d0qFKNpGEdx++If6K/Ubx/O1h36armUZ8NRXFNjzXK
	 Ws7F+ekI29+VAbtBfzs2EBxicDP81xIv/w2W9MFoM6H8iDCTBqC9nKi93owOaDxXOA
	 fn21vCjdSSR6HWp9aPwclggd6PXYTAwWi6x9Xf1pXC79x02uVumhgX392++uBHzDM6
	 xu9vq3q08F50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913AFC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810659358.22848.12800304756896475918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba036409c37a041ed5b6779137d5e4cbb148f8d7f132516c580e99841b2c048
Date: Sat, 24 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748106593
