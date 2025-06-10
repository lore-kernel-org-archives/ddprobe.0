Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19265625
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749514194; cv=none; b=bRIpAB1xBEkjt+wftCG/YZE5q/Uznoc1aJRSIW7QtJIr5ar6ZqZMCrKPRG7UjFd/nOKWmeyFoBSGaYcoqAVWXQkm2ZXQPxLfrVOSoEEAvjV/V8ylZjhj1aSwykpkn0sIMejZAHXQC1qLt2+FBXKOpobwnAQmSQALA9B6Yj4OVr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749514194; c=relaxed/simple;
	bh=hC/thQTy28expTKHj1HtyL2+BfFbBvtkqChH+k1lWCg=;
	h=To:Subject:From:Message-Id:Date; b=caKJ7lAiJh3qs6VpVcClcGi+ursajv4L7pjzuK7KTB7m7sxkm3ULdvb1n2s+c1fZg/fg8s9rBhMng1lmsC8Fr8wXIrB1ChnrTYs4tzl+BnIyaq/BoOni7P7Z53C9+23hTk54ftuaKvW55SXTOn+sZlBj6eLwfnCt9SvAY4ikNUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeHWqE3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeHWqE3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749514193;
	bh=hC/thQTy28expTKHj1HtyL2+BfFbBvtkqChH+k1lWCg=;
	h=To:Subject:From:Date:From;
	b=MeHWqE3PhMEzTdZ+dQWkRcT43TuARsZJw8p4+d2P7Uohz5FfeohGYgy77jiy1mI3Y
	 CHIFFQwA5blg+anXdHSEPwA/glI79eWc0TmkdB+h9lndQpWwUR+f+duxMEwV1l3tUc
	 cNYf2tSZ+CAU0qchAdLrnm7IdGec4vxpPR8pyurEHAueD3AK0k7lSUG9IwAGgsURjw
	 KeY0/3IOGeunhUXBwU2LLxpnoGiei7E5t4a+I2coTO71AnavezWxPdUqF+P6G3+Vw0
	 gr9BFu5S9K+iM/Q98X9Xsf8miCD6gR4wZ0JPXvFxLdwHaI8HshcnwjoJX41qcj4pqQ
	 0I67WSTPLG12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F270C61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951419357.8358.6041481606254092053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024d57afb3700e5162bc6f7912c6b7e76656813e8affe4d448f9aa957c80b1f8
Date: Tue, 10 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749514193
