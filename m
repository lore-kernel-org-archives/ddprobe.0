Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EA9EACE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764347574; cv=none; b=ZzfLUpn+tBd/pXXulyvtH7eTm+F8nercbgt1517HsGuq0DWfyMiSJ/j3ZMfFdGT1JAuMulNNc2PmOE7b4w2o8zkxrFTjZB8h9UEeyo5b1MN+yNA9eXDHp1f1CJ0KBMAfYnJEqyTjcAdyYh0sRPfsuyH2GjCrFTlDsLUktWHEDJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764347574; c=relaxed/simple;
	bh=Q9EyKUHBTpJjFzJgwYJc3WCVtCUm6tFYnDBGcXlQIko=;
	h=To:Subject:From:Message-Id:Date; b=usM7OqG34w4iWBbOlcmpz8B8PPNTZZUKZ33u7QEK162QG32SoVFDshFMw0n/NOXLvXFJCV2MFciyP0gtW4pO7kwY+B3YlMO17eTBDtG15ugTzE4ydCG1DT/WtVtR6EXh0TsGtNGRNfcVJqjlZEZWtrITITqu5p83wVyeQgeS+Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLsDyjV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLsDyjV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7215C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764347573;
	bh=Q9EyKUHBTpJjFzJgwYJc3WCVtCUm6tFYnDBGcXlQIko=;
	h=To:Subject:From:Date:From;
	b=WLsDyjV3r3DunshURcTXWBFinHWZJ73VtweJCxps+iWatPrS45XNJ0VyNcIewTRCt
	 dP59gJM5hBG0YXk6s4oUVBHQ4dDOS8BOAofYxx2GzbJA6UtiCcVikEmw/RbpQZCAmw
	 RbMo2Zv/aOylCGxx6ZVtR+XuzzT0PCSi/QD1jwAzUFhp3ZBdEpVNjK1JJk+dsDARVn
	 ZxmijKuhMjqiktuV5RFR4EKV1KRfL0M3mSODvVTp9b7pyR12j1uQL+oI/Fw4e09YX+
	 yFnclR2yKY1Vi5KEUWW0xQLHSOrVpvSLK1I7Ip2Xx+dAe4iZqvLyAuHnjscA6GaWLK
	 +zYtY7lscU8sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360DCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434757358.2591.1371930719913421184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74524f204f394bc323d2fa1de8ff79691b81a16f74bbac0ebec85f5a1861e870
Date: Fri, 28 Nov 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764347573
