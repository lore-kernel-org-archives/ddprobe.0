Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DCB354AEA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760857194; cv=none; b=vBMCz88DmyouWbZsSRdjpnguYvZjU+jbGPRfMkXi0KSvI7G/xGIxGAtHIo06LgtOUeg9zhD7/vTtuG0/RjVNsniG+oHTKcrR/tyOuc2KGVT6xKCECE9vaI6f1Ey75k0iXwnEwWSEr0rqtO5Qf1QsBWK1xnz7IqaSXbMfYhB1D3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760857194; c=relaxed/simple;
	bh=DXO8261K60kPmUKVxY7cEbmAhYkqRxglVLszU+6BWBA=;
	h=To:Subject:From:Message-Id:Date; b=OsrELVZHIdhlst2xpEbWeT6eTV3y6IEIGcirg28v6c8WN3ApijVwGy2p283wY1saTM3IAgluCPmD3jiFPS7p7WmldCe2Psms6knyvnJRO48lDj0xlwfRf5nQ/7duiOGrm+Yc/INIub1PDCfgVVgFNQpWyu5KKIR9bKumwVvpU4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxkEMzvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxkEMzvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760857193;
	bh=DXO8261K60kPmUKVxY7cEbmAhYkqRxglVLszU+6BWBA=;
	h=To:Subject:From:Date:From;
	b=FxkEMzvSJMEcZtJkz3lvUvSVUh/7mdogb9FPAQatTdrtHCpHGB94ExTKbA1SW5MWL
	 UnUwzOMKzAJA3/5SYYKk15A6nfI+4IXj3ne29/kVtAMDspzZDImXVyFq2bB69lUgQh
	 qQU02NUtZIT0u3FAXeS+p5JuMwgDzY8PbbufrYFTgfmZbECwgXeD9YylpWTWe2aLXO
	 Pqfl7NXuUT/leQ3I6nu/IFbQp45Ay74jppDCi+LAZgLurkP1nR57o1kf3h47+RhFrI
	 yUm/k5eR2VVCOR1JMzJDoyH1V8eb2FfAnsjhT1Q9l9GT7T4DWwp42WTnFLiZcBAZsM
	 L5FE8pXJgjSrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965ACCCD1A7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085719358.3188.2434040014656795793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4968029803fa9ad5ce9c4a26360930ad4393d8f3e4f1f5b342dbd73c6c92e22f
Date: Sun, 19 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760857193
