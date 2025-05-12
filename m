Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4AD25178A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747071594; cv=none; b=t+dZMLJjrAWYF/0b51T0fO6MFFJtdyNeEFic7NH1dVEpQ3oFnfu3OUi2ffHqob7xrBo/eIR5Tq842Ol4LXAa02h18aGJibCp6kYMD3AUt+QKcMM7UArt6gq/fzVz1CdGYtFXYs9rFsrMu/bMZwMNjGBjhP/VRKnkFNlBI1wQVIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747071594; c=relaxed/simple;
	bh=DCnySreGlWieVlJZlksJJOVBHBpajKp14kYjAZzoVgs=;
	h=To:Subject:From:Message-Id:Date; b=ZPkRxbEJhENnVHCLK7UeKHha1frdCOzk3+EH/nNCH5vKFoV/ALdxTRla2YqBrOF5YD07qR5zI62IJ99MUAInvgeHebP7l0C581XXaTsdpwlgQaLhdJAQz5O9WsW0v0+NuQnFghQ+a8rUc5fIb8tkcogOK73nrbiRIJuHdQAY8D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoZtUjt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoZtUjt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A041FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747071593;
	bh=DCnySreGlWieVlJZlksJJOVBHBpajKp14kYjAZzoVgs=;
	h=To:Subject:From:Date:From;
	b=KoZtUjt9fGwS2bznhoTVky8FViK48B9VccElZMxvA7qslKc6r0k0ezZ95s421+njC
	 7aqRjUrfVZ822PH58Bwk5kToSuT8iHb75ZcTV/Hf/PKdVfiqL77vdSvzxzZNDCrHYn
	 nXXPg3vJdDeCaBKgbp5e3ut0IupXfSeHFo0lQ8qyRn6nWGpGW+3s3twg8WinUZtyx7
	 3ZwU4itKO8Frv/9MzsNUtaXXoRrAmokYuf9EeRxUTCU5AOiDdGWBoSWS7tBKhjFvTH
	 Wk2qxKwBqrTfzsvb0DJK68kIPERtRx6Z0+WyO2PQEPP+vVv1GJn9gbo1gDGYFMbapI
	 /eCg8NBAJ/iLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC12C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707159358.14887.6699854234187727639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efe061bb625e38680d11ea2c42cea91b01471244eeb2fa08cb5f36c894eb9d9
Date: Mon, 12 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747071593
