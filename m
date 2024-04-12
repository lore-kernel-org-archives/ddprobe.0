Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FE61B946
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712894963; cv=none; b=r3KCwI8rYfWkZzbNqFRmnax5nk348+KrgiWjxgmUc+0P0xOplNmsDf59YNF18+9d5IN5PHFZYMeYVJO/xEFDEuQpOJIcv0iBsp46galYjYlNRY5lBQknhLaaROagDlV5SvxMe91bOB2lhx8BWXkXHKCs+O3A0mFn8t01D4zGt1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712894963; c=relaxed/simple;
	bh=vFsZ3ld7Ap6H6+jbmJhd/56E2e2w47Ghm3gSLMAsG+0=;
	h=To:Subject:From:Message-Id:Date; b=DmLkmTUoTeXI/lxBDR0wzBABrBOaAicgecL7hfP4SG6wYMw0f9mFOYzKP2SPO6PE816MJmV8RZWY5ZDihJmi5oXCDn3HRGS9hjVzOMCzkkFZI0lzwWg7HXqltQtmn6DWiCrqbCazxJYrk5xakoq9KixQEnUz2yEkdCgWVqVSBVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To4LuzZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To4LuzZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7027C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712894962;
	bh=vFsZ3ld7Ap6H6+jbmJhd/56E2e2w47Ghm3gSLMAsG+0=;
	h=To:Subject:From:Date:From;
	b=To4LuzZodr4OGFI6YJxuG6tgs3RKhsvPQdDkaEXaRXYRpTkQFfb8OKU1RQ139QgaE
	 7sB/1lp5gHTV+Nr+QVMGlo/OVVduTKMy28ZPpGKlXmNMoXeI+T8fn8ixwvxSBqV6Dj
	 KLXvF17H1ITt8lEPPXjprchZjdGYq6CBlGhYICZnZ7jhllouMB6JAN8tA2p8lIHi+s
	 1tzt31aP5GOhutb3fMYgSYPqHfOrVAiCcBM6kGwvrX2Tlo/AdHYz+0Ot4h1Mzxlvq6
	 3dYsv3h8C0JA/O3EnxmXRyc5W0V/r0wYpzxli0+KpGbJfC53TmNGNTdkWSD8RcwmoV
	 F8xoyiz28WODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C129DC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171289496275.9843.2617925514995800341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c0a7e31da9bbd94a768243070d73f872af3d37db5a908fcb284a2e4bfe4769
Date: Fri, 12 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712894962
