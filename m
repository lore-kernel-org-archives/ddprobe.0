Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8419F41C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760826594; cv=none; b=B/KYDGR/vlG5UF/5dfYOtrxfYFPfdK2PtK8eEVtpm7QzPysiY3LMxL41kTTFB+hXMHdL9ndZXrTjkoRpCVWxDfm5/B5/XNhrc6Wubou1/cP6imEzAKdueB80mIw+t7W7yCuCacntLEQ56f4q63l8HXwttAG2FLnXi+lfu4WD40o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760826594; c=relaxed/simple;
	bh=cVD3FYThPQ5uQVkOI9eJbiGyNUGAF0KqmxTu9ND47Rc=;
	h=To:Subject:From:Message-Id:Date; b=T64p40scXAD9m3DN8zaCjCJHVsYEh6s9Q+ua69Q5R6l3HonNUZdoZylOyGnBgIbJ5VcvTDGBkntvfq4/kYm5S3Rfv7VplVa6dpjdmbibvQOw21/2tyz8iiOJ9iGk36oJmGqqmhz+/Dm3q4MRMj8oYiu7agh/PfyEkcT4cy7HmJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JidxKIbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JidxKIbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB283C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760826593;
	bh=cVD3FYThPQ5uQVkOI9eJbiGyNUGAF0KqmxTu9ND47Rc=;
	h=To:Subject:From:Date:From;
	b=JidxKIbbKSR59U4oT7N7TOYcWy3eyIbzgLBBO9qAEDiBTtHrlcOlXdWcpjz61pVL1
	 3mTBjMYY4acwn5EBPPl1PHa/g+SsSOjcaUICHhR5butHC0kfMm2GAKnyXs2y9RJYaU
	 n9emeCiORpuestxXyk570+AGaTlmJiocFUkYDxHPAO5Vq+66BdPyHL6lGGTcp2pnLI
	 AawZ+UhP4x+orMsJ+8UH+fdWM7B/hhjRCDXvOWEZmPKdM4KYBQjiQOr64ZHzGc5jCp
	 gpy+i7U+ecmrrAi8H9ghflzNMIMiRd7Gp5miaVaxz8FtPxFbQre5ArEs/j0BwVpDCx
	 mgFvqSuDA7ZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92906CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082659358.3689.6191929100590730502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c12dfb22aa442aa09162291c1daffa924032c94deaa0fd8061d6b5c0fad8565
Date: Sat, 18 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760826593
