Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0FE32C95D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763133594; cv=none; b=PBbVde2rTU1nKT0vEjD4T54IRJ9vt6IwyFdILjnBHYxOXyJnz4YbRgKV5VUIxOwLXR3OK4xOuntoj/7HXCag2WlXJSedEY32WcVWIqHFaLLAS2xbQynmQPq/6fBG8d+jYySc8YdPtd5dvjNezz7RLjMrB2GK03iVOWzPs+0ZWWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763133594; c=relaxed/simple;
	bh=qS0FuitMBld6ycIQGQSjn9hw4h5e4Uob39U8b90D85Q=;
	h=To:Subject:From:Message-Id:Date; b=Wp7RrfV5OTOUOOX/reqomslnauoJdmH/FPuhYeLCPf0ZVekz0a/zG/t49XKZdnJ2CWgZIwvGipL3sOFWrVVppe73MRRdcTeuRVVTd67xbC+r4ZQ7wMnbHjishiN6gKZlP6kwl9j+QZ4L1I89k+Pi/06O9GezbpBtC6A7DkwGPqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpniLBXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpniLBXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99353C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763133593;
	bh=qS0FuitMBld6ycIQGQSjn9hw4h5e4Uob39U8b90D85Q=;
	h=To:Subject:From:Date:From;
	b=RpniLBXIJB/h19e24aEOeJc2qtQVNZ2Jjs6AQwnAvJmd2qX6Jh17TwFOOYUMyVxR4
	 fE10EpVK1R6mnV5XBBhI8xoNDewIKZiAet+dhk2af1po4xKMGcE7gFiUoVugBnaCkW
	 BYyLAoRXA3ikkxrMogZAw1nZH1cSDqIwoUiuuPUNLASz1YENfO6nK2U5szo2xH6+33
	 YZSt4gdHRIwG9FPcrM+DajrYqzfcGL/XYtE7P2fm2NTnsEFOXSm8VM0SB9kOuKhTKQ
	 kl0TAXDfP5aZYFlZmd64DrtfmA3yHgInvJ33mh3pnGd7g/UG3J1ii7xgpnfnbUJqdv
	 pTmXjYCFajtZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBACE7B1F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313359357.17066.9581077961726214555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce72a1592533795f2f8372630c4d1ef7da712f61339261de38ce9be8053ee7d
Date: Fri, 14 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763133593
