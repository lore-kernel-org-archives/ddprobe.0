Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E2B27935B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747419594; cv=none; b=Y9tbMr6YsHnWaEdeXF66spUnmE8zxQqGy80uW5Jp0E0SW+3XB9+Z69LoS4RfG8frMg2i60APmlHYESI9Mh3ZoxBe21vzWJJcl0dyv9x9bu16Q6LwzHEehocjez+KVxfWel2RojcnSgfewYKFuF/hok4pIDzjuZvsrFLKFXjRkVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747419594; c=relaxed/simple;
	bh=e4fV8xcTlIa3Yc8gg7yqRfmJNLCErA6bDcLLX4cPk3A=;
	h=To:Subject:From:Message-Id:Date; b=ZPsgzxmNRnnp3DzA0LlzXhrXuCXgIsUxLiTRJgxGGtoASUSLqRLXesVh1xTCmVdNJ/8ZJphtwH01aVCKiE8e6icis4g28+KZ+Kd364oH6sXfwSBeuAaq0C7bj+n8e9V7sstC0uwPdlrrZuIhhpKF3uLgA0oua1CG0XYfhxFV0D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPEpuGUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPEpuGUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747419593;
	bh=e4fV8xcTlIa3Yc8gg7yqRfmJNLCErA6bDcLLX4cPk3A=;
	h=To:Subject:From:Date:From;
	b=PPEpuGUVRjloL6XZKXrVqAQmv7Bwl9Df/s7RlipXd2IyDvEBYIFuNvV/1B9HSUohH
	 jVmZkuof6mz+G/moSk9m9CDij2kAYAQelRcoZQ40pWLG3ZoULdmpqPQ8tKzODmFOxs
	 AeRCoWDkqjo90px1bIlmD/RL722zQcPtxsfBPLFJzLX7vgvfKcB/Tle+uNI5tQntC/
	 sC7qeWf9uDxxpNi7qYpF+sFsVO6OMqKwkCooYSvw4DF4ncJ7yY/bYXaGUqc8M/7ttd
	 BLJVJ1pw6LlCTdnHPJHNuFPOuLn369e7DoKpTMI5+YDu4jzQLHMLNgujcvxQ6TsufZ
	 LeLOpslRp+zNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741959357.1956.7325044417262132104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0c0e3e6a11e41c18e9533a5170c1a0b2886d8f12d068e173ebc02cd3e28919
Date: Fri, 16 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747419593
