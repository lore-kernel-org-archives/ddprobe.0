Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2235F36B062
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770099234; cv=none; b=sZ2baA45GJqZFpYPzv1xd6vyMro1Uu1jaDAn1DHxqotxBi6sxH4xlOWmJMao9sriRT8gtdnoG/zP1fUfVXguapDENI4FMuL4xYv/hZEQqcKYQ+AN0qvtY1s/AaA8PRFxPH0AenQ5yHCJOM90o+9Ly8RuscsSFATCpyYG4bVDhhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770099234; c=relaxed/simple;
	bh=rz0hgivcPyWykNEaBXqFzLYID9hHuvrBBcQz0spaCm0=;
	h=To:Subject:From:Message-Id:Date; b=LLGKRe0kW3SGAdL3A5F7OFeRazuyMozqrfx3gd2A9JruEyzDkxeC+We7sZ7eIODwdHo4ZD5Xh86qBZkrt65CgPZOkw3l/EYw8izTB9/KR+Ip/+gbrxayXYSirBkXAiHx+LBPkle2oJiN19eOs0zwlyAYkI4MKY7lOXoPFFBi3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSGp48Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSGp48Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4A1C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770099233;
	bh=rz0hgivcPyWykNEaBXqFzLYID9hHuvrBBcQz0spaCm0=;
	h=To:Subject:From:Date:From;
	b=nSGp48PxsCmnUdqEGj1txGaP1rR1oU0p3ZLlFH94E/YVzmcv96w1Ly7GWUy99j2BL
	 04kmfvsT+Q2G5OR7shN4BNrgJQZgWU4N7k2yuOZHD6tkHnWgfn5LAkKjPZFIJSSbsN
	 FXHpklfSVndwJBh1c/bVH96TURDxiyN4ieplU3TxWGC7Zht16XBf0uocjdxsTnDfyC
	 veMI82BjA7PuqS6jsuVBSa07vmZMPqE2sG8+3TrITvtc6VL8Hq9w/28T2SPnbmr9k2
	 EiJdtdBzTYWMlFXsvyYSm/XgZ0prKBLRYPNGApN2DNGhGy1AEe/s8fLPp1mPbXD4N8
	 i4iYZe0t2klqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC247E83057
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009923365.6662.10136083516557468535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34079e5961a9b8021548d40b4d3984025212361cbf2fb4fb6c0c7ce908c8ee3
Date: Tue, 03 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770099233
