Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D357F1EFFB8
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743577193; cv=none; b=VQPCToZjX9P6sMX8+37bY3zE19ZMpToUC4RACNB4SjTXczeeJKew2taz+eKZ8Optq/cxfjUhmnU9R8gex/oa6PNBKnl6oPPePPVmOu+lqTh+J2mtlA04Z0435zmAgtDI3y/eFtY/nIF1qGt9euB6/W14IfTVTb+1X9hNMvnpgg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743577193; c=relaxed/simple;
	bh=kp/EnWdYcENsusvy0x226X71r91vOu0A28Hv7uGDLng=;
	h=To:Subject:From:Message-Id:Date; b=BJ17DzDuVtoEETxJ4LWJRCY8ljzc06VbMtrdHatmtrsmRGSPHiXD01hULXxcaood2CAhzOsmSnzydI3n7y/jPzqfzPKq8+OUUg8g6/z2Fo3z9jg62rbVoDru6lj5AUpjvst5ag6kxJqIkg4QmcNLPhXPovHdgz2HafEUMtkThPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBTK2mft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBTK2mft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893CC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743577193;
	bh=kp/EnWdYcENsusvy0x226X71r91vOu0A28Hv7uGDLng=;
	h=To:Subject:From:Date:From;
	b=aBTK2mftVdiff7aDPzYv0s8ZKV+XQEdrWLl1Qthz9DQo5D8IGjIzXV3WVT3yWq8cx
	 sBnn+saunU3n/XWNtlFsMRb1D+UAF+pFec4q56CdV/3ZYD9+8e4/nUUJVybpAYMWYy
	 vrgjWHVxPpj+SFNnGkHWNPDMWihHNKj/un0k//gOrPdmAdAXczx5gubx0P63fwaV4j
	 Eu2qinbJr2QZXljz1791yHnxOFbGq4vaCCTZ4anUr7Iya3dxjo0XlQTlFnuBe0Q04d
	 eRf4A2f5+L98f5upYWgpvtLZZxv+B3CLo7zSrV/QUFZfH97D8gvtQsphK/YTjJDU+c
	 oDf+mm89TD11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA2C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357719360.31916.7710360350594020191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a94115ae628dc4ef0f6adc05d4ab7488af74e735a69f7038d502d373a3f2acc
Date: Wed, 02 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743577193
