Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F299139D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747021195; cv=none; b=RYDmd1rhrre1gkrsEujRF00ztDhRTyKjR0+Q2fM2ywrKJZgAAkgyNtCxBBFoMB3Pj393jVYP9r3eqX0W4M4uh38oKLfXKsGKIz8MPjjt6ViRFyVMp7zT2xQbeMP98QytEtgRivGCzGEY2CgFjHKtfsVdGBwr31qXrcHask9Lth4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747021195; c=relaxed/simple;
	bh=gOxjpwVeIhRGx0fxCqzdkugh29AIX+0X7ClQlv80Fek=;
	h=To:Subject:From:Message-Id:Date; b=Z8iMp3o/R2KFb+WSnoeGdoJm6Wr1g53DFx+vHIZn+cJrjnlDgY6ZxlTsKiwvGEi0WAy/+RnZ31Z81g7JiJgWewJ358bWEEnOM0BSRpoBb7t9FY31KCEsXlOYoUmubu5vyYnowuSBEKz1Kkc7LBO6XlJpxdd4fRslUJkV/e0IDus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWn5SL9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWn5SL9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B79C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747021193;
	bh=gOxjpwVeIhRGx0fxCqzdkugh29AIX+0X7ClQlv80Fek=;
	h=To:Subject:From:Date:From;
	b=FWn5SL9q7X/6gDUBJmM7I2WaLbHivYmW6jwDcYnk/HwPZ/NfApBW8yuC392T/WruF
	 99iywqCkD8RdOyceTnZqkanZO+jpXOsm+Ubsucmq0ioKh2GyBwyAJA/5dV2PdsORmg
	 NUxAx2XlGzHI3IQAyKs9WZOKx+3wj5ZdudNbdSECU01zFKvvc3hHSYaYzplfl2lc92
	 Cn2VlvyYZfSCYSi1wuNEds0CLOJVpf6AL4lnr+rwNymdNIlw8LAKsZI30WuftKrBQ1
	 URabTa8jdoog+eCFC4aA/YuOmfCi41RatGDnV58nFcIBwByUPWZ4I2zXDgKn5ZHl6v
	 w51spUL7HSQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DB0C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702119362.5629.1837588410211615303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4dd6e7f527e2c55a92653459612cbe123e6bbac60fc6827894b616f44ee075e
Date: Mon, 12 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747021193
