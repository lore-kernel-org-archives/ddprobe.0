Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1198A22129B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759066194; cv=none; b=BP4WqSq9LWRctQDZQ4Vb/jWTa88To90d5LVgkDKOQNmFaHGLU/+X+hU1d4Cl8xjNwmkxyu98pevohKBAezWDBxPGghas6n9c1sJneqmoR7ZCzaDAWj6xJXQQjcm50mYOPcDsfoRWuGfLa2aB4zxZF/qu4v99/HKKMo9Je4F4icY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759066194; c=relaxed/simple;
	bh=heMu+m6cw8q8YtWAvL9X39rESAHUtQp1udZDnswPJyo=;
	h=To:Subject:From:Message-Id:Date; b=XtviHVPw//e0ec4Nf6HSAarIggNpV6t7tAKIc60aZx1E9d3V4qKQhwUudIu8GsZyqq0AhsnNmRb72hc2MYA+4seXN6CcJjXgv4FLVLUGdxQW+JTxrtedGdlYiOkaLt9s33sN6MfEcEpVaozqaBKjVuvVQCMe/n5g9/zisMr787Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmm6ZqIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmm6ZqIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A3BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759066193;
	bh=heMu+m6cw8q8YtWAvL9X39rESAHUtQp1udZDnswPJyo=;
	h=To:Subject:From:Date:From;
	b=dmm6ZqIMTJEnunpGCCePevmzCStaj9AyuLjefel4Oz9qOJkFZTGq/PGuHiiz1ZU9E
	 56ydL/HT/Eg7Dms+pgV+EbjFFifhL5f6Cox+iu9nkdkO69mxKWaKOwKQyrIVwZOmlI
	 DIUILsxmpGdPh7mEH1I5Hg1COFxVSoypWpASk95UBo8javZqVwOp2TUXFVwD6G4yFJ
	 DCQwjews/sSx3zVLoyhLzqHD9jfBlUxujew19/gMv+x5Zgb+kZ4BgLCzgA6/ARtitg
	 bsykBzKcZvRuS92rPQBNMM5X03gX79FTDxrqr4SuW0zEB/bxHNML8lJ2odwHAu/0aW
	 GSVTJUVWcmHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A3CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906619357.4395.9513427130546180036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632c3a7ccb3fb0d0fce5decf12a13178a5dbb8bac9a39fd0db0ceba08de615c8
Date: Sun, 28 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759066193
