Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8A247277D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779468154; cv=none; b=CKBE9eaNtGTKNRWsHWWz71WlH4H4CDVOkGEyUDbLtgCw7Mv4Meagj06YhusDVdIIC59UhkGxKLd3dTtCRtMwse4TKa3jau4KHe4trBCwr9Gf64vUzZK/zRFC5beo+Lwbll1zgZ50dKlCv1JsAmEszp/Q1/HFfk5umIXe67d8lgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779468154; c=relaxed/simple;
	bh=ZU/aV5xoQSktSeEKSfiS+Y3zVLiRYIg8AUxfqHWLSas=;
	h=To:Subject:From:Message-Id:Date; b=Cw8EcPHfIJTOQX9c1xNrYDgg+OiTTJXtAyEaay43Mvw5imMdCXvPpoog/X2iZzkQt5UMlIhr3Y3wKRMHpNmv+XjoVxpFkOH+oajyWOlbJ2Vc/o9b5qaNx0eEB4hZjujfU+N9c1znt7++I2shnqQKzOagtBCzG/NuyNnXds/bMzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFhjORPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFhjORPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C725BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779468153;
	bh=ZU/aV5xoQSktSeEKSfiS+Y3zVLiRYIg8AUxfqHWLSas=;
	h=To:Subject:From:Date:From;
	b=UFhjORPN3NMG7tsjVfot5cfNUMoWGN8+vljLAIn0NCbsozVl99qtbnkU91cXsdBC/
	 wR/FRz3mGIznKvEbKtcPvwQ98PONyGSzoksNuEgOA1Yh0HZMVTSnPc/eoUcwFSW7zv
	 wFvvN0cdTRuLZDPGzzSdRUkDyps/tDmpG00MGuuDCfBjYKBhrbG7kVyILVRWnKf2uy
	 dt9Lfa6dLmrD9BZnyWsSPiuFYo1o4l7kMpGiMFtEHBYRwE8p8ZfxfnJqkw5CdLqp01
	 AK3pGqvPphC5eYjXMJF1SyK69pWvZbeV+ZNqHC3QjcQv/5PCN+Rai1bBn02pRt/doC
	 ID5JalspZDuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B4CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946815368.15105.15845470205546695070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d5430aba268f2b996da549f89973155e43a3bde8c4e742c0ff9ebd0e890f7c
Date: Fri, 22 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779468153
