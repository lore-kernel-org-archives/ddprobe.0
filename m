Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CE531F9B5
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785789634; cv=none; b=M774rJLVWTQRw8ozgaHQA2I9QdH6TxZpdA1/wmibnq2iE7Vs0xttelnyXTGZUNZCdlgHiR6lBX+ueMRtf1BR6zm0mnpUIRqgmLT0kbO8P5CjP9vI9PCX6Q24jSzqma92ir0zZXQ1n64VWlGnBtgCm/5hdbcORoJ98WsNld49EKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785789634; c=relaxed/simple;
	bh=nHpgfJFk9I+dDnIxcS+bHnyB6S0FekIrYWvUyUswzds=;
	h=To:Subject:From:Message-Id:Date; b=Am32Wjw+P6KL8MHivqpHMTr+m8cdDWeuEOqi8FmIASYBebvd82OluHz2A/XwgIkkg71ahhk9BPx8LSk8bbDL7AK4VdF3g8yCDlBqX1cIUylslgPTG8KTJusR+qE4nwXZc2n+uq2nIBoyJF0CGjBW5uebYXxH0fUQbftO+fNT5nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMyMxPfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMyMxPfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D093AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785789633;
	bh=nHpgfJFk9I+dDnIxcS+bHnyB6S0FekIrYWvUyUswzds=;
	h=To:Subject:From:Date:From;
	b=VMyMxPfCRwdiCZ6h90JpfyKN9wFmic3DRC1A+XzqkqVDo+ieI2PAd65Pj2juj35oW
	 kDjtk2VQBFcZaDLB3+ZET5sli+xNSTKmO+ofv4e3yZJqa75vXPmBhrIQqg6I7QNTjm
	 r4SGgjUzPR1Sh68UYcZbS0/nzpTXHHAy5hSrd/KtIpnHJTuhCCOzl5sucH5VA8jxjD
	 G+dz2FpIFexN/WNHI27dVyslo24VGGCv8k3jNw/ozDkl1OVGc4+UstzsWT+2fVeRRy
	 I0rK0m0G0oN/vPTICctdIoME7GJ8isd9oFuEgw4c4iTgAS+InZurKDudmgCgzGS05w
	 uu0o1DsDPNbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEAC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578963369.18512.14469121400101176390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81babfaaddba98039f81e1b28da63d69674fd2275691a7d5651ab7f99596dfe
Date: Mon, 03 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785789633
