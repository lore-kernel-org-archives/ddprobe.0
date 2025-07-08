Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C1218A6DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751948994; cv=none; b=a78UrKgF84+UscYHpNqXOYBvElO9lSa0hRDfSZAVkt/8SrSsNnxVSANnMxwMRU6AAk4xSmKsZ9T5guwZ5jxz0lmn5VrhaBVU7slUFmyT1oFW+2Xy7+4sMVe960lrReZ8UuOnvO0j1g0wee9peGlSsjneMll/tPSb65JQfUkZp+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751948994; c=relaxed/simple;
	bh=ieHtq+rTEzxoOX+BnJABCn12ef0m96id3L7QH1fKCpg=;
	h=To:Subject:From:Message-Id:Date; b=sXLw9CNCeF/NJg1uaq1Xs8179t0sHLDbOoPFyKTtswSgavuvkdiyTPOfw4pGXBjLCD9hl7n+D8Y2tIwRXALefMykNTeQpLwrGjG8C4ncyx+hU30G6qb9+CBTDeATl6Qa67epTJ+XPLgWD5hudmjrdZsQi/WObac+dDamNtPln6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an5mXuTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an5mXuTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751948993;
	bh=ieHtq+rTEzxoOX+BnJABCn12ef0m96id3L7QH1fKCpg=;
	h=To:Subject:From:Date:From;
	b=an5mXuTi/2ar1I31Cfqhcim2PLvIGj7CgibLL7DruQs938ePA9ckdy5rBqRGC9ZSe
	 xs9gSzCndxz9dYU/BPNDPYhIgc7VIIDTyGKmPRpItruT8clwXuBXfYu1vvSejEeCiK
	 ET3Cct5bxydrlEkLKYVM+Nr0sAB3FXxYt9xKUPf3GXydZcQWTa+wi8HgSEVYAy38Pe
	 H7CCVnck/4tyWryfMsnqwlFCpyAJ+IR05fVMksRlzOfr2+/iYRw0/4uYJ2xQKvP1LC
	 k0N09SIoKe800Db3Re5UX/XWj8dMUl8ETSFaLiy0mdDb432O4lXjpzHw0pgwcdYxIZ
	 d9QKyAch4EAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8CC83F0D
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194899358.12179.4019705729317158076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192b0d51e51ecaff03854b54c94ca76ef5daf93ae1398d7e716d4f2eb7d6115f
Date: Tue, 08 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751948993
