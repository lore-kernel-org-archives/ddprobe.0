Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC263211A20
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738691754; cv=none; b=nxrVY5Zu9T9VubocGWvntgBJpdhijY98X8P45lt+BP4xLn25n53hGCZGOrOYCwWD90MPTvAC41JbJIsa4Hpi7L5yLVQBYvXfLdxTqfg6KJ7Zcsf620R7Q3xDzsSgjE9SslsSM93c7304jaZKl1v+dauri5Uxw87kWT9KB+FnIAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738691754; c=relaxed/simple;
	bh=bu0gy/MD5fkMZt171AgTh8t6zXm6L5orbavHRst+9SE=;
	h=To:Subject:From:Message-Id:Date; b=dMiiWiKphcPAKQtcIoc1uX2lOrw0K/JIgp97eLK8jMrWFoxrqbVBVezBfbSdRx97VmO1Dw2fSZHXwWZDDLOy96rmohyvk223BCUW2bpwOu6WPRId5KoZ1OgaXI+mhAZ5svm+7swWbMLlbooJYJfd7apTgnZEfheEIBWZs03XsNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov0pDfC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov0pDfC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A968EC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738691753;
	bh=bu0gy/MD5fkMZt171AgTh8t6zXm6L5orbavHRst+9SE=;
	h=To:Subject:From:Date:From;
	b=Ov0pDfC3eR0C38K+VOoJ9U+A40XobxvNCROyVwKB6fR/b6vwIUgu/UDNWeIFJsT4W
	 gUkXA0JzO1hfKI579qgnIq2aVcCTj/0KAQx1BBeU9qBI1/pH8dmE3VHgZhVKOOClHa
	 mnuCVwXeGi4d3kLITyDP864Dv4rTDz/Q6x57QPdj+XcZ2JW46DeVZPr9cLOYbIK/ho
	 o5I6sMeEkFCIt5hLSI5rUZdb9bjo2eUmfdum80twJ8wef7PTdnkgMA2RtICvy43Vh/
	 sA/F14bUiWNG6JoVq6GdGgGKPoiFEpx4ababjkz7bcleZT+0mQIW9DG3sE2ZVw1Z0r
	 Odas4zKFpI0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91893C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869175358.31634.1996970059232446683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c677b97d662080d2c52dbe71e94ace4739bdec746f6c6553f2b8d8b625fb0b
Date: Tue, 04 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738691753
