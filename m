Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219AA2D7DE6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764364974; cv=none; b=shYPstAhDN/xxhzrrptU1TSzpk8HlSp1NkLxIFJx1JF2ZNehKvMpQnijXHfPVJRGaMKpTMnA7jXaigApZkdazrtQ8tAHYdL6vfx4nwe5jMGfR8nLir+A433v3lAxSWgwT6s57wNS1Hqf7WWy3Z9bEkUpKEM5wI3JYemi/Ygrv7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764364974; c=relaxed/simple;
	bh=1ILG+JTRHWM7Br/wH4sg3qgE7mY4z6Qff9zfII2OyqM=;
	h=To:Subject:From:Message-Id:Date; b=Whg43clz81VXelLYgMk0lQfFdLrQv1gmeLy1ata2RPlqkskvhJeqs4Qxqea6NyVF/ng57muQx4ySIAQKOVOC/yhJ2zin6wby9Gt90QOBJSdJDfEgEzh4gpqZ4PIOtAzTMYdQ3RG3gxFrig+yQBlftDL5WY2qQbLL4shbNjWDqKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Noz896e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Noz896e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B494FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764364973;
	bh=1ILG+JTRHWM7Br/wH4sg3qgE7mY4z6Qff9zfII2OyqM=;
	h=To:Subject:From:Date:From;
	b=Noz896e2pRMMEBPPIF0JzcJVLqfe87oBS6bVGUoaoHDSGMTX5cAGzfqIFUtB2l6VZ
	 NIUiafOAI8yrebvCjoZrlMXGPEa2hToQR1T2+dIewcUSfykDKGPhQtD7guE0S/N4ac
	 MpbtgvKQVRHUzbyD+NOoBsyX0abB9i/l5bTWjP2c20R5PfTmO8DvhVpzoXaa317Kqi
	 BmLys/xekDNtsX16MBh1qeecVebPys3/cIphcucx3sQtkxA0L557sfo94OyXijt7x/
	 rLMieRrY6tRgdZ3Z4/qXgI7wuRV32tuI5N/LFI5YsVT2OspJmyxk4MGhx91MbcEZMf
	 QTTRUNq2hCc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C890D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436497360.4241.843559728167849738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605b4ee29df601814c1e38e28a8d33e699f0be6d720cb7bb41894b9498e59803
Date: Fri, 28 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764364973
