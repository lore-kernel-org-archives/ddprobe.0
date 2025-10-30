Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B8327FB25
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761836994; cv=none; b=q1Xpl/mvHXY3A0fiJ2iHeDuFrroEenHGf1Y7oxJ6UijYWwuvtlR5qptN4H7+ufF5QQysJyrCuYXBskdqTKLF8955iX/950qKea6JqCdYPOWxNeUx9QH8BP/t0V5nOBeFwZAuj/MRPafpAdbomD5JEVwVcWrcqPMjx0ocwz94lcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761836994; c=relaxed/simple;
	bh=8IBNwgYnV2LJGwAXGYkS4RgpMdG3qQYZwdHJXyF4Nxo=;
	h=To:Subject:From:Message-Id:Date; b=tAA4tBIo6W9BArxENuiyia8lDejQtjmy2g/Wd9snyiveMDmH4/ju7JPdwULCJ07ChMOKIxj/DDdhQQkg1H//uY/cDy71/dxpfo/sKmOd+dOvUSaNWhjCOs5f22VVCQTFPvbv3i40x9DhVO4OoLGa2aZXEUtb4XucAlxwEtQsfKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUhk0YPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUhk0YPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761836993;
	bh=8IBNwgYnV2LJGwAXGYkS4RgpMdG3qQYZwdHJXyF4Nxo=;
	h=To:Subject:From:Date:From;
	b=MUhk0YPE1tcseCJH80shE19PrXRvlQsxNVTtIegJaP+jEiramyP8KrO3c/hEaSexW
	 l6DescTjrcip7gSrhUa6tuGMTQeuInZy2XPMp07LejbHs+ngpmX5mpWD1Or0vdhYJf
	 N5mRoC4YD4MIPku7OX8UCNMN+rJqY2fYVQXH2+SnMTvHVTQDpEjagdWqcEYV8lyNJ+
	 INr+iE7AfHGv9X2tGcmeHQZY+QBGKRxjJlxnDXzFR3d07ewVzLPnCewafqdBR/b6Lq
	 b6kF+sX64eu/SVNgZiZ9HRG3u771TwdvA05/ng3h+C9Klc8V+huqXNtV36lR7kMK/w
	 M+S0lEuS6wPCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166DCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183699358.23677.10173285328773027215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa1b6ac5e9144aaff748e3ca87101dc37faa9dba04ef5f5732606a9d119dc2f
Date: Thu, 30 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761836993
