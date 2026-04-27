Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FB73B38AE
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777286254; cv=none; b=Kef71wYy0GDNG1xiQI214itFwQvFeuSA2QQmISXzUYFQOpkReDZpOSNglee0BDMKCcBTm+JtP/HvBXN5jRYmtRRlk1sS7mP+e5VjJEjlXodGxQelS9nWI1ExcZpjb23cMbFgB+eMTqr0sm5mZ8lpMUUILZBwBktFFhGTSHk1j7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777286254; c=relaxed/simple;
	bh=lHXTqfzJWC4SfHpMaVS7j6QTAuZil8TXXXdCmryukec=;
	h=To:Subject:From:Message-Id:Date; b=Lf78Z3uokV3B5ai8YZeEgBPrWdgLEA6W6JeYc2M3zUGfAQeL5pfQKVi7QT+3cEEhHuWc/fcgRA9nukQ1WypzDIS1KCN+foj/CH3lJrBImpcpqZB62NylyPoAQeodisRTepVpKwVB/10/eUUsO1IAWvuSC7H2qD3+Xkx2pxL+dZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzhShsen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzhShsen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C2DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777286253;
	bh=lHXTqfzJWC4SfHpMaVS7j6QTAuZil8TXXXdCmryukec=;
	h=To:Subject:From:Date:From;
	b=bzhShsena9IH5jev64XWZyFP5gwmnNnNw8Ub+4JsTGFv+WA8LOwpJM5v9tGY/uej6
	 vyd/yzPb7Bs6JU2/NxzsppcKs+eDgIsbhd1pUQwAMtoy8CdwS5Y+P3TOi4m5f4it6X
	 3US9LxX/hb/P6tPoCHd7OzulJubVw3bIYWtcMwi5j4Fhipux+RjkBaiu6DHMjWK37Q
	 PS3pJ1ognuWx/aNk69XZh/7lQExIAReI8wTqYKtniKutXnmjKN+m95ouubOH++mPLe
	 Ok3kCJPcVlI8LbM0YDIYU7P5WXd2YTGZqSI63ruTw2/Ov0tnTamM0+Ib082eMkdPhC
	 gtDOAgkGTggqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9254FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728625368.7195.9304486976607088772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc36fdce254e2287863674cafb88978ab1f2279fcac2318e97ad39a664faa81c
Date: Mon, 27 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777286253
