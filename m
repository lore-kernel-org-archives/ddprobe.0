Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB671F2C34
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752274794; cv=none; b=mBHZS3TL+RfBzElDWlqSbg3rNDampU71fzYBxRJ12TImVLS282DPT1PEXMM2ZKhD6ANoxEX3FHCSWSZcmTdJ8w2aOftaJbfsJgT55/FXhRzL/zYH3M0nMijpLXtJvOAvQIDwgDHunzgst4vOAiTSfoO/qZSsi5KNTCK5u6eZvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752274794; c=relaxed/simple;
	bh=FcwfgYojLzfAzGi4Wso+wfOh3sAKjMYDCIMzJFARbZM=;
	h=To:Subject:From:Message-Id:Date; b=j0/rYwvhPJ3jIBz9qzvGZ1RAhRmiocDnYNrn/mE9YC81wquuR/MdQUqnl3ctNFvOvWjIq8ifrIgj9uKu3c0OeWkR7EJ1geNh71A2gwpXizZKoChUtsqxbUh+Cv+aK24k2wrqMzc102H3H/XgbF0VR/0gKjDTyYkwJloz8bm1WH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC3ngyKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC3ngyKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9D1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752274793;
	bh=FcwfgYojLzfAzGi4Wso+wfOh3sAKjMYDCIMzJFARbZM=;
	h=To:Subject:From:Date:From;
	b=LC3ngyKtCw29UEN23Zgqu29nyLhYDv1Xg8e8K24Un8t7Iu7f0i4sLY9BwPhI2WnrV
	 lb6v9MYrB+oy2P1o1UAn2VSD0UIXM4r9GDEicucL/jHsBd/7KHuiyZb5H97qyvQr4e
	 KOra0ujnFecd8K3zbdrYlInhJpQy9Z2c4cJkN46IeVKZds8bs/nOMbOPPaE6xQAwbk
	 ycnjOcEX0DvezdU+mCZn6D4ms249G3PwwyQetqTfbi2/K5nL4iPIIqLEiNTNdN17dF
	 WsrhnmDBLcwb6CY2SZiIMk+wL13Q50Pg0d1k3kN2cs98CbsuVRUWcmmWn4kw3gyztQ
	 inivIjE5FeA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7DC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227479357.20608.3510460735973202363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4b0cd41087adb0b11cb524c240d338d9f39e7744f808083394ae5d8e5db696
Date: Fri, 11 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752274793
