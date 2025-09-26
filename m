Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1491F1E0DD9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758873594; cv=none; b=KSRU4GIlNUuhghPbGzga6n83gl0KUYOEoHbQX1ABG3ylcSmZ5AqIW9jNv9RXJzL65OFZSgAUwClT9I9LfUefZBgV4cLhFug5rL58/GC5s/v5hSrXmwWQ/fdxxaooEMRWLr/Vx1Dmw5gFlrdUx638PdYI64ttvahI51YwraGTbRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758873594; c=relaxed/simple;
	bh=LZI00+qviCURvwruPtq07Zy71Db+OD+MaR9aVHMCDnA=;
	h=To:Subject:From:Message-Id:Date; b=IRLUp+KXYnpFyfOg1BO5O50P1Id3fAAn0rSDhl0Epq7jRAKDDvcs6gxb2jAQOqxhEYwHZRhZuon+fMNcdYMgWMBi4HJFFzWuNqZnSy5iXkOgdQLqI2rLWKKWeR3z/mWpX6p6hKblWUEf2vh07l+u/3iwrIT3efD6gS4pw6a8UYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pENaR3b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pENaR3b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6277C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758873593;
	bh=LZI00+qviCURvwruPtq07Zy71Db+OD+MaR9aVHMCDnA=;
	h=To:Subject:From:Date:From;
	b=pENaR3b0NPzMkr6ghbIVo2ZeIhza77QCFnTxpLSfWNin64159i9eZIKoXueTWmhPZ
	 an9v6tC5Y54rhhRTvLuuZfIKw4YL4vT8tN+S96TR6DzxHgukef+RNR3PDoEr6H311E
	 fyP48U0QzKxKD66zmUmD2BLiYmCW2mVrNy6WQU8D2YX9cHPEUqRrJoSMsAGClD1duX
	 loKZbAs2TYbhuMQ5vGCRex9FMyFIJ/jqqv8OOwDxIQpBGmpZlLaxLlEyPhIAHZVoZT
	 ZEn0JaJWPszmplL1EFiMoHsNeVDZMlh0NtMUO/3tPgCc03Hed5LmUHLrEXPyMOIyub
	 mWM4bp6Dcg12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE1CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887359359.3845.5361197173336299151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a900b2edd0afa832a374ba6a5481e15e99c01ffd1ec5a741ac4cb73e320a8d44
Date: Fri, 26 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758873593
