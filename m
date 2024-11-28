Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDFF2CCC0
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732788954; cv=none; b=tVCgCMbhfAqKZyUbjVVP5DFqGwhV5Nx+ecTpuIAGXNd/7/t/JSCFU6bmLmubEs1pSHZvn2kwyX60re2MnytGCYyh2Tk9g1J6Ia4fjAMm3vj+YIGCiPPpuTYezHQFpq5+wX85ak8MrenbQnK0hRW/XAm60Kh9kT/mE7hAGxOFT5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732788954; c=relaxed/simple;
	bh=cQPYUvcQA46uEW4oQYuedb62zA+r7UklEZfhDqbnsW0=;
	h=To:Subject:From:Message-Id:Date; b=lc1Z1S2GoIrfALFSEHVVqhAq0ewq3U3QJr0zg/vmAC2sQOZ+SRz9KTugWJ20h843W9hN2pcLKhmpjH0r24sEMaHnnmZh4KSbiTGjBxxu4rOKTSYsEU1bcK04o585x1vmB8C+izjCzmGYVMUqlBTiZqUJULK3FnbY0D8E0yH/CkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g89yfkUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g89yfkUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695DC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732788953;
	bh=cQPYUvcQA46uEW4oQYuedb62zA+r7UklEZfhDqbnsW0=;
	h=To:Subject:From:Date:From;
	b=g89yfkUeHEuzcRslqUlBBfCUV/DOc/5zsqtTha95pzsRfx61NMEUe+IXlgHQ4Rcgc
	 jgq+m9BKV7axZ4ZbZ5n1Ufvr9Q4hWEdWn5grg9RDu4ooORvSveMmJPltKd1nseCdh3
	 xB4DTJNWQsxom37ixei9Ri5UnUBq+N0XTLfoXsqYA4bKCmsorFi4gwkfck+nf2sEGe
	 A2LwMs38iqyzOk6tBSyyBWOBaG5yXLy4t+eDVBHCsf6PQS9xIFigZAjPMJurFOmXO5
	 gV7BmllAp+c/c9dFJkDUeuHPmb3Tq4aJKvrgjXGtXelQesiNAxl92vKO3EXcEkRa+G
	 VlXjruKp0O93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD84D690F2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278895358.20075.2396972346096311413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f256391c9c9e8ae6b7af678f0a1ce00f248cdd30d085a53256d2ac668ee679
Date: Thu, 28 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732788953
