Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523482EBBB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786661434; cv=none; b=LQveGGwatu7skwYAzrGZ/m3vkd/CPVCUPl+QMREGpE4Nie6uvdjafCBE+rAbqgjF+Q3dvETH3YmRUnlbg4wM6WFAEu34t3UVEyNbKV9saaEM2BMMVBocU5SJ+ie4MvM2bO/mjNKyVnii5R2S7u4xZude/tr1tLkg86RXJqjP3Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786661434; c=relaxed/simple;
	bh=yHKcTgJLvX50zJPaaexz8/Z6EHiQAQ3qeohf4fvyx4g=;
	h=To:Subject:From:Message-Id:Date; b=JXCug5wWixRUq+jrTpTDyajSgTxm0Y5qlVPNYsfndZi2vV2MD/FR0+AZyg9/cgGb3ortDZ0MQCCRTi5Yiar1FoFibvRato9/v6rWF91V6jXRcFW67rgiJxhKK/oLYU2BM875sDWBpyCMfwIIaFOZqrAyU4v8BJZ3pkDBiwjJti8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLxSifdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLxSifdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEACC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786661433;
	bh=yHKcTgJLvX50zJPaaexz8/Z6EHiQAQ3qeohf4fvyx4g=;
	h=To:Subject:From:Date:From;
	b=cLxSifdZeNgkBLwXCW/8xNW3nKJ12coE7P9y7TksiCe/qlEMu1opfs5WgkDbgghKL
	 3FKALVTYtcZu3NcPbuq0IPQG5OhMfXw7c/YK2kiSuRR7OpljMJV++r2lZ/HiaZ8oSy
	 +pwKSRFTookEtc4ygOb4jnBT9R3GLSqdUa9hs9iTMNX59BbYNbZntYyQdm2j9wo0nb
	 KrC2/yGi1DpFOe4gBil0olXhk+pB+WVbXu33IY+bgx3JHxd823x7EMlOr6kZacd3Bf
	 SkDv4fn/CgZl+35UMlRD5IOSyriUDMq8opyQe75JGfc1ZpMwgM+Tb3zWrdeXoBaw48
	 n/3/MHkC+duqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966CC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666143368.24682.6156933404877066702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da4d757bc7b3496a5aea94ec5d993c13dc5b8742e281ce0b4ec2a942e318b2a
Date: Thu, 13 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786661433
