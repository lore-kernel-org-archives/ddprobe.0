Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E02571A5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760396394; cv=none; b=ocZ9WMwJ6QYhlQprTKAV72dlUru2FxdKaPC15t+wnzKkEl56iQ7dcIPwHGZzilvjIvn2O6LrNJ9577lo/i3MLGyudoQWJmCKfrvX/X8PAXp5QMmGW5uzd9LW75eb0y/d/YOYCeXCkQsKygHvpBRXnYA4atj/7cuuYxdvoCSo/ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760396394; c=relaxed/simple;
	bh=PY91iv7ttUmEOU447egxIbjt2AIyAhqCYsIsA0wIh4A=;
	h=To:Subject:From:Message-Id:Date; b=gmI+ZeCU2w4YkwaVy/6vJY7mMkL5fKNp5uL+Hv/kcZGBiHXAuoKddHq0sk+SZSDtP9/1Cnpk4ivRBFG+0XmnY3hmgatmoHW8irFEExvSFfQHqxX+beVPVTjQ7+UxMCYL7yyTLG1muFoVY3fJ3eTiuTMRt5tAwsoRMs9yHvk6SgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiyTKyPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiyTKyPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E64C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760396393;
	bh=PY91iv7ttUmEOU447egxIbjt2AIyAhqCYsIsA0wIh4A=;
	h=To:Subject:From:Date:From;
	b=ZiyTKyPO//APQNwfJhVPJGm06VdLQcj4oP7xwmNmxP6s1d18YK2ALr7G4wYKVpAc6
	 uksSYGuaiaxDGzS/ba/Uu6wg8yCdlu3mLwgK+gTtfjoK9SP02UjsJO21gDATjBUd/C
	 UiMK4mad2w17g/l+Glb0QuSs0n1WiVvu5OtKRrsmrUHf5dUpFhHuoATWaG2VndpS2t
	 cWyrNvratbCdFaB2pDWRcETSVK1/l44zrA3Dq+qpPcSC2mxA9qqjD2SrzdHQ+pFzWt
	 EEQIZasmsv41Cz4V36W1S/wx0rgHmX92E1mPvEDAsBPFz9LSGntITcPYM9s5fjM4hy
	 V4YBgUjxC+O/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE2CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039639357.5032.1947149160216923451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e733e7e9d2daceb9718078baffe6f506ddcc626e9038091680f59640460589a
Date: Mon, 13 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760396393
