Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205E61552EE
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732121754; cv=none; b=fMZtV9au51n6U/A+HMxiZFAUJ0UeE9g/hRnxMQoOL0/VTkAvZe3GsF9KuDQUvTK7SUEg98H5iAr9HWh0WOI0kEH+heG91gtLxL/JnqZ483VEfNeekRH32W9XkpTJsr7YI2KwFRp/mRs4spvc22x9MyrIJunPorU0oRO5/24fenE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732121754; c=relaxed/simple;
	bh=VIxgAAUC+Qmq5Xzz0+QlG21Bzf7Foa9NvTUyuf4XOJY=;
	h=To:Subject:From:Message-Id:Date; b=afHBm4VFdQuGMTtmdzh9uiRVI+Kf04aEFomoVkPnumTqHVpK4wE0Xxvq+iSSvneIFrw9tbvGtO2Dye5kYHBIm/uHIMbygpuYwL9cHWlhVD2k4NrkJhvAoGCKnBoo/yMm12IbrtUPhAMlh04aVFlbz7WkIMrca1JWjIS5IJipAMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/neKaad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/neKaad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF11C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732121753;
	bh=VIxgAAUC+Qmq5Xzz0+QlG21Bzf7Foa9NvTUyuf4XOJY=;
	h=To:Subject:From:Date:From;
	b=o/neKaad9cX4BC2AhOagEmSTn7yxUifSH2zmCnKn3zWra85qdyLSvaj3O8qZQ0GGv
	 Kvqw0ZZVekOtGROZz7BQitXXDWxBgRwx52h1FwthPmriI2EVkRvQA26pJgc9iCHWh3
	 1fgBd7wEZcxiZ/3AojepN6eTAu/WncpvTYM809/pLBGX6fGbCUOPbogHYWDgyGQNs1
	 IpuIZI91aDAiTsofG9R32C6fOXtHkt9W3hZ5hjPJngHOJm3adNkw5LhaKkGjzVr3ez
	 fMwb2xndU4MsdNGcnlfXFwyqGGA4kq+NwBuHNeziTmZU8ZDfaupjIM607Hz5VKpeEE
	 Pv3Aj7qiDOamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C597D711C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212175362.26426.5179035440873476207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c25d8751ee8d44d2fa0f73b6ce846350c5aba9f84b21b35fe7fdc884405525
Date: Wed, 20 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732121753
