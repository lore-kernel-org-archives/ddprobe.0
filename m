Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E662E0938
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783397314; cv=none; b=mTQlQ813LhTOlQGcw+KCeSBgIFMCmN+Pv6kK5MZeLTEvGZB9bNkGK6FiSOQaSCFydcYUq1GmwLIDPcvQN58b0xT4y/puxEoZ1e2cYj3h5wXdceSVKEVJ9DR0ZFnOMIT+vTxPTDsvCIlaIe3jgAg3RlR9BI0ezEm5Vci1NGigW94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783397314; c=relaxed/simple;
	bh=2tOD5MaipuoNCo9LrPe0QF75DdsQEQEOfVyTSGN3L8M=;
	h=To:Subject:From:Message-Id:Date; b=u079uBQQuKcEi3aISAqQOgHvJibAPkKrsdY162me+u76gGyynmOvXvAUrHF0mbymNv7PU+om2VpWbB/1+Vwalr4dla4CcJ9YwC/KUw/oKAXEHaooN6nvf8hHx2r0nZQS+Gwdjj2A4TfAc4De8XTz4PhLv/zcUYKiXmZ9uh6aVZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtFJuxhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtFJuxhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC880C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783397313;
	bh=2tOD5MaipuoNCo9LrPe0QF75DdsQEQEOfVyTSGN3L8M=;
	h=To:Subject:From:Date:From;
	b=EtFJuxhCSsnkuEG8R34SQpyFdSBjt1CG5C29FD66XSNvigVuVO1oOrJGGLRmBXK7J
	 6j3YUTvURVAwkw2rC7vhK62eBE1hIMil8Ye8ux0VjQoTwogTI/fqAeCwFiaq53qePC
	 VRpoxu+LKdIVZ/b9tFHbEMP89IWhE6VT4VaKcPPNvKxCdy21kaMz2ZxkasBvqWFXUK
	 y4FFieRClH1KP0WBDhytXBALhe17sSy53nrF5l4RbHkpfreIkIVw8NxinBY5aQWQEG
	 Z1KVO+XwFSxrcSP6Nh+v9nwsDGrHsLiwT8awgcYd8bbxgxdQqZ5R9lx0iCXfqPocfE
	 C7ji8saQ3fIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C7CC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339731368.21918.4891324377196590159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4e3d5c1fa4eb9808121b9015f26024e02c9cde67c0a175d741f6c0c2246f7e
Date: Tue, 07 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783397313
