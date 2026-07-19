Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FAB1E7C2E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784459314; cv=none; b=tGIUDImKSoiErj382LnNGzDkDSqVZm8YrZNUnFmJWNYGIfj+P0s8KJLVC4Zkh8bpBd5ORwwVm9MB0W7vidjAin7zLe1KB+1Ccf2y1o9hUvLdj704gWeqfGEJZi1bObcWHjuT3rTevmPMe+ClMItxyPEyT5Dws9Lt1dEhwcEaS1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784459314; c=relaxed/simple;
	bh=SQhnyFoZWSKJ27TiNTUg/frFzx7Yd4DSlYZ3UTs5PQg=;
	h=To:Subject:From:Message-Id:Date; b=d0v3DB+TCCUgGwYEDJv74BSZaUOYn9Fgh6cQoJYDMNDG6T26z0M9lTzaynVfvI74UsSrUEWmMW04BGY1awK/9GVUqn6mIjwkEjfvOHp26dCnr7MM04/A6CD03QcDwcHlXn3dYQAXEdqvwneSJZVXm30YOhgA9QgyaBE+U1cEdug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJQ2jsGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJQ2jsGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0C1C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784459313;
	bh=SQhnyFoZWSKJ27TiNTUg/frFzx7Yd4DSlYZ3UTs5PQg=;
	h=To:Subject:From:Date:From;
	b=mJQ2jsGaoij4AZtf9o36Vq2Iv9Xk8zLBWG3BowHvSSTAS0uxq+iTmHEMZ6eL7J/uw
	 W48VB9TOy5jIGA4su+DjeBECE3lpuUEf4L847T3SGXCfDG3p1yl/il5vYguQLGf3qW
	 jpB7oE5tAnyJ44gzeR1CL9Ac8CSN9eIQtTI51rLADJt/rchyjXR/yQ4qvDif/vf6WH
	 tY3fp6m3aPrMjP9n5zR06khjLX+rH9G1twmZagb2V0pb7OiboJUhlKAX0oNT4zr2yJ
	 nvOCdFowmahm1W3MzAXO+MbuYxMKQmt8qN38qFp8Y0HLFHAgL4BtV/C70F/Ba4RYWD
	 QJXxiOQEsutPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A829BC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445931368.21358.2381083121309141243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e627222e1e6401193a04b1d96773e720de3dca3d3566bcf679754d9720c7d04
Date: Sun, 19 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784459313
