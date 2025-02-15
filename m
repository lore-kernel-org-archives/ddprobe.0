Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6E31537AC
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739602135; cv=none; b=SzYw2ds3SfoxrFnBVdrSXrgYaK6ME2RnJNPFNNDRV2GCoSPhSeTDFLIRMJAygohdGpaANflu6pPzEne/KSSxDadIigvX0eraQOt83fJ+MmAsCKzUL1cZkgTIqfdQHcT28mRLF3dANabzVu7VDPaKpGKkH/0CrgBRDJuGq/4EsLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739602135; c=relaxed/simple;
	bh=a+RvanS+lebjmcb1BOUR0MIAmG+WQS8sMZwJ7NwFeDg=;
	h=To:Subject:From:Message-Id:Date; b=ZoFZQ6yu4BGICyPeYwRYFXrKWnvunsm/Hr3SnsTTA6+MVxyZ1u8xCkMyErPHeVmPlOsn8h/W+YHJ1DZF+BJgkICRZBhpuwMEWPfQ5Cntiw1/OOvsefU2o1Xod8j31z9LF1H9Qke2yTFkPFVrasfWJnJRgQBkCIy6ufSTb9ItyQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYTb+czH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYTb+czH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C781DC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739602133;
	bh=a+RvanS+lebjmcb1BOUR0MIAmG+WQS8sMZwJ7NwFeDg=;
	h=To:Subject:From:Date:From;
	b=iYTb+czH0qYu/DVGxlngYan0XULzfwek2Bx2V21uM5g/eXcg8Ikx9tGzWU/Llhp0N
	 w5yXCT5XzYjzkM7fza0601wYOvbiW4KlyHlSguMqGe0RnujyatwpvbHm+HsQuIUErC
	 d0bPvG++uMbfcGMOhyT6n89/8T7p87tJhnbo7JfCC1Bva/8fLODT5Ia7Iubg9V4JN4
	 U+lBSyOy76ozoCRQwxywfg2iCw5JkocG36/zeE2hETrh2SUtm+BFpQcSN8ZBY59djs
	 YdslTHy50G/p37oqisNm43kwa0SgZAZrLHfKQCEW7pxRFt+MpaKWyWTxVc8Rx3oxmw
	 3B9mg55OBcQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54EFC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960213365.8090.4692750578716514233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43068ec48b7b09edfc17672623993cf90ff94e1070fca7f6bf3c16f55a9764bb
Date: Sat, 15 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739602133
