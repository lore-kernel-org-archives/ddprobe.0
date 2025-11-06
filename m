Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298842DF3E7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762426194; cv=none; b=dBJWZ2DOdRfL/J7zRyQz29fwVtVbIQ37S9bLHXV5g/Ft1CyTMvJf6I0o76rsrPHp/APvAzhVJO6g+c+LQenqSMXGSM1P+e3OccJfBZpLZxG5J9LzWaVlWEMCknBnsmF+FhtOgEqZ9HWGtq3DyH82KOfMGcEKJtCil4JeE0IpkWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762426194; c=relaxed/simple;
	bh=uLrhjGQ7bLUvc3LIEWGV2CT2k7Vf+u/vnzwkKy8YdoY=;
	h=To:Subject:From:Message-Id:Date; b=N1WvpwgB3v72/MuijK2WrU4oN7A+QNahCgLKpy7N2++giiXq5z/LQZbPAfljphmlo+YVWr3AJPQPWsOs9M3Ht9AU7+kpRagSJtdML9wrHCf3pDhVsuhbsWcdNsF27KwgL/zZU2TvCibbCnFZ3ootPqT83suPgwdmSV2kI7l5tOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGMOMPcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGMOMPcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AF9C113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762426193;
	bh=uLrhjGQ7bLUvc3LIEWGV2CT2k7Vf+u/vnzwkKy8YdoY=;
	h=To:Subject:From:Date:From;
	b=VGMOMPcRKD0yEcpE8UhNvXs2qtetX0FOi+PzNn2pjbcfHJfKsqu4HJHUkS2i2FN+D
	 7QuK+itKj85u36Oic2c6BSpfcPORFiHf4BEdwXraPo28GkpUij6cpgya9A4GfHuvwM
	 xn7QuQ6pEOvsCIj9/Ptn3Q8PQT7wkQBZf8xYvQt4N94UlEwc+NMmTWn14cBLcZ0Xc0
	 Wj6YheDLF2e3KGxvWQ5eu5WggRI7GGL7RevETJBWndLQAmHrv6ZQdTuq9Qjuh58WgP
	 JPOKBa/J1KDbmzRAcri/USPm1u7VI5ghzEpyZU69zly3zWXXJdvSZFcr9KqGQDJsSy
	 RUhPfyb81G48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995FECCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242619361.30149.13309126415453370121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae5ae8fc6c5028cd21c033a79412225de69d07cdb6eee7324fa42a9725df5c3
Date: Thu, 06 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762426193
