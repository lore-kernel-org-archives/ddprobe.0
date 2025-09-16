Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F28248B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757995794; cv=none; b=bY/9O1XFdXnFNth04tOTUu/B/9XJyhxPNTqEtFSGtxQGS8CHze1pecm3zHi29ELX3yEgmH5AN7LGBpY80he22nbOnqJLm7xHzSX/hU0+8BMnZ+0wgoZilKI83oUsEblmDWRNQNcwJrvmqoItpPMMbyhQx++sWjCy4AIJfVasnAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757995794; c=relaxed/simple;
	bh=sQVEayFFkPj6NTkvi98B1wXFl4NIGrYrv0VOK6azYlE=;
	h=To:Subject:From:Message-Id:Date; b=U6vTFbisAokr+SRYoArlb9sL8knhA776X0u9Nut3T3GWbudc2TWfW47zOAy+D1Eu5r6n5dRxKqq2cWtKj8A6dTXGoZ6+flczJbJN299YDHFscMza9rprKB/aj17OyS+xRZ5er9n4xBx9DQBLHCo/HDRiRQcxDwbeHfXBrRgXV3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3OxV+oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3OxV+oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E067C4CEFA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757995793;
	bh=sQVEayFFkPj6NTkvi98B1wXFl4NIGrYrv0VOK6azYlE=;
	h=To:Subject:From:Date:From;
	b=Y3OxV+oIWZcB2buWNhY0H8kCfuFhVQi/Rj3u0NC6JL4MtmFBSp6p8JT9KArwPFIph
	 WwWUoeGEP66USRwX5uQhsS+jEmmIXsb/Nv/qlv3a0ZixLwt9Moz17feLdeC3pfJVWe
	 8Z73IMcIG591T4SYzpMPQxVh60mZUPW4g9kJh/AbPrMM4bxnKPM83fsT3DRihlBnMe
	 yzz1q130wo5cFDN8Nx2qJl375oW+Jph6h1hRIA7uSlB0nohJHfr2ROII0Wv93BQ+CS
	 NLmN2+PWauQil9ko/N56RHajzfbVOm05uc1O/saFVbm3ZCoMMHaxf9mgT7azQ+a9uL
	 fDHI5e6KfH7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC77CAC587
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799579358.20165.16368902221138780679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfc850757dc4714d2729c061133377fa14a81ffaecee3ca49c474bfa2741c87
Date: Tue, 16 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757995793
