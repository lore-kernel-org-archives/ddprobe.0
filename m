Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6441A0728
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777795054; cv=none; b=p743LEWT9CJfQUXIRD5u6ZwzQAJHCGsO0wVo8nuie04Su0cldl70/xsmNGl3nnT69mKL6U+BlQy/pLLb1bUc93tjiaWJIi/UmYwc87O8pHG/WlKOdDZmrAGGreSttZlQiz1ykKbxYobtXlwXoPsMATXqE5aSf58fliCx6ZFDFUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777795054; c=relaxed/simple;
	bh=ATYSacynbe+DJj6P3lDAGcDQscA5oKrEYKJiuL+Jc+8=;
	h=To:Subject:From:Message-Id:Date; b=fdCqBHh2d4QfX+fj7fC2yb+gjDOEPHAczT+beUG7vx2x0odGBgG7qBrZu7doGS1ekktuaa7duK1nuLK3MSdvO71BH3j8ybdYFJwSb0d9Qc87PMrBs70ZcUNnP8g8qNsppljPT03UvCmF3Vj6ncLy5rCGt/as5yQ6wPUkYjp2liU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdRFva38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdRFva38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD68CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777795053;
	bh=ATYSacynbe+DJj6P3lDAGcDQscA5oKrEYKJiuL+Jc+8=;
	h=To:Subject:From:Date:From;
	b=pdRFva38GD/TJhD3GZtTGxKMWcd8Qn6UN9aekLgYXz/wADDDjXZYeTPDYqc5HBtJy
	 bRBuaXDXdj4b3Tp8LvVpqcnPTztX9OIs638caObS5UTO0u0Y3Ldm31ctoXUOF+E6kF
	 WjoXZHVRKHRRSRWfn+Y9++UtWa4JzqGZcD9jsLwef4W2TQf+adrCD4VmyelSxnUol6
	 xms2OBEPXC+VNg9mCxQdgSGZCFZ17jkhemyHHrquGMFIfqv9EErKzvMxQCu5Jkdtjp
	 grIsGMmaBfbW43LCS4BuBzTjHgtOwJhU/qTV+erP9zhARFj35cgEu+Nkyq3EXqyew1
	 XdxvAvG00rlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC824FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779505368.4402.7767096904435279269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a490f9b63c3c38da21c086dd9bcaeb43d950cced29dd5df30e8a3d5a93b86601
Date: Sun, 03 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777795053
