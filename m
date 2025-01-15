Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F94D240244
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736949354; cv=none; b=RlKQJeiWyH1bsvfaASP1RuTYCGHHwjSQazbUCzk3of+HBiOD014aVouQa/ZeFKep/SlnB/2g/fDkyUHHn4AwCoxVecnEe68PI8RT6JIHEGZnEDFApRqs8rLHWIwD9M7Wcark6ePlN/s9VksMXttoA6xVQ6fBKGb8DLvgNdHTH3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736949354; c=relaxed/simple;
	bh=qzg/HnDT1rAn6G4x1oSh7lWXjTb8XhvaywYl80kSBec=;
	h=To:Subject:From:Message-Id:Date; b=XY7AmSiwYLndkv9L5Lnf/pWnhP+Wpx/lDlTk4OIWY2w3GayIJhNSTbkLdmv2Dttnd/TXRB+hL4gBAlJ8FSHe4bwjLwC77H7P5H61HFqM9Y56b9XAoDH2W9Gvxi3YMqTGN3E3aav7zMb0GrER4UUH9sDdkQIVykxJ7UwutJ8L4hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uof0EUmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uof0EUmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1728C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736949353;
	bh=qzg/HnDT1rAn6G4x1oSh7lWXjTb8XhvaywYl80kSBec=;
	h=To:Subject:From:Date:From;
	b=uof0EUmUdas97Cz87d2EfzltEwwubLWVVX7nbdBRGEJg6gjH9oofjvs7A8TcZXJCJ
	 qSBvMrEP+YMpjV/8ppSHxukSzBZBwZaQmtntZmX3cNyjYxN7XV1I8ZLgil8peW0iXU
	 a4996Wty/8G7yhxMAgs92OY0x/97TespL0VUAbA2kYH+63lVIXIJFyhorbnxJxcerd
	 M58hy/H28zPyI6E6xKrlRvFO1TX+Q/Hz6gw/TSUX28LN/QTqCP4fLu30OfYQaTjMTx
	 zD4sR6LHmcrnPMnieBwLht/QxtPqVRXdzAyBqjpGAWXyeA3Jzea7pAK1i20Lmty00z
	 zse1BHqoevN0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D34C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694935358.19911.10485868434745101957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9dedc6cf9d7ee38a9e55bae7e8bcddc322852cbf818006c893984818003ce0
Date: Wed, 15 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736949353
