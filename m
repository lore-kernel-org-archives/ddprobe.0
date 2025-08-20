Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339D3220687
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755694194; cv=none; b=Yaq2ht/ywcsm1euwjWhq8tPOUdWNoj5xNaXSbL5g+cGSpzDCHdT5FVGbJh31vBreXhaPqWvG+rG1ePAonhL/gCRfCgnoTuXMiGJQO2LiguJXcvsHQVkOJsyVuN2M6kVNOH6w7/8GCVPgYc1dwqjliYOkYpEO9rGCO5bbYTUA+b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755694194; c=relaxed/simple;
	bh=Zm4gOQqCOgLhMo+uthFXtp8UGkYUsVGpXK5IImN7nQ8=;
	h=To:Subject:From:Message-Id:Date; b=Bmy2Eecx76z5v2LvXyYLOQe2TiVG357g9TvH47XEw0SCZInfDK09l6yoid0gRpWxRFeUEZuVZ00jsBXXtPcIE1Tyr0Gym4Q3MWJF9KT04T85XccMOx2FRo02Lc8/p8fY97rWoAHlzPB+ECfytg9Ku/BdgyZPxws0RusoJbfyiSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMCqqp8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMCqqp8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3203C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755694193;
	bh=Zm4gOQqCOgLhMo+uthFXtp8UGkYUsVGpXK5IImN7nQ8=;
	h=To:Subject:From:Date:From;
	b=QMCqqp8WCJnBQtisNiINKAOXTc03s/vQ+nSHtR4zeRJZZdictTtNAB9afTQURtwHh
	 C983/jQVvQjQKpC09Du4/p41E/T9AiftJvSdkEgBw5A6F5uWlguSwCnhSNm6yuhynz
	 J4RZZcKW90sxBpHzhmiOls3kwdabMulKdSego936rKQdWoRnn5cUGnPCo3TA71ERzU
	 JXlA9LAHDPoVh2p8i/U2qEu7pNtlQxUx9Q2mTLd90vGwyk1cv07pnIcURX7D5rieQd
	 qzWZ93tf69ylL3maQr5BpQDMN0gRThNr1oFA+6GuFgOokf5BdhSfkYztQtEE7yTTaX
	 ucVDF6ktmQHUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D2CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569419357.5584.6058707762424886100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04efcb550e47d1d07d431fcbda9bb442719221b27eda41040a3c5f635ca24bcc
Date: Wed, 20 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755694193
