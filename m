Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338D922D7B5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770609234; cv=none; b=DfEzDh7YC3Ekv3ytKsrbguL0VJN09/YaEL5rjtyZB9NfuAcDQjFo/C3pXfoVj4f7q08AKhHez4RnID8QJ/TXdRg1DPgHro0wd6gUzC5sI8JB6IxgZsmYT8FxmqGp4tOG2nHZugzggNKNNVVokVmgPEQxGSMBTwzMR8tcKG1ePxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770609234; c=relaxed/simple;
	bh=r4C5J4cl7RVkYuIZOxONrA/5UarmEH3eBMOsMxl1NBE=;
	h=To:Subject:From:Message-Id:Date; b=eNxnpB3mD/BCSSFyfq5GStNlPUNtmtYRBKJfduZEJERJJAMF2zlJ+wmWuyOGUqannV7TEmHUHsv8I3pWHjDPgc6mSAfv25YfpRFf1+++YGIatVIbiF8dcppZxz3X8Ni7qtEGSZXl7QBx6vpFZoLELZr976P7E1RzaOrcAdwPEnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCpAz1Eo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCpAz1Eo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFB3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770609233;
	bh=r4C5J4cl7RVkYuIZOxONrA/5UarmEH3eBMOsMxl1NBE=;
	h=To:Subject:From:Date:From;
	b=gCpAz1EoHOVEQyKpNJxC+FIjlb/Za+u89xE2GkEKJjhYA6Vf2eQTqL+fuQZHQgzEt
	 hdZtVXu18CBuLWkEM05mXIABNy3p5kOkqvCnT6pGCgjCOWqrCNCHwK7hzkdsicVja4
	 ldTR51pRRTsM2u2uagLKehvZQPrSq8PG6a5aAx99QfI+rij37Eka4TOjy3qfPTvrmz
	 gn7JNL4QojxTq8+OGHv5h3o0MW2G4x7DQ97SqjiXq6YEnM1fgTOxatYcKDbqE2NXq9
	 evC5NZ6wS8iYP0Ovh7cLGDRkgHGevhNan70pUnkZC+Do9TfOo+7rgDnuT1PO1fZTz5
	 5PKOxUOpYGu3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F89EF06E6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060923359.32246.8702377961679010175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb34f43f8dca0cf9affdc7337bc20e4f6595880a0f555a9e26098e9d4de803b
Date: Mon, 09 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770609233
