Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B6237708
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742678994; cv=none; b=LiCHtllNSyKnf4owqVnq+ZunmSfTeIiKioyr+P/FK4+TcsadJitzEDMfrdsMdMctIUpOrep/STvP43Q2KIhbHstxDnGRndp3ghkfndDFdQWbXsBpwzI3E6CgUdawmxBTNgaOqXswknzdo7B+lYUmDOzekBxRDTaX96rnHU4tiAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742678994; c=relaxed/simple;
	bh=LMoeLXQayuFqAmzzmnPJcxd0b5XZ3r4Bppya7ff4L9c=;
	h=To:Subject:From:Message-Id:Date; b=mQ750WKu/CT8Z6ptFCpyHf1VwbBPCFy3fYWje3fKoESW4DMPC+8+D48k5iTmzAGYDQhI/rmff/OC2OwMzNHO3xvVsWKrsAA8U0I1nJcXyuoZQ8aWPcsPbhXs3LPYETlTvihD+A+C0l1Mk7WfoKg/W+/YTVRuKaxiTj4YU3F1geA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duDj06t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duDj06t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF484C4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742678993;
	bh=LMoeLXQayuFqAmzzmnPJcxd0b5XZ3r4Bppya7ff4L9c=;
	h=To:Subject:From:Date:From;
	b=duDj06t206iYnp+9yIpVt3vBaYrSm0kpIAXBOz/KyFQC6sHPjTrvOTNNkREP8Tg48
	 SSdqx0Gs14AJDDGI0cdB7aXlRHcMXKipm9tFJ+pZwIO5H7+kZTfbnvMpsqd8dsxPdy
	 L5CqrTEeiTASQrZur6deje2m0onKnaXghxRWHS8LWOKDE1zP6AB2941eyNC8cHuJcv
	 Tzhn0yxqOlMp/z0AwK9bLTZOnOh0mxkLY5ZYeV2j5ztHaZqAWeZ9TWC5TJpUzxSovG
	 Ml/HOWENdMCJbaPWENe8E7i/I1oKnHP+onnpyi45dLk8KtnC6s21eADVlRdr3VYCDK
	 oy7A074WgOoHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F1EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267899360.8230.7260983706930239574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b2705e9f2694b67f82e4f1b260129519a16a60f775426caa0ab7367e68df02
Date: Sat, 22 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742678993
