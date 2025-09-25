Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E79B1F95C
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758764994; cv=none; b=L2acQrbx5f3yWhK1hYIHlA9LgAzASHQ8JZejWAHSb0HTmctnTMSGUR0V/wN8BsVMUljTLMW3x4zyYcHNl5nGWqaVmlnM2Van48d8uYsiw/dBMKNAp4A5sYOWYhp3JnItcF1IXdzBHMNjVyrVqrR2tFQUjYvFLOBV9LnGv1Pj9yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758764994; c=relaxed/simple;
	bh=ZmcW9WN/qRt5BENMsY8oZ1YbDcNApDOE+0ku17NTg28=;
	h=To:Subject:From:Message-Id:Date; b=CV7IpIYGFuOJgw9A35doKDCoKFHQQVK+SEW3a/GrI+p0J4kV4THjIByjsPrm+cIqDnqZ6RnPOumfMXEmqwaj3UdhGZleW0RPnk6LitiuQL0r2aR7laDXi1RvlhpxIExhewiQe/SwgTJ9wJFiBNdefWu3Lj+gzp+kBfhQgH1x+D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdTtYUgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdTtYUgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03BDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758764993;
	bh=ZmcW9WN/qRt5BENMsY8oZ1YbDcNApDOE+0ku17NTg28=;
	h=To:Subject:From:Date:From;
	b=mdTtYUgRyUQ0fmHktpVbLaZN6wZAE2Y/XUyb0X9scGFYdJcViBaePTFBQn1zBWrbw
	 hEHyzX9nDOCnjKy2WPSnfDSLgh6BAv4erf3XJiWUOiq1JGkbmgijGump7TCRIsXrXO
	 nVK8ox0n1C/qHvVzquZN2Ka+pVRfqdMqzlPQzhs2+/tYF7U92ltHXOsIGhEpybHVd5
	 12+P4HcZJDRqRa+2t/5lxijrp2u7NPQAH9LuoPifD8jlQl1x0emtvvkDxfjAbVBpEs
	 ckrOpMN7XQyE/e6r6zOv56AGtO8upYgsM5IQ9JgJR7tJ2RWVjVQq2jzYRIWRrHkEye
	 BdOWIqNnCSlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF68CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876499360.10289.2262475080005059112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ead9e3b46aacd9162d8b3b7d04666d60ca9222693152d96186475c52738c13
Date: Thu, 25 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758764993
