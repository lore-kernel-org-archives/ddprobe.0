Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689CD14F62
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716264143; cv=none; b=Mnt0EgXtLEbvwTtQXhHXcIvgWrhklH6YEke2ZOnDAOqhupDCl1bmqZXdgRxfKSgUANnpoAFOsM3aSnLKyZ0d4EVfgEAeJE7fedeEFfIY5vj+05BrWOlY0HcnnON9sFSVgQG4MQHg6NGViegxfFF/6wfgU2WbYt7LYsNxOks5LAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716264143; c=relaxed/simple;
	bh=CbCO1aq9vvi14kfhfyH7ThTa0bCN3/E2oPtjo9v06OA=;
	h=To:Subject:From:Message-Id:Date; b=Dw93RSD+1lECHC4GNMei81VhWy/ZGV7nZIsZhIVdrL/V8dq+hLqx+Q/e0ndRp2ZwpScEak1iahEnHg64s9HlVwS4KWl1PQBIlyblCD7aKS4VWFeeQUkuu7v1aOp2ZgoGMXldT0G6sBM8Pubvphowq+0N1ESRCezC5AXx+tY3dG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtfFNvQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtfFNvQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7F9C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716264142;
	bh=CbCO1aq9vvi14kfhfyH7ThTa0bCN3/E2oPtjo9v06OA=;
	h=To:Subject:From:Date:From;
	b=RtfFNvQNFFAKtpNI561HIR5BHn3MrY+1lN+e1IT+kLaanS6zgIxDtCFH8GJev65su
	 SLiMjbBPsFw9aHsyAh3JAohVBYZU5VNqc6X7aPXhydaSQem5BmjvK0se3ZlN2uFGGZ
	 JlpQqppDfq2IE/1g25pXRnlXH4LLgv8eaQ7BvDwfuNOaZmNnIxsY7N0uGq5TkktddG
	 g+fabNQQTIK18kr68vkFTP37m9EejhWPObHJaluN7HyR6Bitxb/Ee/1HAsliddNBiC
	 nWWBG1DtEPMW1WckB2FTR3VYToGXH8nh3mYuSSdnS35dRe9YfwVG3HZ9tueggXwAJp
	 C7SL8z3jbS9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D49C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626414280.21372.39029824400985805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d8450667c7ada0725cab859619a2517d3e5f4bfe4ecd858f8a2ac4658ea32b
Date: Tue, 21 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716264142
