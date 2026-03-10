Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7B82AF00
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773101694; cv=none; b=X6WygZxlx81Lrc3kvs0IVORT3KiQnYjbnicOnDgDiFBuoOqLBrHgdtWkfamvWAD48AiVYZ7YjO1ed8yqJyC7anqvsupRrZP0bRyb+nEpyy2ZSxWsYf+0C+okDBrNoyzxD0MqLvhvSS1VUM1QDl0ji/x2ktkMMhj5y3fWmfKCMlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773101694; c=relaxed/simple;
	bh=zrGJqnPuhNywRdyPhiQz8i8glNJkrysupuwynPO0lY0=;
	h=To:Subject:From:Message-Id:Date; b=rGv/iiH695l8Ogq8tjotJk4EEd4kbuNaeNghPkcFBQU5Y3iUMD8q/3xkvYvlwMLqvv4euilHXrTJif+p26I6zv1jQvigWG70GE93fJUKsPUCit08gs+wqxBIByTJa5lbrVzoP503fZgjtPcWrYGW64kTdf3cAaOgEVrzDITuVSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXKcHGDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXKcHGDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1571C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773101693;
	bh=zrGJqnPuhNywRdyPhiQz8i8glNJkrysupuwynPO0lY0=;
	h=To:Subject:From:Date:From;
	b=SXKcHGDU2kSaotZB1k3KF8viTaK1cqAdsfvVivDiq5gZfT5UDLFI435Tn0dUrbbzP
	 8qaZ3SQBzjqTuSGJHaqdmy4ib+W8i5kHv6S3iCOkM+3h8mTeJItyg1hIjeMZzSZDdI
	 IhZOE6c5QYsIPt4/XAxiNh3hLXcgt3xxZU5lMDFMacPhLBr875ZaFO2f9o+L3bwlEN
	 PhyZt5BmjirEQOF9gPkITpGTuYD0SEHMcBupW1tMkLpCLe4mlS5Xgb9x1KB0jSLQ8k
	 rNuDHkWIRuTfnpuftm07Q17stIzPkJF+3cl34fjShp4BVAvEGeXAc9Cms5XDeIGJeS
	 l07awZE4PbH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F743FCC9A4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310169357.24220.15644326510483258682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319f2d8e6ab855c6745122851e1d73b12dd7a1c73e1a096f52bc11e3901e87cb
Date: Tue, 10 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773101693
