Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0FC1805E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758497994; cv=none; b=elPO7WAN2MRV7HFXqsrPhwqw/LLAFR4TgxDd/CJu6YJ9CvfpNFJK181OVAMNsxGRSsZkEmxKIBBti5BQdR0I/m4kSjIfDXQiH8LJ3/Np8l/NciAPWdcupfu/r6k24CWFNttuNUbaFxPyA3xQmS8Yq2oF3CtQEiWIwmtP9E8/0Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758497994; c=relaxed/simple;
	bh=6CUeGmvPBeK1YDA3yHkKzFOj9zki2cQ1puGBq6/GSAc=;
	h=To:Subject:From:Message-Id:Date; b=kx33GqqGnl24rF/MyIA4QiWXaCQdl+CgcqwPQAgW8W1hAYwqckDx7gagQdqokmP4c0GWsIFAI5XzvvRVZ58UW+maABtG/2/2p0O2p/5z+F0+fgB/Na/aLgN74lVahePcOJyBms7+lsHsWcFnN2x6bs1VygTVihRe2UwuupxxTO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoCUM4fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoCUM4fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C20C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758497993;
	bh=6CUeGmvPBeK1YDA3yHkKzFOj9zki2cQ1puGBq6/GSAc=;
	h=To:Subject:From:Date:From;
	b=YoCUM4fe0fv8a8XPxuEaEeBw5p5jF12fbEMS4rcfJWSmbR9fhl3MqIvipqFJ54iyk
	 i33J8kbvIzfbvWXgn3Bhw/lu06pCjGf+9BCrw1aP37eql2pogOOC++YC+kd8vkgoEA
	 JXQ5Nf1H75sFxsHgEg6xcivcxobc8an6eZ7hag7Ox/+pdoLf00kQ3tMc3z278EkCUi
	 NRk1yojst36kXoThcvFkwupG4uaAUBy0BjN6PiAcKvpMcES6fi8Kul6Owsm0fICQQm
	 6i8I2nuuR4On9BPLvKjp/aWTb2WKbbhz85J3ytM31UT9E6zK0cVL63rNiQcTypt5WT
	 p5JdTApr6oVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FBCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175849799357.27388.7314720830461532402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e4953d5d6e6c328cc7025a548d0aea21816059c946016890baa2a3597d364c
Date: Sun, 21 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758497993
