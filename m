Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D7A3546CA
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781324194; cv=none; b=nlWVt8kQAOZzYWcaQWLVlqjgvz88e5PRvMwtW0dCDBSrsD8wrm4abUf9JWsUWQaIpblpjCZVU0V/MHKGvDSO82S0+8zHyPlOzh9Jkn8jAVwk6zgTuOsI6rlJC+tOD2gBkwu92CfBREYBoVlJJqzQuqUkhOJ3FDjuxgSaWI6yI5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781324194; c=relaxed/simple;
	bh=mF3LOmxZYr/kTNdcKJshHDxr3kR0iPOKoIoiUIEJtJw=;
	h=To:Subject:From:Message-Id:Date; b=cn/4ZegVGYu4cMnEk3G79ud+TVcofyCK0W2zCjl5GyAeDGc22pmFfH8cF12uocfEAGQKx0VfkxKYDZdTJYRH88WuqfG7eFb2L5qTQtxGGPrlTxrfMzHYZ4aJM2NSanbNQ3PL2ASDirdVlvz0MLKsTlmRJEFxPqV7VEfB/h2QYFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjzN1BF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjzN1BF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24CAC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781324193;
	bh=mF3LOmxZYr/kTNdcKJshHDxr3kR0iPOKoIoiUIEJtJw=;
	h=To:Subject:From:Date:From;
	b=FjzN1BF85rwFj6NnXMI5dFozsp+V4OfstmyzPMrIUih/fIckHQMTG/0PB1i/kdc36
	 BresHXGSyH6pRFGz1NW5G6g5kMkSQd+DiDENJQNaB6jwJGyMoOd3uI/xWjTsgzqw7q
	 gxhNeqzW7Q7/BIlJjOP6cwHnpi1OHdE4SsPY3AZHkBW8GcnqFWmGHTJIjNDViXXW0H
	 XdkrgWY2+xKS02tL7CIVZg0rQSNTwEDYYrdwY3kNyxDvSA/VmxNai9HRpEgzz+GagQ
	 oz9YR7gbD5b6TPcRoMPTZbwF/nPxCbnn7BKuAluqm+q3K+IcEH1I+gQohWeXL+8mHq
	 ZDvFCqPIkIzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B173FCD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132419369.23164.2222085476570881046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcba0cdfde962e5f33298957a324030dff01c953121b609cddde88ce0b431387
Date: Sat, 13 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781324193
