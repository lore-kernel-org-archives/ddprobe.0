Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC014F135
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736493354; cv=none; b=Odqa0bmTKgDM0Xul2s0mXJnCVt3hMgTi2gNBXV0E5EcHWCHn8XfR23oIdbO4u59IC+vbj5RXs8F2a4rGQ63Ykic3x7GZQcR53WmzWyG28+CgMt2XYjaLwaualj8vE39iE23R8oumMTgJp6Mu7VU9QiH2dMtpDMaHwcLie5ZkilE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736493354; c=relaxed/simple;
	bh=GPDxI7dbLpd9hOTN4Wy8UPw81Cr1QSkBd6rgKUcV1ys=;
	h=To:Subject:From:Message-Id:Date; b=aNzdqUEt0/l9sKbl/Urp8DnnxkYL56dBziTnd5ve9iB3L0BlrV3LwKZ2dtLEs2Sh3+9NZm2rPAnZMEgIhluH1r2CdgxUTFodDQGLsjR0Zr//M6ONizabd2HBCCo4kc3zrLieqg4wbjD0yMkvOCnaUO11OsFL0MOu3jLy7sPCA84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzkEtCyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzkEtCyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA4C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736493353;
	bh=GPDxI7dbLpd9hOTN4Wy8UPw81Cr1QSkBd6rgKUcV1ys=;
	h=To:Subject:From:Date:From;
	b=UzkEtCyHPzirRlMqivcS9cLI8dqoHXIyQFrIFsMXFGi7KJ3gbeUHAWc9mKjD+m+tr
	 UveaATfggsxIn2YPMf5m/mpFPNgBB6BcrZoAfmqonFXUCLzMS1MRayGQSaLwp7qstp
	 oZpIunm7jihc3CfXrSxhQKPVygzAMxHneZ2Vp0OsBCR4uax6nC/Ur3rVy/pFlC43e8
	 tJ6NMz7pEnH2y0ZUADeetjoGDiabvd20Iflj/4QS9sBboLvokfBoUiQSiHCYmD6qaL
	 R+7sM6ZNVKkFU8bMsphktd1X75WjQgsA/SYmZlMY8tLxqF2OTaTG4z5ySieg+HXfVs
	 LyJNGBMRNrBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91659E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649335358.15380.615992127140172678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66771a2aafc1886485f341d96143faa6758d4610062508174cec97dc7df1c0d
Date: Fri, 10 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736493353
