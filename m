Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19B261B71
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758575994; cv=none; b=rIkgWUXlX7zI0NvrRFub/Dl6aRi1lgwt0ngVvxcNjrcBenTg/Lm4d9O0kcKLd1U6qHXEI+HhIL4LTheDS4H4+1libY77Vpd8c1TcZuDf09m9dBe8ZX2lQ9rSbK6DFml48wZwrZ7x3kH+7d0l17g4NNNjIuQywzwyyVL/U30GTQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758575994; c=relaxed/simple;
	bh=88ICgfmQDIitQZSK+HGMUQ9KvOE9sSX3dNGovv5nFCg=;
	h=To:Subject:From:Message-Id:Date; b=FRZGHYaoFNWXs8TaBg7hjuMoQYqi/PpuVmSOIWo8W6tRUhcqivREWclbHIjJKS6PQi3WJpW8S4ybDP/Z5FLTqRL2jSRv0Kk4UJbgztYqlWfb2im6iNTiB05eL5Tlk9AYh+WlS2mvjy5NlfWd5rwrfwtyTt1m/HX05UKOGvKTCZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnyY3tYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnyY3tYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758575993;
	bh=88ICgfmQDIitQZSK+HGMUQ9KvOE9sSX3dNGovv5nFCg=;
	h=To:Subject:From:Date:From;
	b=EnyY3tYt6wbz7Zph1xWVgFNfqabBrefnu8xNnnaAgNNAQgk3jjUbjkyz12M6aHSXJ
	 cYhNc0eaxVjr5ifWZHOuw10fHGNjK8GYz26gCcGK5XjqlYyuI07mSb+KKOIiOqfkcr
	 EMAvJj/yG9zU5O4hSPAtZFfLEtLgXcTq9+4Vf+PCw3EuL4K3uOTG2DgiZA49jgKDeq
	 YvqaK4lVLviv/XHHDRAS6JKSeQRWYMKce6YtniBV7+6fNP1LHDgiOHyTN6SIraI/OA
	 MylRe6pXX+FMsxgF8pgnidQiXbFu6gwUDldD3rTEoHnVrr2OkCjKAnCWZwtN7QrJpR
	 G3CVyYeyVeIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DF3CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857599358.26606.4270665247291933033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3823a06740db4bd56148ff32317d642fbd59ab306bc1a2b504d48d2572e181e
Date: Mon, 22 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758575993
