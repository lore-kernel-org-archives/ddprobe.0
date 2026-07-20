Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883631AA87
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784546314; cv=none; b=To52pT57wFQsBe3MkBdP91w1zrChnWAh2ogunvdAVpzVptq+ej0xOo/Gbe6PBgONEXG5m1foT3BJLJ1X4DbdguccWY1PArK/JsuNuVF8eFOFPpPbKeTax1e3OufuRzLnEqY1oenrl0a7sAyhIMskEGBOp4A1XX77U2/pTp99bAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784546314; c=relaxed/simple;
	bh=aQEbiHkO6pUFpDPIeQekArkaqsrKQBM9FagrpRSIdpY=;
	h=To:Subject:From:Message-Id:Date; b=XkshUsh0V43JwYO8rwWkdx/AulLoNlOXuAZmebeSkI+tYQZmC0tC1/x3eaHc9W1wT6EPejdWLfIvAj3pPzksTUYrTtpsV7Xp2dJX/ZvzzCx+jKPW7O3dB65cBwjz6k3vVmEASjZRjE93eVi50QS0Q4alW1N5F8Jd11nKFsNaBLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVhkK8Zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVhkK8Zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE0AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784546313;
	bh=aQEbiHkO6pUFpDPIeQekArkaqsrKQBM9FagrpRSIdpY=;
	h=To:Subject:From:Date:From;
	b=uVhkK8Zy0VVZYLL3htdqKm1Mz6GEzWlHPzAzbHGaegDpiVLidMzmLu6EtJFVpM30F
	 vDJQdY03FDqTzUGPLOYiFR+7PLAa/roZtcMgPIbeaDZCzb05qGzBTBoSZqYh87MGOG
	 EPrrBUOM72aXHw+uyfxbWYAQ2NlbmCSmG3NmpH3t0lAo3PhgZlzrn1jloIwTEJp90F
	 WzCOhqh3984oN3A6PSZy29tOb1/Mt8hwwVhoUNKsxH6fhZb3pAIdEkqRBYaCIJGEt9
	 Rq+Y8G2HwmZAQuwx33em2cvdZHyMRXlAcZ3/6qswH0sXPX7O8qVlPE7YlUyvZMkafT
	 zErFfgqXKDG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9994C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454631368.11667.15357705495919328635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6785891ae6f81fc691bd6484a4721a7fb1a4fc28334621121f3e352fea78878d
Date: Mon, 20 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784546313
