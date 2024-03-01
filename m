Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F184DC134
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709254097; cv=none; b=TL8AeVvdnhG1WewqDk+eC5W+PE5XUUfm7tWn5TWAz3n1ykYCqxPXTCCRhprjxTQiB+EurEToyRWq9HKbgDhQC8iZwFely+hiAiJ6uybMYG/6abb1aLLr6k1t/vfCe06sjhiKuVg9O7kipk3f5naoOljcR5UzpshKie/UlIsxyIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709254097; c=relaxed/simple;
	bh=caX3AE8QNVpx4GA7xjqrBrZGQW8s06fSFoiOHPXve7A=;
	h=To:Subject:From:Message-Id:Date; b=GhI3X2UKMkc3TfaAfoUE2Uqh9urwM3vP3VIUSruh21+SpvJozvkPqjzkS4y0FOeNhs5kHKHpYAExFdA+BasF8RSeqAt9xltg/kC1jpPvh+tqcD+QYRlWP4YTjAR4XRLMZNi+Fq0Gy33Qp89cPqV8zqDIXEiNSdlyd1uhkErz/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDAvn2di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDAvn2di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AABFC433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709254096;
	bh=caX3AE8QNVpx4GA7xjqrBrZGQW8s06fSFoiOHPXve7A=;
	h=To:Subject:From:Date:From;
	b=fDAvn2diuqI0mVeBG56ieiQqGpLsHAxCO21GvF9IcuZIkUrRKNCQVOu2aPjMLKWBs
	 N+MT18PmyoVg3uzkqzTfzuJo8mkuCnpKNtUue8BAJ9b8cCdqNShZLghN9m3mZINL0l
	 zADDDFKyCKhuJf6xlrZ855aZWAhaQoGLXxi9G/W3NFSV9CJsilcnUjTvZBRU5epETm
	 pCSlsjAmfksUpMzAJx79Zs2iIFVtQVd8K0a8HB6l72+Gp6eHkNe/+XqZ0XmZcmLQYQ
	 6LwnWw/pGAtAcpHSoKWj2Xtv9UfF6JWaqsh/E+ic167yLQuaTPD698LMVn2pki3aIW
	 sTufngkXVlwpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6161BC48BF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170925409639.28116.16017419954709193879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2231e82aec7098c7ff266bbc85110de2218a5334c7c8857de74b885ec855774
Date: Fri, 01 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709254096
