Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6881D1862A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715667143; cv=none; b=pMeGFIIGdUKm/ottwN2eLSgJAowdoVIHf8FfzDYuWbJfO6jBqXR/Owt0qxL0kr9SMaJEvLOdT2J6Is/2bpQiwvlYiGCu7Qnpd/gtpXG2tLgO26hi9XVg7/m1TVU/eCD8Y/JNOv38A9LyAtPDkNKDb17dIRCDUP+pIi863nQciuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715667143; c=relaxed/simple;
	bh=761octXi5mOk8LZcdpAE7CVRfdCF63SgsZGeZFhoIEc=;
	h=To:Subject:From:Message-Id:Date; b=BivJZbdv6rLIc2z2cfJsX1esLD0p39RBuw1ck44U7+1XC3zXUiUzlCndqiWvI/xpwEuNhF56w1qkdDqMbAeOwPi8Lx5t2kdPehWRyt6ePskdhZdN7JdwhyotG3EtNkQ8ZITDyOLWIeoblQUPrQc4UuxVnJWwD/+HXaYaYqjnB+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNmHRkDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNmHRkDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01F12C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715667143;
	bh=761octXi5mOk8LZcdpAE7CVRfdCF63SgsZGeZFhoIEc=;
	h=To:Subject:From:Date:From;
	b=NNmHRkDTaI26izTRPyBTKTV3Va9byiKkpwBCkKDORXbhPd4HNgA2X9p449bLT5Ame
	 s0ICakKOK+6NNNhk2WFbWPP4z9cuTstktXK6ELhy9Utk73uOw58XzjMTyc8rfO15yb
	 ecBo63KcL/Ggpns2ZT2ndNRn+0Use1Fe6AIeJRmdbZ7BEAgllsqkqdDAWqbauqdV1K
	 SKExPJtqlTEx9Xe5dB+Z6ya+lqokWar/BKAwwLTGkAVVlKB8zGSJLjR1Ra/jE5J8t/
	 t6lGHtAy5wREMzyQ2ZNLP8GN5YL0KD6ebJa4XtMmGLVirohSGMGyH1F+e394vUVrpA
	 kflnXkzrBPtbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BB7C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566714286.714.5175925745158238534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54c8424809b3bafec6ecd3feb0aec224edfe2ef712758d4d8d8aaecd2a0c1a8
Date: Tue, 14 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715667142
