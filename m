Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B75723ABBF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758596995; cv=none; b=Jx9WV2z8jdO3Pu73dbRSERK25IZpkLQFxmnS5oYMMVSgBhphpxSpfMPQYTYR8Xpabef78EmLnURX+A7m3udoihRsMthx8K5tFOsNOqZV/jYqdTZvOFez/VbubxocJnDEHRhCsRtuphlhvosiPRAe8BzFyfbss+2UQRTCOCrwqK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758596995; c=relaxed/simple;
	bh=MEGS3NOSgJhf+0AmQjqDLWh22L74lbat/8itUIhnm6I=;
	h=To:Subject:From:Message-Id:Date; b=KL9ssMTEdcecCJW0npK4+Tjr15jOPcCU4IZ437RlOmHdTkqJcD0ovgnY0TJELyKPBrGLglpfh7VQ4oZYtA12pGqsTSlvMsCxXQt+pDadhAo+p4rYkmhoMz3hnBvA6+oJqQWi0EHugVkmc7LfOeETJ3hFjoZOhYmV015TH4OCSyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWYmL6nN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWYmL6nN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11AFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758596993;
	bh=MEGS3NOSgJhf+0AmQjqDLWh22L74lbat/8itUIhnm6I=;
	h=To:Subject:From:Date:From;
	b=tWYmL6nNKRon8ZW3u7Iry3ehjeEpHrjAQRhnKBxtwrenp8ocg565OwfDNx0M6HKF0
	 LQNtTPZt99yunuSIA3fC1EiroqmkQshpR7MhoyXhuorjER1L5jtqFe266Klgv/9gb6
	 Ab6NvPKO4mPeBXT3Csl+31kQ+fbcq1qL3sRqt6VwiRhjiS/rqgMQPJc1pVAMQj0NGD
	 BPK2b/7UCz/BsVIHCCK4jUUnn4ODXDdh1F0NANxqLK//1di9Nlu37UEo9AHEBo5DLe
	 pDhKA/+JDzfHM+hZf2ReBRILlRSjiFNdTv6Y7mVl28IrqkyO9bW+F7AgMk3bY4TfB2
	 s3C00TzIRp8MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E7CAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859699359.17393.15512492820695082427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c33b181260aa2251995b16a47a4c9b96e514b04508fe926051415c046d6b4d4
Date: Tue, 23 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758596993
