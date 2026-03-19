Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9D4341065
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773911694; cv=none; b=TOArMPd2emsHwpyvVQicADI0gEiXZpZ3DrA5w6c/UPxaH7oR0IG6XU4OblYz43u59qus7JTS7UIqZGMCZbXmKf5Y+9EuZBhsIJrIByXqFiLnuk9uaxtzShuDMV5Qy/qb36PJW3zuzfTswVmyqT7CA1j7U6RVkRgPCiiwJxqSp38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773911694; c=relaxed/simple;
	bh=WGdtmXRzBhUJGlXkp2bwTJBtLZh+BpC/XfQR+w2EgS8=;
	h=To:Subject:From:Message-Id:Date; b=laJxzhxVZCne9nB35op8+4b615GlM8V6aOar6J0eq92+2cgAggYk0UMI/roL+uBZ+A5Ql2GxXQ28P5MXWZHRCmjgLrGJ655ZVbxAgl8uFR9MruxjavFxU1DKmujpGAT0WLefOLm+zRJURSrpvGbAO4f4aP9wPfESBRyRdMZWWhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsQ/xIyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsQ/xIyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF066C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773911693;
	bh=WGdtmXRzBhUJGlXkp2bwTJBtLZh+BpC/XfQR+w2EgS8=;
	h=To:Subject:From:Date:From;
	b=XsQ/xIyFPi/7MyWlZhseC/hnu/N9Uv6E4YiIHAd5BPjozn6xGxx2eDptAMcfEqgR7
	 IVCSG0x8aKnFfYgp1WMDSQY56AkTLCvcQ2aBHcuWmMD379m9AkRuHmUxyZ0M9rqYwv
	 HkOI+f0f2oKmo1FNxJ2whU1GWptrBE6ldE/V6KwLrX5e6wDhePWsC7Z98+iQ0usBA+
	 6EGSDgzgBKwP9SWXlU9D53fz3afbsliRiZUez4TG08TYaWu1AwsjNXlIQael2f2SvM
	 iyGzsJBlsRlFEMPLPaKEGAzDVvK0yU7eDxS+Xv1glcSzQe90D6666qMy+g/jXwF9pr
	 vRizEB1MNdpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C34F1075280
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391169362.4280.3190445204727496405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b12daf574ca62768f866d0514b036e9f6ee5f95bc07af3bfbd949e6c17ac297
Date: Thu, 19 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773911693
