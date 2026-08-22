Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F2B383338
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787438434; cv=none; b=Wm5+Sh2eUf5BcYmplRkVO3Bnoww4hvT4Qa/n9V7drNUsgsilqNFYPyzPifsghbIJRamGeXLISE5bAOlsDFAIEtqAiXz4hONdepyeNBbTv6t89eccvVsHsnjrP6kPWr3rb6zKLs7Hdvr4A+89e0/bmZk8AxTL5tdZira6tv31fWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787438434; c=relaxed/simple;
	bh=l3m+CrW2Y0qH0A6qM9XQKCmM2w/M2MrX0qglQ8RxW2Y=;
	h=To:Subject:From:Message-Id:Date; b=k8smvNwEhPpU+mErhvF2rreBM2FXAofk8iVIrnKl9wAbAkBZHHOuA9yi0ov+OencccpYmfjF/Zso1oroKVFK3eFDafhkEYvDFnqBoEHY3DDpS8fuWg+IOIhMZAAd1DNjDbDiVMWqAPgMWiK0uKnomm0dg72oeYEOBTTlrcGSTcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEc6T2oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEc6T2oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB106C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787438433;
	bh=l3m+CrW2Y0qH0A6qM9XQKCmM2w/M2MrX0qglQ8RxW2Y=;
	h=To:Subject:From:Date:From;
	b=MEc6T2oTEkoYl+sKb34NGSlOTrcnHVvs/rKpGyaXdz5lxZu/3uMTXaxZIQC6IeXiJ
	 plKglb4uylYH8qAF7ojpF5h7CLVtqJ0fZ5bEIwAy44oN2sZv+ap+elOZ4n/aNClbkr
	 BZoV2MpiHMwozPU6jvMU0UqLOvcLqQclky0JCsSaItw+aRwYH4oNzkDZa71NlHkoXY
	 8aEbzfUBSIaCtMLs/P08dXida99lb4dxBpc8/p+zWvWNWhUskVgFi5Dwq/pLotun6k
	 t4e9xBsObj094UgRI07Ys6UamhpXU1dmD7EL1YgB2XHe1l6vj2OUyhGXEoK9MUyPVu
	 oqfVLz2uxJaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B445FC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743843370.1826.2951759797611479636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77846be574f4d3359f4834093cd0ce8e8af5e1cfc9bede84f39aa41d5e9e3106
Date: Sat, 22 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787438433
