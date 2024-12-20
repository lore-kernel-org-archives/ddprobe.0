Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1241B1C4A16
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734690354; cv=none; b=agw9+/PD86kYJPpo5dfQTReaI/hYlowZyMzeKyAmmbQsLaMsti33DNUDSw3EQSG78SkXoUMaXSbrvizAaRR/C9CcfLWNteFt1Ya7MlaPctMxbtO/R7BFBqc+cjuVGox+YLPdPP7THBikesjR3GrMhcheeDMMZB5Pdh76MhLCU4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734690354; c=relaxed/simple;
	bh=5CdoXPUKyPS5Ey8sf71j4RCPWw4j2yJfvNVPYtXdqyE=;
	h=To:Subject:From:Message-Id:Date; b=qHGMKhomIZ0CvMTbnfQMRJk5j73b/Pd2s804QUJBF1TG0StVBDpZ5PPw+AnkzjTEBzK4WMWQJBmDd37KxxPhTgwsIfvuZFqiL+SrGk/x/5xvwWoQ5uEVCb3bp1PBTneTQzUXg2E2WyiiBe5e9POtmgdtEDKfclgUicC89ew9DIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppBmxdWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppBmxdWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4065C4CEDC
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734690353;
	bh=5CdoXPUKyPS5Ey8sf71j4RCPWw4j2yJfvNVPYtXdqyE=;
	h=To:Subject:From:Date:From;
	b=ppBmxdWpGLpfT4svbfNyNyt6DuZi/5k1DXIC3X0efA3RL7UmGVBoqpGBHkp+yHsjG
	 fZFLiGMFXhW7HwvjLFIIN3opM1TgK0KpT1PD8SDXUIxUoSUdRoDNwSXAXLwHdoypnx
	 nx5N2bo4udxUZxOYF+ul6/fB4mf/gxjZqjpKHZGB+ZG1TvUFgdguSACTP8L/xG+P9P
	 Xi/HaYQ6fCafnkqQQYPw+VSheW0eN7qnri9As6/SpKVIbPQsUjbNqLlfp8q970Rp+y
	 i0cBduQhnvALMSXuAViJPXHqEV0ROAEWOsvF4sBBGNERxA7CdxAa7S8KSUDjWok9TA
	 m1/6Vwyk1HntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94016E7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469035359.2148.3811390923054906892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f3611dad4634d1720f20837ef44c3310cb906845662e7775c8ab6e57b7fe43
Date: Fri, 20 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734690353
