Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44421C195
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759022394; cv=none; b=jLr2reIp0FgTY6D3c29tHTHFuBD88/DVaVH+ZmDsUOVAVWViodR+DNONGWejSpJzRKdrobTvMXnQ9qZAXpI9qk23CiLXgsE0sAgq62uGl7ToTmRpQK1p+v8Fzz800CxUhD5KFGqeSQzfGWodhtEN4Mp/quY8zB12g2TWLt6mnvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759022394; c=relaxed/simple;
	bh=Ojdw/N7uZwjP7o18B/LwTYnsYgLAlLtz7v2Fcl2RVnc=;
	h=To:Subject:From:Message-Id:Date; b=kISyMFQmHYcyykSvTFcJfOh/D0EvQ5kErM/xrH7IbU/YE5szHWwaR1E8iAa6i+A052MqeW7fNhA78HBSl3SnR+/cidw5TthtfXrKWeTWCVMLdjh5wWHAXAb0hh0hI6LhcR2O18YxUAKGH1OboAW39qimRS6H/TthcJvR4S0KNuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNj2V3+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNj2V3+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2549C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759022393;
	bh=Ojdw/N7uZwjP7o18B/LwTYnsYgLAlLtz7v2Fcl2RVnc=;
	h=To:Subject:From:Date:From;
	b=bNj2V3+04F3xOnalXzvUcxJTZYEihmdoFdVTEIUhfrA/mqiKfOH1R4CB5ybacyBGY
	 WuK7Pe4z8aeBFEXUT2rW/OQtp/QQ1zdlNvQYRbPKym1+67J/eNpm44y5S9FIx5xmjY
	 G7XuUalYetwvpP6GSThnlbEh2x7nhF6ZCDG+MXgDLt4ZMnWv7SQgLLbJkgzxpZv2zI
	 YusqUk4MiK3CbdklWKrWMJWRwSVJRrdUPLxHx71ne3Z8TNVw7Obeq07XrIVZoUGAPV
	 BonchWzIE8ObeY2I/eGs/UByeHKuGUJpi2ONJelRveYtn9Wqbyb8pr5LDLMCrX5usX
	 dSrVk0DGvj8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE68CAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902239358.18200.2038740486009207768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030bb7af4d6d1235a3412addb486e0f05a344650f7da009bf4c8ea974945dd85
Date: Sun, 28 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759022393
