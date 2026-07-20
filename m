Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF1D3BBA03
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784538514; cv=none; b=Ih+F7pcsC8cwQvrQ7p6cTrCht/X5uJY6H7dhX99dHhc17YOwYLvfVYKHu+vm/D/Zyfs2sP4AMXg1tnk12JgqOYwIv2H3IaKrRaiM/n7liJNaWk7gHkO8csqazSh6Pxvrkz/u2Kh0+HBA4LNk3iDCbijeQSQvCzY3L3V1ggFqbzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784538514; c=relaxed/simple;
	bh=Y0wCKivRtFbA6C9mbmlkkjBbo4SHZQIZO3rv2KT6Zo4=;
	h=To:Subject:From:Message-Id:Date; b=WXGFgN2jsIdZ0ZCNgL2YbXCdr5SQP8S9nIcCApLyYvuXF/XQN1jaB1iRyqrdun1ruaVtdWUOHWFQ/afr2k/0wkyfd3288ueSIrztr88JvFFIMP36cpeJ97fQJwp5eBimndAbl8UdyKNpsDGGZWbZ4kmpVbbXUY/YHxUmLZnadgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jgsl8N+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jgsl8N+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04BEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784538513;
	bh=Y0wCKivRtFbA6C9mbmlkkjBbo4SHZQIZO3rv2KT6Zo4=;
	h=To:Subject:From:Date:From;
	b=Jgsl8N+meLvz/HdgLsBSIOz5Ha604A5oP8UaIVjjrf58QKFudH7W4yfo1BDh1y8dE
	 a+RmvSdSPqu2at31nPzavCOPop8FkZPSIyKLfYDRYOHHQT4JPRqGt+95yTVPwrMcmZ
	 YPwuf8Lol9yLbo+ROAdL+ZK1AeXG6psdxZ1mvkY960MFhoOq/rJlQzovORT3soXv7X
	 Hm+v48A7Rey4DjRMbyK0x5yy/KN/H6aSKVnEPFsIhgd7Ulf52RKvJpR7S9+Fv8yf/Z
	 1s0eUF3GPV0SGIlz0kuNZtsQlBIw2tb0JTNqfErFWfotOPBQlEc4deLKg4JXEqq4kV
	 O7Xd2eogkf4bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD48FC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453851368.28737.5261731807350376905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1229ccbd2e8d9527cf20930ede5aaf30f3be880dcfad9f2741b9bca771303058
Date: Mon, 20 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784538513
