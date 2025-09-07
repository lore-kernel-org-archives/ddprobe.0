Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3F223D7E9
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757264994; cv=none; b=oLNhi1NcH762FUYZDsShH+1G/dEyvWFJZOU+Byyn7Bwo0VzlsmBK+AZmi+XI6EfzrgIWHteUjxagBil9lB8B3gPsjwgOYDP7S6nXtVRVTrbVSiSmFHTyTS6DKbdhg0EmJgGtNg89Y4ZMXp/duAEFZkFHX+HCGm8WrtRIpJpK2Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757264994; c=relaxed/simple;
	bh=z2/awTvfuRFY/y0Ykg1sRy36O20kgW3cxJ6DP5SNT1Y=;
	h=To:Subject:From:Message-Id:Date; b=b9T44XoQD+P59RaXR+pZ1c6YPd/kOUAjEDIn3fzd0bJde5h4LmYUZFOJEdJM2PRtMumc+zwqillRlB6G+3IFfsVd6xbS2+mGzxboK2ROVuOE49AnmzZPY1UK5Y/T93fqnPmBS4Py9FzcGWzcefXM95ZBxZMOEa6yfySXKOHaNO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFgxvKQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFgxvKQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA999C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757264993;
	bh=z2/awTvfuRFY/y0Ykg1sRy36O20kgW3cxJ6DP5SNT1Y=;
	h=To:Subject:From:Date:From;
	b=KFgxvKQSB354yneJxJR3p5Lhiwyi6CFzjjPKmjVVq3rlSMUyzfnrI0ZVQI5HiAEkU
	 7J0tkxBLPqohCAAS3hYTAngaCzMzaINROwliz5+pipurFng3zf2W0wAWmlM2vabzGa
	 bkU5aAhi6ntaG9vHrK56LUMLAm0oVHjZGVI3Hh1wmQ+DAvI5qOVnp4T7o9vg8xdG4N
	 kcAxtCliUF/iG0V/Y7B63b39ldnRFutqsUSTgvDFJ/j0IWrJlV5qtxYCbgUJibnG3A
	 4wYJp7v2nI4F8RL2ViFTljIdRTLYL+ddR0tKvbAQ+hekOasPm4YWIw6qkqx4KxcIJi
	 o6cT7+nX/f5Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF2CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726499357.736.5142190717294842578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaab82a228d222d4a875819fb03e5013785d1f9601831143273540355d41ab2f
Date: Sun, 07 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757264993
