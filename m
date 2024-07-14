Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4522123BF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720947623; cv=none; b=DI/YO+z9Ud03leZjwUiduKcc3DvM1Ri6iiEJCZk9m+qQfDoox6h6UVqjy+VPQkXyEVfIlsfVF1IVU/Exs9/VvSO9QYZcViwg2lLZ7ybxMY8XN7gQq4bu3cdEKL92dM7f9sTavqhgcQk1q2hYE2472CQocASTAavmrbc4FROB15o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720947623; c=relaxed/simple;
	bh=YL1qy/EM8Z9F1KuVQa3ASQe9l3d8CYyAWcpekPickfA=;
	h=To:Subject:From:Message-Id:Date; b=WATMWX1Y9yKs+kSFGvMW3yImPS9zoy2BpZ1QyCnlDQrU+x3KfkvAPWwR9hv2ytcp2oIzWejzyerB1MHSzUAnxYeRtlr0DFaGm8reS53tkKVQ/mtp5PLjDJeNgPdcO1QK2f5T7QU9F2bTxOFrlH+OTxMwc3bHu11OHFIgJVGhar0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKjNjqFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKjNjqFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64F4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720947622;
	bh=YL1qy/EM8Z9F1KuVQa3ASQe9l3d8CYyAWcpekPickfA=;
	h=To:Subject:From:Date:From;
	b=WKjNjqFREBqM7MCBtXXp3FT8SkYdhc4luVhY8FcOzJu95UX15TvsNSt7xU09WBGyF
	 VF0NpdPeuo0ogv5vlE1wKHSbUxSuqUpEz60/GnrRjjNO1KvnG1lU/4WWk5ED5TQkKm
	 uEQsSC4IZKrLLnyY9mA0gC0wclFRRJVgmV39FNP0/JzjIfw1rqVeAop2ea24cm/EDn
	 vo5qZFBVrtjuK+tPLHSwxGUMlmJRPoWk9R3JarWd+dbV9MnupWSIf+N9PXGnqCxz16
	 qAmvK+Ql+TtmypQsTbb1Kjzt/ZgSPIAPQXypvukMG28/Mu8tCAVmVrANfvGvWpfjlr
	 mGBOiX6zW8jDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAF4C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094762276.10348.16791143619522559384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a90aecf67f5090e454868dcd4ac2c6e335d349636a5657c2c562374ceae252a
Date: Sun, 14 Jul 2024 09:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720947622
