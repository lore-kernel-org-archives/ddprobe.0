Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D7B19DF62
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765660974; cv=none; b=LAVBZbyROF627RczIxosB2w/2Mzfn44CiQSChagcVTOGNBoA4AS16F72hIoMVHa5SaJrQl5fZFM+45P2KvugtbkykLyRcrIYDbrrPj8+A1MkgpCGwLXXkwB06KBGedeR48LUkWFiaaCbMhFw2QUobRy86+/AR/I3urfBY3xEdSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765660974; c=relaxed/simple;
	bh=wzMrAS8G/qCuKq/3cE89u+PIgphOb/rtv6Ph1XWC/Qs=;
	h=To:Subject:From:Message-Id:Date; b=qpYT5SvuTGpZgk+WxH/azddFSpw4A1Yaj+26j12rmZQS/SJf+zSOdSKPo9p5JBbODsO27Kg9llCePxrb7XrClJkY5kff19UqcT1wlGfqqIR4K0IDiw76ii6HeQoQlZe1Z6eBr6kDfwLhj5WeXmj9q9EB0qf2HJVuff1AmRN3KMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrvgfcwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrvgfcwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC72C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765660973;
	bh=wzMrAS8G/qCuKq/3cE89u+PIgphOb/rtv6Ph1XWC/Qs=;
	h=To:Subject:From:Date:From;
	b=NrvgfcwUaXrCopWkZqcWiGYok+V4z9rJk39jGJjWthdAL5zxwopepyO6QLOOW1lBZ
	 ihayuXfQp1wdJNRWUGLEQgIPhqcb0iDY9HCjCnxQ2y0a1NMQ98heCIcVldKNO18aFD
	 4YP7dw3v8dio/f2GbHwgL7Y7MQQcc6rJ96OlAUiKImhaD1WKgueD7kFjXhP02QJ7ek
	 8nDIIQj8h8UPBMcEPnwpqOsZEb67hTheWLfLtrOKndSBJNKWfuCaQ5no0kYmLTw5Lq
	 Bm5MjHJtIXiQZShDodltMx5gMclRrQrxecwCp07RgeEJ8MeGlMxcUu4Q6aJfcoePAF
	 irKbxzx+Ai5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A97D5B165
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566097358.9869.1382506564857561531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeba988f165a3d7637ecf3e54495317bae4f4ee471502485409aed461783675f
Date: Sat, 13 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765660973
