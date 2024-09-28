Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347DE199236
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727491554; cv=none; b=CxOK8+gy3tRM/U66JbGl/N2Z2PcMjghs9i5NvnJIoJ9u+evFqYUnOTL2z656s33mthoO5vmz2XOQEjr0GNl1pgixLa7WaYPetnWi6JhFmo26Ds+3dZr+1AXb0AKb1kH/eaQKkTpCJ9wCJaF19CtuKU9E0hr1DvkQ7uM0BFwL1u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727491554; c=relaxed/simple;
	bh=Y0NnItOOYgr7SluzcdnlYPtzzZlLgPighdkaSO8wLuU=;
	h=To:Subject:From:Message-Id:Date; b=YCnnn1HT2wFTC5DxIEKaWCQe3hMWXL/4XPrwhcM/RzC85aL/IpcBUxhoGg1lL3sGRMtTQ3Q59KqZox43jCWvBH7zkFKpW6ZXNRR0p97KKU/m2UaqnH2mhjXnFrsmTiFJZt4su+31f893JOzDC6mefZ/LVCx2Vfetm8cBvI2gYsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnlwKzbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnlwKzbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABECCC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727491553;
	bh=Y0NnItOOYgr7SluzcdnlYPtzzZlLgPighdkaSO8wLuU=;
	h=To:Subject:From:Date:From;
	b=mnlwKzbIyFq+9ltVpJAFoYkooqX8P5sVZdr6SjM+luyjk2GLexR7eNny7bA7vQHrm
	 t0lOiLWqLcuEUjUxjLZ/kJhpH3R9NCtMMOTYdSamrVf1mcEI8XUwcZbQXbM3uYdJQF
	 12YxZP32mJfV/gAH2DQ1gYjZXglum3egRiesTyvpbCMvlRE4kxDriYQ7jZwyc3zOqA
	 DLDOqDWAncahHx/McpQx7ehFujQUvFD62wyIDytYiD/vWlslE/7/t1+rzCcOgKtvDz
	 nYPXfF07u1a/Db1AJeSAc83KALbZ8lzJVbXxRJpnnGP6AewGKcSD4kqx+CNxijGuJy
	 0trSEReKzVCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97695CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749155358.12250.7304455639678213421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a3fab271130f8e013df9ec227307cf0e9a820df77bc3e1beeab051edf41812
Date: Sat, 28 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727491553
