Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246D71B4231
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894394; cv=none; b=qjNhZMIXFyRZlshVdiVI15GCuAUbwsCeFGO/tQfTbp8YDu15apt6U+STEMceU161vwZxFSvM2U0hf4ExydZb7rk8YS2uLRwtzdLX5QYDAoRnsvd0NwfnCrq0+KU2xA4v0grHvXaGJNbSJqBwHDwuastc+Q7snnfIvDPAwbCiBqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894394; c=relaxed/simple;
	bh=Z0GUvLrXENdbGambLFnFp1Vdlml9YnVJ0nZPEq15zIU=;
	h=To:Subject:From:Message-Id:Date; b=U2DonH7vTt9tkUI1iicN28xPVMJEaMfotZAT237FxSqh/4xoSvgTdbgiklApQsNysZIVUzeXXxvJBM4++19RiW0SPAyAJ2QGj3ZiB4ETQs5HAKIQxR88IZIjqFLRcg1Vvi07BMS0G/kEFlpYkZz+HDvi6bQtF/9edsi2lKB2bZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWkrtRnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWkrtRnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F4C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757894393;
	bh=Z0GUvLrXENdbGambLFnFp1Vdlml9YnVJ0nZPEq15zIU=;
	h=To:Subject:From:Date:From;
	b=uWkrtRnGApLKuAfBnT4/vEeKAqw9fhzIPZi6DA/AfJ9VSOAgD+/YQQOGI7VUnk+F4
	 Yth2NORvn9MUO56tfJMIpigArTdmANDEEuuXlrVPHJzN/kCd+kTEeFoSi2NV1SpSca
	 2MW/JRNmh//zSAKeCFI35jU+83R5HFAquAS82GrOsxl6NlVVJIzCmHRDzTCKjIw85T
	 szKhcQql74uAZyTzFQLwj+6f5vcSL1l0f26bS+YeUidPaxIxM2PvqtY2aON4l5pVwZ
	 8l1ZZeYNt/GYdSMzhnWDMHNAOPHxyUNG86k/wwmfxc3pTH5Ol7zXi7DG/VvOULw5H0
	 NHv9C7pPJFJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92450CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789439357.14801.15445168797733209729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54525574c080d40574bf0502c0b90902fd89f493005b94f1085f75118fec61f
Date: Sun, 14 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757894393
