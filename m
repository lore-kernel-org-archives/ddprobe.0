Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093E51B85D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727194554; cv=none; b=mPDdr+HgbU7cYD/eQZibdzQu6Y8dlT9Iy329X1fGzicZXqjogIkW3HOam6y/2c9Qa3Jo3/vVAYh7U8TWpwd5X6s21DQVNHc9zTFLxWFM/MlG2zzA8DPUsFDL9A7xce2NDUQqmrabJWrAeHoQR4ECyAWW50fxmSiO9t/H3TUuPys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727194554; c=relaxed/simple;
	bh=ugxVW+zHHGTf4btKn10yvPFI/LrGf4WbvE1Kayp4zY0=;
	h=To:Subject:From:Message-Id:Date; b=VzO2XxXGNTotFm90fXjgny5fZXJoKvEn5YT7gBDVA3JP00XqbT1rOJi8fGVVAFa3ZLmu83H2TjIdygbDUuTegff7aTevG6JaW7g3iBM4QznVT5YpsNqrr/qmQfFTmDw4O5RNBEyJv2hXOmWuDLCZ8pBcM75HDp2YqOyRddymqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMpKph7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMpKph7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFBC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727194553;
	bh=ugxVW+zHHGTf4btKn10yvPFI/LrGf4WbvE1Kayp4zY0=;
	h=To:Subject:From:Date:From;
	b=uMpKph7auXrXysLwvBiCFtA49Hw4dPIt7nT9oxREQeJ1UoE3F+scQUfwX9ceYSHaO
	 KJxtPHLKveYNPaCqa9+puneJekk3wau+hkTV3m3FsRTfvsgscsZbiwJvrOq18sIgaz
	 uywDGEROAWQerTaX0x1UAr/gG770+HM0w0AGNsKhvwcy9Rrn156nQY0+URGBFPHSRk
	 l94rRXcAapOyUVpbpFSVeDk/dJvvRinftljoNE2Knjs4Og2NnBk7dGzs1qhcVYzFsx
	 l4efIa/F/la9/ptQOsCOPUdfO+o4Ck6KXulhM2+hIVpvlSkRKdpTyhMvrjX2/T8Hv/
	 +RoRPuQNY/Rhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B8CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719455359.2617.15771656294907557139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7009dfd40e1edc1ec68d14cee5c2947c4542b125491642d91c6f826b07f8fc6
Date: Tue, 24 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727194553
