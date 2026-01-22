Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B258531B108
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769103234; cv=none; b=pVEaOrKs5bslgBS/euUeLAXEI8syGBfyADUjoYcNGO2vjtKWEYcRP/8yTORbgeulcJj2vvHmpIMUwWOZjWokav7Pzsjg4ITYrYvcYeU1WADev7woFfHXckWM2SJUAYjYYNPG6MBRqLd5X30ZUh6XRcD9PgCSPFDe5LWHHf4oTMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769103234; c=relaxed/simple;
	bh=CdhUwUTvoA4MVaspOQiSkoR/SKW5PROqkOufRYlNBU4=;
	h=To:Subject:From:Message-Id:Date; b=gLf2JBf0WEPYNJjWn9OW21NOsG/woDvgDV87yz3ebQ0y6BFVzr4KUCCF6bfIfTUlKtz+R94OUWK/AoiyTYg0hCOUvv7lTYvVXI6y83C//12X2dgVuTSjr4Z6qPopFXvOUh5wqnmk2nn+YS1t+BGvZG1Q5GKs078OZ7kyUVQIngQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZwmY33L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZwmY33L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAF7C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769103233;
	bh=CdhUwUTvoA4MVaspOQiSkoR/SKW5PROqkOufRYlNBU4=;
	h=To:Subject:From:Date:From;
	b=SZwmY33LSwHCapcNBGX9OO3HkqfBHgGVeGHWPikmTBhhSLPCKt5/PnHyzSIe4c0Xo
	 Xg9bDdEVi1t3mDlZWfO3iPFrvWIQdZYIfzeTmjSAUYn7DqGD1pCOqo5O8RkSV5DRFd
	 XYVkC7grrAelBLsK80kvwDZ/EI6XEO3ej0DdcGNJkKSei2Pk3xa084ahXDHasFI40S
	 WDw7YrvbM4Azy4O0OOyzapUqxThZmDgDwcIfHmSwYuL71jSNCO7sxGQ8VSM2UKfz0p
	 B0wvmfi8sNoMytDmBcva1rxmKP5ndzpUaiBbu5wsMa+uJF1uIQpyYPPjeKp28rQ99X
	 tOuQRZgW6ZqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D37D46952
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910323358.1854.13844111049394452417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98166a6dbe732ff3e6ad2d2019c91b97fb56bb4da6c5f0944a04a2990c748528
Date: Thu, 22 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769103233
