Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E53F1E1C22
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743503994; cv=none; b=mSytE88zPBQSPya5iPwmLMXsBBsY15Fou+qAhH4E5vr8tmlAq/EiRzipV9wY1auwm7BJnPcTGXXt2G8wKHso4loU2USYSufmAHZYKu5yOyj9VpjkvADBQwmbbjWz5qbgKbafonofXVATMelQNIDWZFYT6gSmqUQqcsYsVbtb9D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743503994; c=relaxed/simple;
	bh=w7jtEyRjlZnSb/Pmf14W1lxbLkywQVRHj7BBweenYis=;
	h=To:Subject:From:Message-Id:Date; b=MTufCbISTfGUZt9z8u7ZY3UP1wgw9doK3pfsLHI0mFvLSEEHt3sFyO9jFSUn5gQvhzpaoPs2Ly9rFk5VUCTkrl6bQup8wHERU7OaxGj6jtHBc/8C2K8ayU3nLlRuwsgbOpO4uvkTxhsJvfjOyS7wKC4gAjyy2eQX6wlLTNIBuXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7Py2zyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7Py2zyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A9EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743503993;
	bh=w7jtEyRjlZnSb/Pmf14W1lxbLkywQVRHj7BBweenYis=;
	h=To:Subject:From:Date:From;
	b=b7Py2zyNgZIjjLDOHZgN52ftQQxfUfgSk/hPoTWtAAlOVWVKEWfths1eJmK8uy75j
	 +t5lOmlnNqjuuDChqYL/wiZdbx/POJhOT5WfQoi/+xS1e/gp8hKankNhPnnE2g0HCl
	 lF6YhpZfejHr0Dm4qQT3GDKwmMraBW8D3tyLouqQ+mzoaghehHDjQzcW2heaoSWmLQ
	 hIl4TbyGpMTIMXSJwD6rh/ZL1utUjoGAozq3atLjLF67VuDQeU7kA8bcyFOtnzgkW6
	 fZzjxnsuNeyOon351ittdHzZRC1dXzuKjf1f9xKBZ3U41F0EpNUgiUX+iESyeLyueR
	 4CiSqoFcSscMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D25C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350399365.3976.11601395518743928724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ae4d330383ca589acea1f11def007c1c57004db1466c4b439f19423fc25b43
Date: Tue, 01 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743503993
