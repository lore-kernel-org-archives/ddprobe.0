Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA441F94A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750597794; cv=none; b=IcmZcTvXWuTOszKNbWOUozwLZ1chGcX9QvuWKVaEz5MN6dS1agd6sWKwchBhZ7ZGO6NjDgGMRj/B6VoyzxjHclVdVy1cVs60DaOie4eHAtvyg/+jRVAq5uzdgXcFFAmAyfhbn+W8+IqeOO8Y1r/QCUnr/p0O4O77Fp1bYmlNluA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750597794; c=relaxed/simple;
	bh=rTiAQJL5qtQY6azdTPnM8VzATdR54rIznPrxbTwla0s=;
	h=To:Subject:From:Message-Id:Date; b=of3Op44xBTtj5h+BCJ+lWClGKkprvML+pPES2y+ff6pD+8CyVebF3pV/U3D3gNZjepoRNhatttjjx8p1tjRTqKoVz40XwHlcgqsNchtbUQ2W+0MookxQSS+G/TvNIsIOvk2nCEnNxMsWmDtkcl+j0kjBt64/23+y9JUYvQJkHpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGFe6CUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGFe6CUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD904C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750597793;
	bh=rTiAQJL5qtQY6azdTPnM8VzATdR54rIznPrxbTwla0s=;
	h=To:Subject:From:Date:From;
	b=qGFe6CUDcm5VCLPK050hCCzbfVJoIo9q11ASVqqz1ExmdC9O0mddnnhAxOLp7Yge9
	 XlZbH0FALEVEVRZj8Q0XiVuaegjkqX0IZutxnu15teU2bX+RR7paANR2xOctuaHW8z
	 wCVNmUpch8tv5c8adA9gnjKAYADhKB7z8Stcaxentq1QZmQWZb9DWzh66SLkWZ+uS9
	 gQFABdITcfUXGgb6qumiXuMBTX0d/IT/F/CTlnlR/Yg9rjANU/bQuASFKW25BuwoC2
	 JVgYNIoCZdTKSdmpZJPgAd3IVFCKHK2GKlZ+B/uP76HuxazvTzhgJD0uPRmd8IXvtr
	 XYMQOfVdlAGUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC4C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059779358.30048.3103893294658090621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82de091c837df2a45fa17af1cac5ab0d323760d91286b770f48565dc3b4065c0
Date: Sun, 22 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750597793
