Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2357D1C54A2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748432996; cv=none; b=pfzo9WzLL78u/P8WVnAs7M2NsXhAa+gBi+RynotmWQ8aTa8KFMU/wBtqLboR4eeJ/dmVkI5qDwbO+trB0XfYuTBryubJZ2fnrKATVoQkR5UF/UEBwUp+0wbjgRHmcfrVBo7/6t5NIlGAV4hCSHaxSCphxlLsoQxpqpmhpqqV6HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748432996; c=relaxed/simple;
	bh=+/QHPN56CFggUISGZk8AMKhtPIMEaU70MJRVAhR4E/4=;
	h=To:Subject:From:Message-Id:Date; b=nQk5Y4icgdlt0g9uXALJ+HEZ1MJ089/zUlJVVUnitbDa23uw0cAWAxrsGkrCuLRwE4N9/k6ls93N8CIsEDRTHferwzuo1d9XbHxAe1CLUQRj4H1oSixadlNXqkGCZRB/OTdGPu4OHJ3idgMpAUuz7kmztPelIcDnZFnXINxE3jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ6ZpMv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ6ZpMv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E09BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748432993;
	bh=+/QHPN56CFggUISGZk8AMKhtPIMEaU70MJRVAhR4E/4=;
	h=To:Subject:From:Date:From;
	b=IJ6ZpMv/woE7N0JR0e/iNWFFr5okxi/NmSQBLeL70APARZNLP1YHusTpsHD3T8kXX
	 lFhqbsvXgPJ6Ni3QY2d1Lt9zIB8CgHro4x2YimDbSWzWburFu+PsBvnKl59g/DIgVe
	 cqhbgbfuWlhGvHRF6aaS/Ko/FJr5dqADO2q4hrWAk/MpQ2n/ykcVmslBMShERNT21o
	 aXrH2SMetTt5R6+VVMnYBSLDDdvn6JFw56p14EZDPIAgIr8ItYJaoMCGyITOZ+1o1K
	 2wy+4mYtEJBixLQM13QZSxnNa1xrDpyvilr2hEtDsPpvZr0twsCh7NZF2lix7Efzwp
	 s2QqZgfi0obaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D9C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843299357.8591.3742361861255187947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8021818e96c51b4b663d972e9fa3b17f331bd14393b14751083e7eb8a1ffccbe
Date: Wed, 28 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748432993
