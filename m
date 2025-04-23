Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B754207A25
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745410194; cv=none; b=PNbaAHDDHF9WIRVSIJUmzuwiFo3L7jES60Lvee9W8Tl6yRsSGiaF1Gm1ztOOKTDa19y7TmPPaaDUYfmfAHJ2fFGfsd+BDzo6vHex8Lhcnv6qKKDhOT9kENaQPAf2qOk3fRdx52aIt3NdIV6MFEfmxsEltqJkIYX+VfDPN6vNpNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745410194; c=relaxed/simple;
	bh=gQxpoNAzZIdlNmQEBxLolll7WF44E4L3KKvJEgjkIV0=;
	h=To:Subject:From:Message-Id:Date; b=Ppt9juYblQAg/bHZDiSrg/A0vDN52XPv+bqYrXHnhrXp6kUUGUQgYvzE9p/GXIC4upxNPaYMXr/oxH2DfDNnj85EKJUPkqcEYyt+CUMyRtGWQ+B5ocXKGO6+WMkIcNkeKQScVaSmpWZSP2PLkSRSNVf4rFcmgeGypkokWncosNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJCsbsh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJCsbsh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1184C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745410193;
	bh=gQxpoNAzZIdlNmQEBxLolll7WF44E4L3KKvJEgjkIV0=;
	h=To:Subject:From:Date:From;
	b=TJCsbsh27Q22fo/VZI7FSbX4Lv7NepNVwkJ7MUf0Y1/MB7wOVtG1qenvvj1KAKc98
	 0TzevB9y2tCPUcJ0IgU67XwMMNyAFdBXRxyf5x09A9qyD91Wque3LLsjzWGv+MOfZn
	 MG0i2VJs6rfG/soT2uIoooMwHhc0mNiNqiic43g/OLbhFnMva1+1fY5Syx3Tl3i9YY
	 7Kx7+Q7vlDCYZazQ50kaM0gnBXEW+W/M4cWhyn+RuCLwEzq3XVfAdHTzUyX07iURa9
	 TBY29uzQanRjzVTfrAHH6vXm/1+M/tTl72l79/JxndnqujisoXqyIbeoDUnWyXUWT4
	 AHyljd4VYzw4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91306C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541019357.31701.16522215085467675106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369caee0dbf6d315bb577dd6958fb6ae084b070c2f610cc94e735cc1f561fce0
Date: Wed, 23 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745410193
