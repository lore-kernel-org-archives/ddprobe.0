Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE44C7D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720841363; cv=none; b=UjWm/3UoKbKAJ12ap5BjnAVk3FXIajakNUvevwDIVSk/pRISAoYoJ58+cl82siZuvEnH2ICbPMzZcQeznCUgLZTygn6l86hM6cxmxWaoi5BslK3HgTWlcMuiDvrgMOyCC/d+Wc7CPWT1T3d/94Vp8dLKsVgGzFTzt1MpIeE/SD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720841363; c=relaxed/simple;
	bh=0qaYHxia08Bl6LBW32ks8831dUNWTYJ+BcNjivg1JOU=;
	h=To:Subject:From:Message-Id:Date; b=lv1RWcUf2iiXUWiZYdITsSBeY0Hj035ANHjBXgYTGHdr/EKnM6eXmKvZjY3kOdqwH8rEZetdArfDJppsaKhTPtEAgy9CfAsrTiX4CAy4lu5Bmqp1ee0X89/23ZaAPIrOXxL9DgpC04cvPwVszqSs+WNAeJbVWspKl4IAxja7V7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQfCGDNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQfCGDNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00AFC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720841362;
	bh=0qaYHxia08Bl6LBW32ks8831dUNWTYJ+BcNjivg1JOU=;
	h=To:Subject:From:Date:From;
	b=hQfCGDNohEFvWIOktbVcjDqPTWTayn0Yi3xPFCTkaO/nuD8FkhuMhvlgfs1T2wjPR
	 YydzZfTI43YkejPvRvFWLYIVT8czy8vqCEGrsp2ahq+eS1nQTlxoXx4Wv7a4I/dg/7
	 upqxwyzkh1jlhNh48s9SjxUCkuNe4pdF7e2EsM/736vRKdifKxGeNPvLsQ1jO6gnuw
	 9qQBnRoDGeDiZvOkoxcu8nL8HUaBUzd+RxqCQ/KDn+yuE9TDRZvSBI3yy1XLvt6OR5
	 9KMKW5piRAxZxYX0l8fQLXUd9wx6s64l9JwqgXq25SCJYEeQCPcWv4vcBIX64u8keb
	 HiOZpedaPUytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97FDC3DA4B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084136280.30894.4653631353570862013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455a11153474f44d28a049cffd001f8c617fc9922279343b33a090f05405a1f0
Date: Sat, 13 Jul 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720841362
