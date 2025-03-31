Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C830A92E
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743396594; cv=none; b=QRVadhdSn6jl82ibqc9m6o/FSLcbKKsgOcGGTlJuuflD1C38/hthcwEwbOVgEt/RYuFfKHrVCaXbN6HDo5QMbhT/X0SowKa8YA4Re3Q2Ot1qsu3n1kNxCYLiLsksCbGjhh0yAFnP0XoRaFqolioAtsUzFriMpUoxqU+J3fbZpBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743396594; c=relaxed/simple;
	bh=3BZYEceFNG2reMX6972x7UmDjVhrvQtSGhTtARNgfVI=;
	h=To:Subject:From:Message-Id:Date; b=PtvcakgoYDxQk88FSZq+PXZqDmI4g1UN9MqE/0AadB576/hRRvzB9g+zIBRJdzJAPNU+UAubbXlIu7y3Z5poVuB+GHUfb9rBiHDWxX3PCbLJcgCel0cvBCVwIqtvDk5Eb7f79UIpk8QwSXp1ABxamuIPJZzIPsz9EGCzK/J+IZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGdvN4NF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGdvN4NF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E20C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743396593;
	bh=3BZYEceFNG2reMX6972x7UmDjVhrvQtSGhTtARNgfVI=;
	h=To:Subject:From:Date:From;
	b=pGdvN4NFqsC0jctbmF2aiVWhsCtC+GCJ2n3SGXMHoKm5ZfzDv9MdY64988GvUWJur
	 MU6L/ikKdBjhAyZPrEfuQ3DNOdgnXBZltsytxa/ThQGzoQiOIRKiEyVEIPCU4NDGmx
	 4lwy/WqU23yrHzSWH5rMoaMQPPVuoX+8qI/DbBPlmBLcl30Kei6CFUca5YrTXQy6Un
	 PaHyCLMaqyapYCzl27w5doXTST/YBg4EhIVlWgq3GwW5mMIoRoyDAymmfkphKtGeUQ
	 kTH61lym55d9XQX3OQANC6ZgVgtcE2SJqhoPNJBymymYLfF2OHkjRiUqh1b0YxMRBM
	 +9jkJIeTDcrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED66C36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339659362.32205.7716314190912129111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be848e5443846b30360642ddbb9a280e34430b04f9bc5ae066e51d60a4e32bfe
Date: Mon, 31 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743396593
