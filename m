Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6FD233D9E
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777340854; cv=none; b=kEweJVIW5muW+djxosF7/Jz3C3QyDEhpLcHcTcDPpv2PXPXAsdmkLabTvMseNaWzWg3in38JbdzCc/CpHUNXPIk5mMKR9bByA7KmLpgRAYpcWRvLGINeWjNgoMte56DEfh51XedoPoxxBrkzLeWzrSfxAhBG0LmkL6oREAvgw9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777340854; c=relaxed/simple;
	bh=iGekwFE4ZuW3cWezknr/3oiBsfSe6UMyo60hdxEuDg4=;
	h=To:Subject:From:Message-Id:Date; b=PeWBo/e0D7oPJNtKAfnFj40A2f8kEsqlPdK2RSfnoK5FnFzlUwT4B9oABZfeMOU/jSG9XQQufhOehpIOIKYkrqG5enxVcWchxKfaLJL2ph7IHNwVtjkqZAaxOAJ0JpZXXEu8nBZZFnGNZjyMdVQS3UC85wDrQbuXnD4a8hh1czM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY+wikwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY+wikwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD45C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777340853;
	bh=iGekwFE4ZuW3cWezknr/3oiBsfSe6UMyo60hdxEuDg4=;
	h=To:Subject:From:Date:From;
	b=LY+wikwCweNplQ/NtZjUByCHw7KTe83OO8TYNLxu2KCkvJnFP5X2SWjOv0pxIoe13
	 8UkY8MBmDnJCzy7HjX6HkjtT6AYAQX/uI4u4nMUqnTAruSmElc561tbltX16mDsnN7
	 VQRrDogj72mHvWyRUOLOgWIBWfNq2QtAbivD85sSWfc+N5ZJq8dHqZbDYnBp2wfCti
	 MorExYMXY0VGVkV0fFVL9bRWGGWEE2RoQyzYse9nxOxPydG4KVjCzZcZVSEtvDVyKJ
	 XJnk4Y1kkeShIISO80vtvXF3LHBxXM8EsHQFGSWX4BJq2VBolqDaQkrh8kG5M5kYiD
	 MAAOkEypNRAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0CFF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734085368.30963.6453528484691389404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f426e056a528c07e6b77beeb85ac94d49ec8a10d926cf30dd690c520e6dc1a29
Date: Tue, 28 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777340853
