Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF9E139587
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727455554; cv=none; b=tM8gutkMDd/pen1B8g7c1WdZA+cj8/G8oI0h105XerCEpNHis4o4lvywJa/te3t690YwyZWLoI1wc0fdrNCxapE8oQ15SHHMDAUoDT2UuBxFx+bfiuNyTENv8qBeVbTqKsE9MRbfdUw5E2RpmxwpAUaI3noMulD4s1fApCb+xKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727455554; c=relaxed/simple;
	bh=oIZdfL9AU7Tap0SrHnVE4E59RYYQp0F5Tjs1vz5/SCo=;
	h=To:Subject:From:Message-Id:Date; b=r/3XPT34BhKtVmOp01T7x8BqzT4LLR2sFFJWiTD5Qrx0BAcbKuRhI0O4LGmMUoKJdKS19F01NfLa9A8BjCEAeyt4mA7onFoBE/Xrx9Yvs6lHDoxc852fX7YnDQFYF8psBKE5MfPg+oN1JBgRctyevEDsdTSO4AbSJAqBDR08Y1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhE3IRaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhE3IRaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C6C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727455553;
	bh=oIZdfL9AU7Tap0SrHnVE4E59RYYQp0F5Tjs1vz5/SCo=;
	h=To:Subject:From:Date:From;
	b=AhE3IRaj/s7R6XaY0vjgl5GOn/nNyLbA8pIITKQkgvfv8ckNmAbZMdr9+/oxROKzW
	 oaDlm2SYWtNiR+BERxs9hEXVpmNoBMfYJ9EcHho1C29ey2Q7qegc0eR2La2lbDH2SC
	 lqDzxrGlE2phTVeyiHwktPr9/89hHPnLnIj1tgOpDa5fOw9UP0Rn/7Lu45K5G9kEZ7
	 Z0OFbqIS3oUp5SSaJYBSNVXKjI8ifutN5Rx4H9RxEYBBdlQNyI18RKAEmuCL7gCiQP
	 iPFRGDmUtwi/Ni8Rf0Vg5c/F6cSaOeIivcSALcIUoiIi2iHs58JlVJWOK5I8Ypl8pa
	 Xc4SJ2pQlXL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90902CDD1CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745555358.19513.10625702336830238250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698d42325f7b99a05a6103679580ea73749121d6873438c5a8c32036f0bf3cd6
Date: Fri, 27 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727455553
