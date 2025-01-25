Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7F23C00
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737800154; cv=none; b=O/NZ0xPcH7sLQl1wxLNldfr7MJ8QA1xNsHI+WzTAVibzgcmm3FT4oSl5pMWRFKUntHvCB2Yw1IVplV6gSpBOCizm1YLcKbfxIFaS31Gh4gDXfOf4A0XqPayz6WKCqeSwyP4uafLXumccEep9uw0XXfegC4gWKqwDPU1xMcSryic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737800154; c=relaxed/simple;
	bh=xmXDQTVEvILDjRiT6lZjlHNO3qwtbQ08rU7WJqk7Z0U=;
	h=To:Subject:From:Message-Id:Date; b=a6KPiBDCZRY3Jp9/3HJs51WS0Qc5I+yzxDIt+gmTQEc025kimWG9lEVvpTi42sRUWGahOtf7aEFlSF+McHedB2Tsvf/ACgPgBlwZTHlhLR1dRw1ar4FN+8EFjC30xCkgcTO3N3h2ERu27bhijnOdXcQOWA1mPsHbk2/c7vj7lhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn4w+hX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn4w+hX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C782BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737800153;
	bh=xmXDQTVEvILDjRiT6lZjlHNO3qwtbQ08rU7WJqk7Z0U=;
	h=To:Subject:From:Date:From;
	b=Tn4w+hX0UDhsYxrOgsnyS56stcxCSmftWoLywtWPv7RJx9bNWkpwapLfCsGNNwm7b
	 y5slV/kyxCLgSPaiTCwUWSzlV5aLD9d3olpwYmgH5wXhGoYSjZMJBVHZ4rPkBpLJ/k
	 KOYv+ue8tUThCyeggwChuTrsUCkwBcwCDB/92pqcWDFGSE4XjDLEIx/IjgMbEwbFFG
	 kBJYr7Fsk18nmSJjyPOrN3Gpyonmr0mcl2rxPyxhPxaYV0O+xmqOILx0k110XUpRlW
	 rv4rG2qxLJoKXz1Qd7Qh1vYJGQ8Ry2RwQGZHMyYJrkVOAfq5x0i6JKaGXJyxOPyoOM
	 ZMXDAS9LmDMSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF3C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780015365.9377.11656357121107341835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4b8510308325af5ea42ba55463b701e13439abecec559084cd88e7c15b445b
Date: Sat, 25 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737800153
