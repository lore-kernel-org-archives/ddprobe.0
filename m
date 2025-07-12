Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E736822A1E1
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752359994; cv=none; b=aceZ0nMZLjq97y8UlZ7t9Pov0QN5yDC0rpZ26Uz9ifgScvV+in+Wq3SDZj3twCk9Z5fsAz4trjr2ntnx93rOF5jq1ywRhDJARlS2+BPB2zIDZulRxDGfqDaxQ0c+BjHp+NejOdLZm0yazXIdZIkZrNZrhDwmU2TF6FPtwaJOw2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752359994; c=relaxed/simple;
	bh=v9CV3XamOCzpaavM4JknGOIKmAnZGf2JNeDqdlBRVP8=;
	h=To:Subject:From:Message-Id:Date; b=J/2S2BSHJ40TUmpLGuN2+o7Oef1ArbCZ8eWp4DdgXM1rvLPmZiFXAM44y2Lp1QlYKnLHRz4qfI2QsdD2sEPbV7fim1r3InXG+GTIIaZ5ZUzUGibax+h9ujKPMT3GjPxtjnao9PIhMA72QNMEyIUav3Sjjqoe1otG1Tu4GxGyxJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lu7Xb19T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu7Xb19T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752359993;
	bh=v9CV3XamOCzpaavM4JknGOIKmAnZGf2JNeDqdlBRVP8=;
	h=To:Subject:From:Date:From;
	b=lu7Xb19Tos2zOxV3MAv9YJg61ga/DpWA5B7Vs9PHf8+wsLfSNK6izwit6bdK9d2UR
	 J55uuXBhznYYS4m7kod/94dXIk/IkSB+7CTAwrxy2dimGqsIFISkpYhgWP3KNesPyL
	 FVmCGZkNtZKzQLjHN+oirKAmV3sC0hVtORZ3x2pUszdip2pPlnp9SOo+vGzrVrh9hi
	 kuUf1NbruLZwR51Y4i8Ix2NUCvvSKpqaf7tSzIAAgSP12wxe5ELPnWtqvxm27JPgZ/
	 FdRBZ1jTXx+4aB4rCuYOJClLoXdrv6d89SFfimYHgTfDnOe4gmOeA9cUawkuDmbj0s
	 S5JJu+xhSOBUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D08C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235999357.9463.16286142378584756112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d99a17b12bc5b2c6a45ee5dc1e9b4bb6938cb443d77fda65ea296a17a3c6e8
Date: Sat, 12 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752359993
