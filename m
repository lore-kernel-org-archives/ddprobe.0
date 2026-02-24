Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1183236C593
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771932894; cv=none; b=YeTu1r7gGVWasXdrGvzfGtXLHjk2gu8+hDXoMtx3sc5KVIKIfCvgazMGwrWb0xRWycYRAf74OehN9BPMdLQnpShUdXzoPcrJSLp9h2sxni5DPzGY8SW4mytiRC/O1gvu3bYatyxOniMc3DhfE9RJrHefC0AORTvuZHCgZ/3v0S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771932894; c=relaxed/simple;
	bh=CmyRX4Wk67dxZ4U5ikx1cTD/cyggJE+VlHRBaIhfoTk=;
	h=To:Subject:From:Message-Id:Date; b=V7V5vvc1gu2+DXm4N+xuVs61GUXT0Uacz+o5x/JvLTH12fuJnznfa5Eb+fdEpy43Mi+Fte8qvPOy6zi0A1/IBLOm+bMSmltec5HlDUsmqz2yfalBZrpESLSw4o/hR8N/3uNyiLAsK4ZiKLOqz303TClISbOWlIAyOyJ3KZdPppw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuqHwtuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuqHwtuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1826C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771932893;
	bh=CmyRX4Wk67dxZ4U5ikx1cTD/cyggJE+VlHRBaIhfoTk=;
	h=To:Subject:From:Date:From;
	b=tuqHwtuvarOmibK3prLmuD2Nc+4ymWHZjITn4iw+1jWzBd/GiYwEj6Y5CsRTwM7Qf
	 4oOlT9nQdlq2oTWXeDMsj79YH9d7czQs1XERSALt1ibIWjSwIrc1sli1YWf4b3Ibzq
	 3QClh2ze+MmQwPWIoU78034aV/55HTasotqMGYD1Cc/t5syIFFnih5X0IZIfikZMkY
	 pXnh8svzYjwkXFzdLa8ZCORPIve9tK/zM2wF/qhOn1ZFMeVWiOe1epA5PZWsblb1gF
	 3peZq9GpEpWnmBnWkq3EIyQmttoDqC7xHZaj17T17iVsb2SGJX1MNfRapxUgOiiSM3
	 ELG0Y01La0/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF7E9B24D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193289358.12046.12279241814186278177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a278ad13ee8d9d346aec83e1c07e087001c05f7a75674d144214785a28032b11
Date: Tue, 24 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771932893
