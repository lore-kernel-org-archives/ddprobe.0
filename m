Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FFC31B81B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765544574; cv=none; b=ZsduD+UcAxIosDvt1qUP2Umta2ZHbf1cO0yTALGzOh1l1sdZgyWZqlHpQMJmK5cuATR/w7U7C4BeAIJ+T97Uta64m0cBtjRNOoD2/qz2/OF4fLff+B5y5LcOfvtMu3/edU7O79G0tuOjagEUIw+gFnqbJCvP28zkmzjqO50u0wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765544574; c=relaxed/simple;
	bh=+YeVUpf0LJEgIAmppE68Vp1SW3gBiADjfbaj+CaLOao=;
	h=To:Subject:From:Message-Id:Date; b=aoShy2cra9Cywgb6KoDBqjqDR+NpKzzyPIXm1cWpFzcFurRVwkXgX3HPQp2sEWUHQSohCwXM90byZ6NnYzrXFHZ+0SV+YVGGKJlGQ7gXUsQzKAlk7iS4977zWvrtVBOPxVRLMMg4VmO6B9zZWCjgbpdByiW0sKiCzgzht19fPQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5C40r6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5C40r6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A5FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765544573;
	bh=+YeVUpf0LJEgIAmppE68Vp1SW3gBiADjfbaj+CaLOao=;
	h=To:Subject:From:Date:From;
	b=D5C40r6qxLAXFxs51uGuq/cwpucc4Vs5ZgfTqRSzSZiLg+2MF3p1c9ft8QrbAekyd
	 Glng4P3CLp2QzzPshs9JkGt+HWKE8VgWuPUVvfi1LQKhXLQex0KBL2zxKQXG31Hoq1
	 rqVoWWdR9gFqhxA6emE4jLlUjN6YCw7LgyaQjj22T1l7fc+6JEi5zaA3BYkSOqyLjz
	 IVaeLh8/jI4AudABelf/cA0se1VfWdhjQku9ez0q7puaa+fn3f8M/FJqys5M3B0QQH
	 tet519rZl8aBLx1tyXlpCBRKV74QD7g/YIsUMJJtkRsNgBjxpmdGZYbvGqV7Mf+vqq
	 lfw95L+TOYnWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E97D49225
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554457359.32144.14903936146856097902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f02b1ae46016f5de7c985536e56020b81ddb5affd5b680b193d0e22d8cfff97
Date: Fri, 12 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765544573
