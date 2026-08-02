Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C45296BCD
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785708034; cv=none; b=RNU6+qhvwSLEVVDjPT7ohqJuPwKiUZh2q5x6KQtYdLEEA7U8hCAHC+YJuX24wtPidp2EfC4QkpSpg/aRBFP71za5PGyjNdeIyRVCIyho4ewCA+KNmz2rsc1OoHt2hu39DPtR+b36nAEOAYq5mUlcv6IvzR3HeeEaY5GyVmExB8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785708034; c=relaxed/simple;
	bh=00/Rt6EdYZJSuTdnweV3kSU4kiiS4/2pyaXjs1U03zA=;
	h=To:Subject:From:Message-Id:Date; b=WFxxqy5SQtCAV8Svvs6BTuQnhsl4gUryzeLbx3GU9vo2a93ipmhBDSKGPLfXyurmukZcDwUS+89l8gYcpKsddZ8Wh9JJIgBH6W/D1SQRD0fqu+9V2tAJulP5Al9j8OVPOm2mv2xk6NL+SVoqkZCyHeTG1kTcY+XzxxACsNYo9d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuvYo3o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuvYo3o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1357C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785708033;
	bh=00/Rt6EdYZJSuTdnweV3kSU4kiiS4/2pyaXjs1U03zA=;
	h=To:Subject:From:Date:From;
	b=VuvYo3o7JL654OuaujsPPIevzwUdbezzsoP+8xt9n+/J1viQhnMsu3YLLm7hA6Uhr
	 itzqIcYioPjjPvwup4Aw5zqa07a1r3ejtd8coaNhXcBIpFmkIWkgLOhRvDSfUFDboi
	 uhpMSmmhpEoD4AuWQmP/uCg21puyqhhRcMcxWiCnkpcqEjcJzVHbKJDykXp77kokcy
	 kLI8BFamKwEG0QYXfZUHUmqCPWrCkPKZZQphC9SpHpq3IB92g8mzmCQLGrEntLLORA
	 eR+HWL/fQlBvvcot7HQU3mOhZt93d/BpxBatxiMZZVvcQtkgMP+wXkdYynyUtX/7c/
	 1/fGKOMvFUAyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA05C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570803368.20660.9630296397549118656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc70dcb22105df04fefa852760ccdbf45dfae0323e47ed96c8c8ad65a57e363e
Date: Sun, 02 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785708033
