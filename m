Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4535C946C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723976154; cv=none; b=YphkH1deb8/vWVStkw5YgfVm2nRaPhXqoCokrdPUESRQRdaLLF2VBmfCdm1Iuiw7MK/TxihzSvRlNAbkzwK4NWe7t41M/ve6PEXPyFc4WaR71lpIpsfsO8AedUBrN0df63YmtRsxEiFCd1PEiLqN0+rEukujavaAARd0PTBwLAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723976154; c=relaxed/simple;
	bh=aTfytoRgwkh4S4+dSy5KYWd4o88xSYWKDBseXllkuO4=;
	h=To:Subject:From:Message-Id:Date; b=KxBYECWcoUgHte/VHTgndYzVPtjbonkWkF3YHRati2k2MD13YMO9bEji3IYSxj6+l2CPc272tfbnCnkL7YQ5q2iPOA3rTA/vztKLfDAaJOcr/u3Trpy9NW5A0zfyIyipfbjdorklJtIOX59sHjcRT9RUk/s8N9PpU3aTV7Josn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj63h7ON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj63h7ON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DDBC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723976153;
	bh=aTfytoRgwkh4S4+dSy5KYWd4o88xSYWKDBseXllkuO4=;
	h=To:Subject:From:Date:From;
	b=lj63h7ONu4nululFGzwmSM4fhvK3CXckyBtSfHhbcLjVMpRGBDlxgMODSmm8bs90+
	 epzumb/co96SuS3oip6s+vv879l2MgxtVtb84ec5N12aascIR8KhfWayMSAnI+glTK
	 Ro0tlGMUwJApm3D6glHMhHg2GnajzDVZ+bpIkL1db67GdaxNwACP1D3eud6Np27Tty
	 sGrb/Vd2SXT9WYmMneSOvxVUy74WUMVI3kqqogNVOVcfhjRKsghtfWEci6xhQ2zmku
	 gIDt0lB4uOfp+1+lybNlB5waeP0ekJ3vm7ROxvHw5JL9wt+3R/BdQ7HndoQsQ3Jce8
	 qt8KsO//ZW+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EDCC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172397615364.14310.3492037797313899463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2883f85c72bc0ff218a332d2643b418fb1d2b4ade43f8fa5cfbea2c2a61b7f3b
Date: Sun, 18 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723976153
