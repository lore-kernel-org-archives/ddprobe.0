Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128CB81ACA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765169574; cv=none; b=b+nKaITwGpnBX79mz4CJ1TWJ+ECaQG52GNm3IDSgRtvrOIFl0J3sTI+ObBOioxXSGA/0GaUA6sIZuRVC1HHZQTXqitzok21d3mwoW9E9ZB3JfRVP/CHNloSk0sbgv/XFjCq0Up+DgtO1frM28bRNksy/P/iSrZaprsOLNsJdykg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765169574; c=relaxed/simple;
	bh=caQKolXYv0wicfA1JBxzeZUf7dFhgOeqVypeC1g/oYw=;
	h=To:Subject:From:Message-Id:Date; b=ZzCVT5R84b1jt62r0e6vfv/T7l3mmMg9xUCLBMG/KdKHSmn3970a8tJy/9SxOaRQYn/4Yg7vNWmQch/CWwhIwRC1LbBibrzFMJE3nLJ+MVYiY6RoRZDChcMUKO2yOMMVRUiDpJ3KVV6ddguJ920L91Ye/nrd6w5RzMCmIaHD7WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lySXcCYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lySXcCYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB367C113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765169573;
	bh=caQKolXYv0wicfA1JBxzeZUf7dFhgOeqVypeC1g/oYw=;
	h=To:Subject:From:Date:From;
	b=lySXcCYpV2/Mge3ONFhIEX8+xEeipi9RdgM+PgwNcF0sPyx1GxLC5q4g9z162rtJA
	 nMbLBmoKacsP6TfmJ831cSGZh8mnMwBVaEkGoImiLkNFhkAhgOqMXOPLxCn08B1XFh
	 2sRgZQF9WSFI+i101piEDpYEpe7mdJqg1vxUgDG8+rEFJOGX2aWlZxHHQzW3hrrXEj
	 Wl7cqPyeeGKns7T94JNGjKtTpU4qB3slKUViSHK10eF3Ihy+0z6jrrYYul9ZpJx5vX
	 2j5pv0FDZ9pQ1knhCp1GXFaxxcQfFayLRmZUCSz1207F0dKg4y2QIBRFFQ76nTn2Em
	 TvaFeVJ/s7zjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B90CEBF88
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516957359.4369.16203079187443649647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb95332f3a9f4ded140104606c54cc40e430aeb6ab5a1695d217dfaac16a155e
Date: Mon, 08 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765169573
