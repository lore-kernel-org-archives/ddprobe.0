Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD136A8D2
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766465034; cv=none; b=G6paTYOg6us9t/BfVzEuHdWvhLac9s3zwdyaRktyJngmC1Ie/r6ZWnL/dfZbVLB9jVo7QDJx7Ota/QwBtIBtEWf4r6NLLkuHLnk5Xk8jWcvZry1hsjTTqPEdJJPcE+nVj9RQ1OEcUUs2anURRdZhZeV24HUHUn2fgegTu3XLTHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766465034; c=relaxed/simple;
	bh=DLgCfuMldYg6cx9HAOCAJvspYyv7Ms95Aa0rasKzxtA=;
	h=To:Subject:From:Message-Id:Date; b=kv1kXQ18DxxM16MCJCTHMmv40WIXdURpY9Et3bx1KUwvE+TpB84zyg00yqE80FUE2ajb1E+GZiklxMEcimfeXDTOnEk5PuKslROYV69rMqVkuGkbrgcZCOyCzZ4HaPBSGOPSFZcaA9DndjZva938cDaeBgWEzjb2uD1vSiyeAWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Xmm4TR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Xmm4TR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCBAC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766465033;
	bh=DLgCfuMldYg6cx9HAOCAJvspYyv7Ms95Aa0rasKzxtA=;
	h=To:Subject:From:Date:From;
	b=U8Xmm4TRrxWouTxaOQsVxkx4s0PcPzgIw1Lhywz36LVsTamnmb6cPUFmLDmjaaUp4
	 4D7TzTl3ogCiUpGBrVJXfSbuDAutOvACRiW3J35Qm8uSaO9g22/NTq5z+y0NbBYEJ5
	 MunDDQ+ARcIhDZ4s4+h96yeDScjcMUr+bWmjp9hHkRRYsdZHQiCcimYk4BxbRkUQbm
	 CoWyJQ2wkcbXoz66V3cNki4kKU50Cx3FK7mPyWhSi8L8c5xQ67x82OzuL+D7/tj70e
	 jUY5EG1T+bXWT5FDB2rYWqlfhcxS3739zen+dyajMrNku6b/QuSfo0D7JUNN5QIEf2
	 MqHOd6+YTNa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E4E6B26E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646503358.10080.2074987395735409439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70b95737495425976b9999e1535d89403bbdf31d490490df3c9216bf1d2b0f3
Date: Tue, 23 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766465033
