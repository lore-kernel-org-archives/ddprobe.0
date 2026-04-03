Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F813D6CBE
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775246134; cv=none; b=Q0AQEh9j7n/RQJXLFQWKz9YhgFIyq5Sbws4z19/P6aEV6zvQ+2oRyxR88jveoLij8vO9kY4jD/ZvD3gAMWgOfpWGcwr67eOt5V+koXePx8ObvAdKUriBdLstVk8xSDUbHjj169FsuVDykpHDu/4GqoZWFLqt6uJStp613Vcyl5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775246134; c=relaxed/simple;
	bh=hw8FJ32Eu9c6h4jmflOXkGw5FWThXQS11IWNIYYJEB4=;
	h=To:Subject:From:Message-Id:Date; b=IyE1kXhsmoXrFMbc3gEfZVDk0V3VNtS3vZpPtlD27jvm6m3rPM1mAWI68nK3rmZ30Qrut2gklE74Ah7XmQn++3xswuWbXEEBeyhMP4UC8yPQUBZz4Fwk7+AKc6S/NSDAFHfst5a8EmJa4wA/LIkdgommDZBIQL0OO9ARL0HBfnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JalBkYs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JalBkYs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A43C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775246134;
	bh=hw8FJ32Eu9c6h4jmflOXkGw5FWThXQS11IWNIYYJEB4=;
	h=To:Subject:From:Date:From;
	b=JalBkYs21EEgJwpNMSLFNnhUaR5zSJItBKutQm6v5jNlaDUM0whGhs4sb2vVzO8Hg
	 dm6L55NFd2QN5uFOb1f2qhVy4mZYletLz1aq0xQc6ah2eBR7aE2eo+RvpNb8HqoNOr
	 LDxLNX6U+HvD+X5r4L9dpM+zsTY1zrHRLLWWOJUHQ5GelUBM6Nw7/eq62aizc2PZTq
	 6nPTgm+UgJW1gH4kL3xdDZDqdnbHEo/y4Nwc1miJYVc/LxKJj4Hs/j5FzxD+CLgazr
	 x5FNgHLyh+jDeb7uRErmHYtE8u4JGpQ91165XdmiLjcZhY8BWHzhE7OXkaZNGZ9CA1
	 Qsmf2WxoTJLUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7505E8538E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524613381.31285.17528188608736054882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7faa9f0162324ce2e5a4a53e183fe05d467efbbaf8b09c63dc6582c2b7ee0e9e
Date: Fri, 03 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775246133
