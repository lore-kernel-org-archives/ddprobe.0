Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C66416631C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724248554; cv=none; b=hZX9+D7HU9c6/m7bVJYhcMKyjzfPkNtrwlDvb+M4p7g1TAmvPp3J7AaSP/Eso5znMIk6TgzJMTESL6GAyWQ5PJByzh3c4S+jtc2RVduPmyUBV0D3X0PwoM1m72+TujQiXm9rl8TQWM4LrZNKEb9YWSSVbRjQKkRDi0KJqvuFWTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724248554; c=relaxed/simple;
	bh=xq1rcgJM5AmDfDFvZf/RVLZV6qgG/HNEViMEKNHiwEE=;
	h=To:Subject:From:Message-Id:Date; b=ldYf8mqM4iym6Z9Awlf6dTUSguLtY873kVvsLSJp9BoeblqQQphX5FbIVT6ZmmNbbW2wF7DJMD1bAAGJuU+uG/z5F7VK/9IAjVwL2/iXVwTwHMVtXTgILzLnG4iWfyYoIWFrmFPROqJsCvw8ICpJITqOgRKGqTdFJjbIxy24+gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAl0HpHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAl0HpHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FEC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724248553;
	bh=xq1rcgJM5AmDfDFvZf/RVLZV6qgG/HNEViMEKNHiwEE=;
	h=To:Subject:From:Date:From;
	b=HAl0HpHMDzxYTA7e376wZg6r0089sI4YHjDt3ORs7TIWH+pKaGzPRe2/mjGxKhlpQ
	 rL+Hc6f0Os9mC3l2xGcQFkI5nLChcPg++O0ZpLHkVDTq5xyHe0OeAON/bsD7H6rbvG
	 2lfQIdmZZ6DmGRrjys0k02i1KcDReIgREhORF/7U+K14NlrPJ7x2pnkgGLzNFrf4id
	 G2RY1QCnKBpJqhOZNjQ1r1UdESCplTcKrdYeDhRuzKs2h/WtDNGCZ2MpsABY/Wxmxn
	 wCoNcTfpfl3XV+Q/yGAIf7pjfp3UvRN6e+sFGdnPZerge5ECzx0LNoUEtgaRkNK9F0
	 qrnMJekgmJuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97462C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424855361.21678.18117724814041981552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fa041f6e0a313d965a0e8144c07942cec3dac1ff8a99da6c1a27b5da5f0c52
Date: Wed, 21 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724248553
