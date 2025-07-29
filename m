Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E796186295
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753807194; cv=none; b=kDqCG3tr1RRn2a06T3Ub0pFMDsbZieUU2RcCNHhw6vt4f+G2DYHyqtyD711wB14E8zFBMMHFpPxZZh13Z5JwgD9mdkwzu9nm7f/ZsfOF4sjZCm8V9Zs+MnbYM5dgAiO8lloUQ4BQ8FBtfRnkwL4v4ZEU8NdEiiKRy6zRHpiG76Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753807194; c=relaxed/simple;
	bh=1fRFOAvvg9vru0CtnheZ006Sj8i8eNPnTSl7DDRU0M0=;
	h=To:Subject:From:Message-Id:Date; b=S018qAL01fwzA3+Q2/iiWCF+L/OWYJBx24wKPMJcFuIbhNzvuiMZXRxc7uEGCi6w6t1BizZiUD3xU/mZnADShTJ65JfBvyqxx3hY7d5ZViW822kRBNDC+jtoJTag880b2db/uvsTKTwQ56GNoCCWfLzeUT+YUFXs0ClVa1vP3Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1IFVIZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1IFVIZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D4C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753807193;
	bh=1fRFOAvvg9vru0CtnheZ006Sj8i8eNPnTSl7DDRU0M0=;
	h=To:Subject:From:Date:From;
	b=L1IFVIZPU0+My6Ob4kbLhEXh7y0ekv8fKEhzYBpLXfvrjlmlNeA6e+3/eyCoCuS+F
	 WCuIzhy56xlquPhiJ0Z/fR9wWMksSm/zY/FLSTaYDnHPjGYyTk8rNH6htSIkL71bXA
	 eljtxz/9bKwHvwwmT6AqTQNcfwnJMaC90wPeXeza6aAKDBPFn+9BxZKZ74WSj6536i
	 C8XPlYJdhEX2VQ0/QZANqO/Tr4EkZRzflUa2RDb15HvBeo0wXNMU7pI/cTZK9odcA3
	 5jQl4pxkWS/IjMMKOezHbcxkaYS1CyJ6CxADwGVK/Gnm1YfbehR27dW/6gG6XGzB+l
	 qx6cKZABpjGTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C8C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380719357.9165.5582899841096131185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737008a35eadc673a221d14c5f6c92d3ade45bf3d418ab9335308bbdb1e43435
Date: Tue, 29 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753807193
