Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B57C2581
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748218794; cv=none; b=XVLUqQuvJnkYoBBXxUDPvdRGk5mzjqeq538Jt1X4KZyEV7DqhZl7YucdK6fhFiPHG0RAjrCH77T9B2fcaysndmuAlalAl5yp+8JaNadISbV16zWSZm4tHxAHmOltrYYyOeGZXW4Hzoilt/16+0edKqNoAwniYaPBncGq2yQmu08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748218794; c=relaxed/simple;
	bh=QDdhCXlAmybuJuK6QPxDRCmQCU2RCcHJ/lASwtrLoaE=;
	h=To:Subject:From:Message-Id:Date; b=f87HKe7y2GapluF5rzxL3ssOHsw0sMDtP0cxXagMGdwEDAa4HebK10XnX4xJcI5cPFDwGvdG6iqxF1w1ZsWH9DlUXXDnheFhKpQy2dXAsw6pyn86mq6zQ7xGeskahnFUz6Ssb9hhQtamHPpzBRHYszmLEFoWLvVwj7fkHQbhn8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4ayFJP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4ayFJP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A4BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748218793;
	bh=QDdhCXlAmybuJuK6QPxDRCmQCU2RCcHJ/lASwtrLoaE=;
	h=To:Subject:From:Date:From;
	b=V4ayFJP9I9Fce1rK2IY0YxDO/xqeiYUbOSjO2iRup7estO6A01kJGON7R/Tp0sbX6
	 jlPeO3LXkkQHAgA9Qe1Q810n+u1CW6t0lRwnsDDw7PDCrKMCUfD1+jzQcsoq0ij/L8
	 Q5JnIvlp9xwVwkjaMtTe4zt8+L4LhccQK+RmwmFJh9VFrUi/ssVjNDPjtgBrgJT5wn
	 TGTZIPINUeKhiYdOEGmsx8+iuPmyWW09rEJ7SVSAQLlPL/9htLNB8C9cg+z+KRfGR6
	 2cPZQ3DLKW61nu5gUTg5ZB5VRxicJ4BxKg7d+kXB/krXqnU2Bkt6D60p925HpwI4Wq
	 mU2FXvUwHcg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA2C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821879358.4428.15078695758690023523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80516fd0cc7a596d6d7653b6c10a68dfbbb4fdae57eea7a9095404d58b733f8a
Date: Mon, 26 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748218793
