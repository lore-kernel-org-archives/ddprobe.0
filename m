Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BE82C11E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776865654; cv=none; b=UVezS/dluf7VEMkhvyo4z17T1E1ZsJaRbDcPOqVUJyTvq6V5sy/G5LaXAjQN+53zIwhbhOgcMGu4Kdbnm3/5iR6o5GDV/J9iEM26U9RK3tu2tDMwczAA7L971DGWO24qCsrVzfWvwL2MV6LjlNrQqEnH69CEGurvl2TKw07mRDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776865654; c=relaxed/simple;
	bh=8h1zDqgAvT2WqFRxDxopnuzPudD/wNIc1wESpXMyg1w=;
	h=To:Subject:From:Message-Id:Date; b=Kqy0qzSzz0j9q017yvenln66J1Bez7jc0OnrDpmompLQ6nGELwx+pAnEbjAgN3C318cOtM9W2k5THRwnXSfB5lfxmfZQ9RF4qKSS/MjDaR9dilXv5GbFCJms/OOvY8yLr2Qyj+S6VknglRkxg2mYOA/Y4/n2TDr49Oa9/scn4Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhI6uRFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhI6uRFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B38C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776865653;
	bh=8h1zDqgAvT2WqFRxDxopnuzPudD/wNIc1wESpXMyg1w=;
	h=To:Subject:From:Date:From;
	b=nhI6uRFtkYZX+OKgsh2Q+4gkJ+t6eYC4AN9NN4LWn6kCoc/nXmCeon6GhFr4ZT/X5
	 BguInp0AhT/rCDyevT5jG15SXZ8Mm4G49n9c6OFnOWJ2KHe6gBpPxAntU//kchr5E6
	 63oVQKWvdfaJQwR+zhPOcsFjEs/ceiga4PKcpdeD/yOi2zYofUvOPXzbTWnty1zE/H
	 hzLGbR49Vq/LKm0sz2Xp/fZ/cUuaWW09PCi7KhGrGfhF0msK1xxLfVbB1iTF/bW7fu
	 28eKXF+WgJkSP+J2rLsiDzMaXUIUY0sy1kQhxpVEOcQTpM4SgzL5IZbaYvtaYFs5X2
	 vzeulcgFp2HGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4EFF9EDD7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686565368.25379.15401841495205553807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424c553a9eb12931cb61b195c302f2297dfc66c503941479625c8516f7469e2a
Date: Wed, 22 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776865653
