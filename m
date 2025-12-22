Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080E5231845
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766423634; cv=none; b=kYuORh1K+fwfIIFHjMMVeKpqqvbi/MZlBWCfLLo8fjzoKmIhAPfQZo+U10slni+3QUkD2d8J2VFURBvtd6Rl8xmyoQkJXjkaGrZRX4xEXBbOpLj915i2VgSS4xN282dCBB9t7U/rPbaW86numZGJF5SO6arQeQIyu4wggNUwei4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766423634; c=relaxed/simple;
	bh=H9aYpWR80S2AQ92ib19zXEWEDiz71lycPEOMiqHJHR0=;
	h=To:Subject:From:Message-Id:Date; b=mUHsndYjnCEGH/T0z8/zAFRamN2loLwNEaEbxrIpYS3UThmB4G4UHYxfEP8GEri+5wc1F3xFxz7hzwS9zd/k7ChzL6zJH/q3ykNaUB9DXtrLKQA/Gb/yq1ycir8Gfxc2LNlU7aLmY2A2wvcZzaowc55wMvTYhe7ZMFOU2drMv2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3/1mjSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3/1mjSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A107EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766423633;
	bh=H9aYpWR80S2AQ92ib19zXEWEDiz71lycPEOMiqHJHR0=;
	h=To:Subject:From:Date:From;
	b=U3/1mjSUCexcgZCsNP1XWoaImBsDrJh7n72KNg3iQk8qWJXTj6ePX/d/0CCzT9Txs
	 mwH2PCRVWcL0ChK40X8RidEdEM+l4h1ihios1VRsjgI4fBndmEEq1h1oUh9ZbUPoEc
	 obCBtooFiU+mOPRiI35aWyxOc6rQ8H6d93tBECjRsjOo3DQaZTTpiFRZEm5mmt6hUi
	 iZwKr1lAM0zsXMiYdNlBQmXIID9pUS+AI3tHhnQ9wO0D29lIzaHUGDkIkJGfw8omsT
	 i9edc3HqE9JDykWwTtPbWFJOSBOgKCtWlXsY86O0kmZAWy6ehvizD/io7gFNqBpVf4
	 MXsAGpw57JLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD63E67806
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642363358.20516.17925648048009007394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09faf1db221d41fdd69a5b647478d08112e72444fc8d0e066c14575c682720af
Date: Mon, 22 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766423633
