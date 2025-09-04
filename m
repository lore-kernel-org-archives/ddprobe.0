Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C014AA9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993194; cv=none; b=BEIVPgFEIvMti/ntMMOJlRgG+bhuYzXeSESjlFodH0gYgLw/nLHiFTzr1ujci5KKi447VjweflDPSRAVsW1LRyMQlfvV7/uCAZMQhl+hu7w43LRHI3jlf48Pom01D8Jjpllj28oOyztaKjAIoLI7eB8t2mQP7akqNmJvnkxEr0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993194; c=relaxed/simple;
	bh=BTHabjZGRWG8lP3rPor79o4u2GkzIb/i7BO24MmcKY0=;
	h=To:Subject:From:Message-Id:Date; b=nzet4Qmj2EPsSTAH/ZR9Uc0w9AABIwT6VNPA4C30H4wjBeBLs5uv0LxItUuG534zo897aRISySzYJZgYLrhmvA/Y652naSv1N4merFbod8DVHnWV9B/GQ37PlLtsvOo/Xg15ggE4jnntp7Yy9xmZFo6IZYStEvoLzVv+kb6+1+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5lx09T/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5lx09T/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756993193;
	bh=BTHabjZGRWG8lP3rPor79o4u2GkzIb/i7BO24MmcKY0=;
	h=To:Subject:From:Date:From;
	b=W5lx09T/ttbqu1/u/IAz2PiZsP3JWJR5wijA1jFOC/Yo1kUg+gmFddsOwBDXA6KLR
	 X4mpEYSPJOoufL0cB7KpEloQxap9TxwuAiF9qPQ0L1ugmmx7BQDq3CWhvOMUyRXzN2
	 5OOUP+Gn2hGIuqAYKswdIgR2WP7nT+83rQ4MlfdbJX+q26OivQCXXx15mC77ylc+XD
	 /anZ1drwWSkirDNe22Hx91OgWxvqNTfl5GRMNOK3cOQmD+CEE+7kWRls8gu4viZpRT
	 6aRjfePZj8Tj/qKs1+9ALZstCj5977zCiTTgy6X6NSmqTXS5R8fUsgImwFY0ZoG0MJ
	 Z0LyC+fkHTKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0CCA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699319357.21064.17369792738614951103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a049b8bbede4b755803e1c6f11eb715131c580249c1dea091e3b0df2348e2d
Date: Thu, 04 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756993193
