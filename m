Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED004430
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748579394; cv=none; b=rikC1t9TvltO68oebNE9irufeF2GwUxo+jI0FcLej7PDi5J4xjk8qhAmGL0Vz9dPck/b6FGeTpBNVr56fTQwB6YGI9iWnF0eaUEC7E0YcBraAyLWtcbtqDBDKXsrs+H0SVV7yNYilbtLQ34rbZ+IWAV8tD6RyqS+tKAIfM3Y+WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748579394; c=relaxed/simple;
	bh=9l9ywCCHlaPQNU+iu+hA8HOtJ9cOD3Dm0BtUx0WvggY=;
	h=To:Subject:From:Message-Id:Date; b=FNyZLiQpg2uphK1vr+bFvhq6Llk8X1+TxhdyxvUfSl31UqmlDgajo0ZdpqpmniQzhwnHVdbbSCueLUUEev3Wm0KJ+52mLbVWX3LQ1SyEmfVeJgTejrEhA6qAdMYvPSYYoMUxJDiTpD8QrdkWOga/d/rzU0C8PMP5PhZR/021Lhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTMMHeQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTMMHeQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE55C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748579393;
	bh=9l9ywCCHlaPQNU+iu+hA8HOtJ9cOD3Dm0BtUx0WvggY=;
	h=To:Subject:From:Date:From;
	b=rTMMHeQZ4aU5pwmNvGtRgZtXQoGJ98VJJ0G8IyO35/23gBSC+i7tpQXcqdIMdhRIo
	 UudKF/PxTtaRmFByFbSOoT5XTbwtaAHmfpLvMiLhWF1hFqm+b2w44EpoxKMMn/f5Ai
	 iPGqFp5/vqLsN2fNDOc0QDX/uYkRiAXnlnX8dNd+Mx1JZEjD93yqDdY+tgbbNKgrn+
	 bNXe+RYi1CUKcG/RikdKqXR/VBmXUzI8Brtpw6CTxA8RDYV+RlJsDj8/dwCDaha+W/
	 PBb0mpnyXIMhKKU1DnaLCTYR/rEdU3LK8C+JT9o452LCw79Ew1TTRd0jNbR1J/k7ny
	 AXzuz0s65mtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A98FC54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857939360.29677.12204359466657265772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258359c4a663271c7b084dd83e47fea171f531be2e7bd286294f24f1f729f1cb
Date: Fri, 30 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748579393
