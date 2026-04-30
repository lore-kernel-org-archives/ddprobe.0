Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4E3406269
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777553854; cv=none; b=r+G8W1Xp41/Um/tFF3l06t2xkY/gDAIXFuYLj3EkMZRF612Vo8zlkORQQUQkXaDECE5q6Z1chpPOgrM3eOO6FfLFcEa55nAI0cfkP0ZJ8oo8diKn6d9+jUMmMeaDGnAspCr+zJnjpEGELit9eOY7X5EuTkmx440OjB0xheLO6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777553854; c=relaxed/simple;
	bh=QC/CDr1SaMgKfRbw1/C3TAQLKuUREd23s/6gZU1BYsA=;
	h=To:Subject:From:Message-Id:Date; b=V5aY3JDzIZUIbRAivi1oTyPiNbyUHq7ZUlEfhfWEObbhH1KcsptQzzOjTAfBJEi7XwPPEKegHodLxBugSgzuSCb5SHeDAr5B96gQcgMweHdBtKn1ZFG8+B9e8FUZ7F07omGoXq4Zmn4XnPnpH3gmjfn3Jd+Kw9Hm2A3sBIn/Cb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRO5dWNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRO5dWNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99EAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777553853;
	bh=QC/CDr1SaMgKfRbw1/C3TAQLKuUREd23s/6gZU1BYsA=;
	h=To:Subject:From:Date:From;
	b=PRO5dWNx4CxocS+hr7xfj4SwxR230zayDLizmVTyI+iBRv9yH1KmxY5J4Tzfkn0zA
	 Wo4KTbwM4aIYw0/Z71tdR3TJo6jo0zbFtb5/wYoB0U8B5zVifg0A4bM8smlUnlI2zG
	 guZFmcCyreUNGSKazAiMb3LwtW0Ow72UetptfE5+KsidgIWujhCaxwqmE+O59KUg7S
	 32GidxygVj3436j1Myfs++VcjJDSnr2X5r2t/9yw0gtfNtjZlvv+yND7wnILj7vozF
	 ZuR7FRyBSLImKgtY7aUVRYOwghomkaF3u5Wf9jw3ipYfGRi/PjahqczyoXfRv8KtdI
	 rQ1nEdC9f8MyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98FAFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755385368.27126.12090132059929771240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda8f4312b50da28090d47c4434ddd13427e54d6d55a685e892cfce62eb1372a
Date: Thu, 30 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777553853
