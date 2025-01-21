Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4A4E57D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737486354; cv=none; b=J8U3FyzfxERIoUAwX3OfxAtbIOQ954CKwKoP1C/oLBOF1qt2IG09wSWDm87VPyFBmqm4gNQq4kjKexdLntFiBRfUwkHXltgJ7OYefm0pPVX8KljZwFvKkD1QUi1TBimljYkIXfMGfF54Alt+sthxSvV72lh4ALdf3OIfjIcuduM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737486354; c=relaxed/simple;
	bh=h97BMDKng2dM7mbT3q26ZFQVoKOtrS3cGQNMIC94rYU=;
	h=To:Subject:From:Message-Id:Date; b=AMe7nHxnGEBj93mbwEVElsus+hP371DdF+fGAxhDAvanC/7wc7B1eSUnsXZiC4NNDqaMc3klfIxWsIcGEfuS+1Tl0hts4BzkjjQf4MA41jAvkO/7lW4lhlJ3XZCzAJNB0CQfaxRIKKKyVU8SG6hNTL/fmcYCmWuP3OFKsAuaGGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdU2PlfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdU2PlfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D6CC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737486353;
	bh=h97BMDKng2dM7mbT3q26ZFQVoKOtrS3cGQNMIC94rYU=;
	h=To:Subject:From:Date:From;
	b=fdU2PlfXV/96IETzegzSNvj4UuGPKi1jzxihrEf2go35ANUK1nVvjz5a7BwgiExXH
	 c26O6nQ5iZdbYKq1pQy6cevIBrc8A2NX139EpeFDiiKE7jDJnGsoNhG0mYP35d1HlU
	 PnuCsXzuz/fM4S4bVZjBmhfOzCUXOhVFmRelLFgVbYt4EBvrr+WwtEzcqulVe7v8VH
	 o9QgcsTF1oz8/ZxmfjePyedHtVagT5pyy79eAACLZGDFReMR9TlXFRfEFxKWMEcU58
	 g47zXZjEIaTEi2L2+ifJZsTBJsXbDHClu/yVvzZPIYuYbMA70oZ2G4/sYVC+miWhCn
	 7zOCFI66WJf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF54C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748635363.27318.3286465023568698276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edf5eae4f1a7ad667a5ee64afa31c8fbb20c775b78af32e36a72a2ec8e989fe
Date: Tue, 21 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737486353
